'use strict';

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

