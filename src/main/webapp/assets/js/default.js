(function (factory) {
    if (typeof exports == 'object') {
        // CommonJS
        factory(require('jquery'), require('spin.js'))
    }
    else if (typeof define == 'function' && define.amd) {
        // AMD, register as anonymous module
        define(['jquery', 'spin'], factory)
    }
    else {
        // Browser globals
        if (!window.Spinner) throw new Error('Spin.js not present')
        factory(window.jQuery, window.Spinner)
    }

}(function ($, Spinner) {

    $.fn.spin = function (opts, color, modal) {

        return this.each(function () {
            var $this = $(this),
                data = $this.data();

            if (data.spinner) {
                data.spinner.stop();
                delete data.spinner;
            }
            if (opts !== false) {
                opts = $.extend(
                    {color: color || $this.css('color')},
                    $.fn.spin.presets[opts] || opts
                )

                data.spinner = new Spinner(opts).spin(this)
            }
        })
    };

    $.fn.spin.presets = {
        tiny: {lines: 8, length: 2, width: 2, radius: 3},
        small: {lines: 8, length: 4, width: 3, radius: 5},
        large: {lines: 10, length: 8, width: 4, radius: 8}
    };

    $.fn.spinModal = function (opts, color) {

        return this.each(function () {
            var $this = $(this),
                data = $this.data();

            if (data.spinner) {
                data.spinner.stop();
                data.overlay.remove();
                delete data.spinner;
                delete data.overlay;
            }
            if (opts !== false) {
                opts = $.extend(
                    {color: color || $this.css('color')},
                    $.fn.spin.presets[opts] || opts
                );
                var overlay = $("<div />", {"class": "overlay"})
                $this.append(overlay);
                data.spinner = new Spinner(opts).spin(this);
                data.overlay = overlay;
            }
        });
    }

}));

(function ($) {
    $.extend({
        loadAllObject: function (url, handleData) {
            $.ajax({
                type: "GET",
                url: url,
                dataType: "json",
                data: data,
                timeout: 1000,
                beforeSend: function () {
                    //$('.loading').showLoading();
                },
                success: handleData,
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(errorThrown);
                }
            });
            return false;
        },
        
        table_ajax: function (wrapper, url, objectManage) {
            return function (data, callback, settings) {//ajax配置为function,手动调用异步查询
                //手动控制遮罩
                wrapper.spinModal();
                //封装请求参数
                var param = objectManage.getQueryCondition(data);
                $.ajax({
                    type: "GET",
                    url: url,
                    cache: false,	//禁用缓存
                    data: param,	//传入已封装的参数
                    dataType: "json",
                    success: function (result) {
                        //setTimeout仅为测试遮罩效果
                        setTimeout(function () {
                            //异常判断与处理
                            if (result.errorCode) {
                                //$.dialog.alert("查询失败。错误码：" + result.errorCode);
                                return;
                            }
                            //封装返回数据，这里仅演示了修改属性名
                            var returnData = {};
                            returnData.draw = data.draw;//这里直接自行返回了draw计数器,应该由后台返回
                            returnData.recordsTotal = result.total;
                            returnData.recordsFiltered = result.total;//后台不实现过滤功能，每次查询均视作全部结果
                            returnData.data = result.pageData;
                            //关闭遮罩
                            wrapper.spinModal(false);
                            //调用DataTables提供的callback方法，代表数据已封装完成并传回DataTables进行渲染
                            //此时的数据需确保正确无误，异常判断应在执行此回调前自行处理完毕
                            callback(returnData);
                        }, 200);
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        //$.dialog.alert("查询失败");
                        wrapper.spinModal(false);
                    }
                });
            }
        },
        drawCallback: function (wrapper, table) {
            return function (settings) {
                //渲染完毕后的回调
                //清空全选状态
                $(":checkbox[name='cb-check-all']", wrapper).prop('checked', false);
                //默认选中第一行
                $("tbody tr", table).eq(0).click();
            };
        }
    });
})(jQuery);

/*常量*/
var CONSTANT = {
    DATA_TABLES: {
        DEFAULT_OPTION: { //DataTables初始化选项
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "每页 _MENU_ 项",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "当前显示第 _START_ 至 _END_ 项，共 _TOTAL_ 项。",
                "sInfoEmpty": "当前显示第 0 至 0 项，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页",
                    "sJump": "跳转"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },
            autoWidth: false,	//禁用自动调整列宽
            stripeClasses: ["odd", "even"],//为奇偶行加上样式，兼容不支持CSS伪类的场合
            order: [],	//取消默认排序查询,否则复选框一列会出现小箭头
            //processing: true,	//隐藏加载提示,自行处理
            serverSide: true,	//启用服务器端分页
            pageLength: 10,
            pagingType: "full_numbers",
            stateSave: true,
            lengthChange:   false,
            searching: false	//用原生搜索
        },
        COLUMN: {
            CHECKBOX: {	//复选框单元格
                className: "td-checkbox",
                orderable: false,
                width: "30px",
                data: null,
                render: function (data, type, row, meta) {
                    return '<input type="checkbox" class="iCheck">';
                }
            }
        },
        RENDER: {	//常用render可以抽取出来，如日期时间、头像等
            ELLIPSIS: function (data, type, row, meta) {
                data = data || "";
                return '<span title="' + data + '">' + data + '</span>';
            }
        }
    }
};

function initEmp() {
    if (typeof ($.fn.DataTable) === 'undefined') {
        return;
    }

    var empManager = {
        currentItem: null,
        fuzzySearch: true,
        getQueryCondition: function (data) {
            var param = {};
            //组装排序参数
            if (data.order && data.order.length && data.order[0]) {
                switch (data.order[0].column) {
                    case 2:
                        param.orderColumn = "userid";
                        break;
                    case 3:
                        param.orderColumn = "username";
                        break;
                    default:
                        param.orderColumn = "department";
                        break;
                }
                param.orderDir = data.order[0].dir;
            }
            //组装分页参数
            param.startIndex = data.start;
            param.pageSize = data.length;

            param.draw = data.draw;

            return param;
        },
        deleteItem: function (selectedItems) {
            var message;
            if (selectedItems && selectedItems.length) {
                if (selectedItems.length === 1) {
                    message = "确定要删除 '" + selectedItems[0].title + "' 吗?";
                    $.dialog.confirmDanger(message, function () {
                        $.deleteObject("/backend/article", selectedItems[0].id, function (data) {
                            $.toastSuccess("删除" + data.result + "项纪录成功!!!");
                            _table.draw();
                        });
                    });
                }
            } else {
                $.dialog.tips('请先选中要操作的行');
            }
        }
    };

    var $wrapper = $("#emp-container"),
        $table = $("#emp-table");

    var _table = $table.DataTable($.extend(true, {}, CONSTANT.DATA_TABLES.DEFAULT_OPTION, {
        ajax: $.table_ajax($wrapper, 'emp', empManager),
        columns: [
            CONSTANT.DATA_TABLES.COLUMN.CHECKBOX,
            {
                data: "id",
                visible: false
            },
            {
                className: "ellipsis",	//文字过长时用省略号显示，CSS实现
                data: "userid",
                width: "100px",
                render: CONSTANT.DATA_TABLES.RENDER.ELLIPSIS //会显示省略号的列，需要用title属性实现划过时显示全部文本的效果
            },
            {
                className: "ellipsis",
                data: "username",
                render: CONSTANT.DATA_TABLES.RENDER.ELLIPSIS,
                width: "50px"
            },
            {
                className: "ellipsis",
                data: "partment",
                render: CONSTANT.DATA_TABLES.RENDER.ELLIPSIS,
                width: "80px"
            },
            {
                className: "ellipsis",
                data: "tel",
                render: CONSTANT.DATA_TABLES.RENDER.ELLIPSIS,
                width: "80px"
            },
            {
                className: "ellipsis",
                data: "email",
                render: CONSTANT.DATA_TABLES.RENDER.ELLIPSIS,
                width: "80px"
            },
            {
                className: "td-operation",
                data: null,
                defaultContent: "",
                orderable: false,
                width: "120px"
            }
        ],
        "createdRow": function (row, data, index) {
            //行渲染回调,在这里可以对该行dom元素进行任何操作
            //给当前行加样式
            if (data.role) {
                $(row).addClass("info");
            }
            //给当前行某列加样式
            $('td', row).eq(4).addClass(data.articleStatus ? "text-success" : "text-danger");
            //不使用render，改用jquery文档操作呈现单元格
            var $btnPrev = $('<span><button type="button" class="btn btn-xs btn-info btn-preview">预览</button></span>');
            var $btnEdit = $('<span><button type="button" class="btn btn-xs btn-primary btn-edit">修改</button></span>');
            var $btnDel = $('<span><button type="button" class="btn btn-xs btn-danger btn-del">删除</button></span>');
            $('td', row).eq(6).append($btnPrev).append($btnEdit).append($btnDel);
        },
        "drawCallback": $.drawCallback($wrapper, $table)
    }));

    $table.on("change", ":checkbox", function () {
        if ($(this).is("[name='cb-check-all']")) {
            //全选
            $(":checkbox", $table).prop("checked", $(this).prop("checked"));
        } else {
            //一般复选
            var checkbox = $("tbody :checkbox", $table);
            $(":checkbox[name='cb-check-all']", $table).prop('checked', checkbox.length === checkbox.filter(':checked').length);
        }
    }).on("click", ".td-checkbox", function (event) {
        //点击单元格即点击复选框
        !$(event.target).is(":checkbox") && $(":checkbox", this).trigger("click");
    }).on("click", ".btn-preview", function () {
        //点击预览按钮
        var item = _table.row($(this).closest('tr')).data();
        window.location.href = "/web/article/" + item.wid + ".html";
    }).on("click", ".btn-edit", function () {
        //点击编辑按钮
        var item = _table.row($(this).closest('tr')).data();
        window.location.href = "/backend/writeArticle?id=" + item.id;
    }).on("click", ".btn-del", function () {
        //点击删除按钮
        var item = _table.row($(this).closest('tr')).data();
        articleManage.deleteItem([item]);
    });

    $('#page').val(_table.page.len());

    $('#page').change(function() {
        var pageLength = $('#page').val();
        _table.page.len(pageLength).draw();
    });
}

function logout() {
	if (typeof (bootbox) === 'undefined') {
        return;
    }
	bootbox.confirm({
		size: "small",
		title: "提示",
	    message: "确定要退出?",
	    buttons: {
	        confirm: {
	            label: '确定',
	            className: 'btn-success'
	        },
	        cancel: {
	            label: '取消',
	            className: 'btn-danger'
	        }
	    },
	    callback: function (result) {
	    	if (result) {
				//progressLoad();
				$.post('logout', function(result) {
					if (result.success) {
						window.location.href = 'login';
					}
				}, 'json');
			}
	    }
	});
}

$(document).ready(function () {
    initEmp();
});