package org.cloud.ssm.service.impl;

import java.util.List;

import org.cloud.ssm.common.base.BaseServiceImpl;
import org.cloud.ssm.domain.Emp;
import org.cloud.ssm.mapper.EmpMapper;
import org.cloud.ssm.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

@Service
public class EmpServiceImpl extends BaseServiceImpl<EmpMapper, Emp> implements IEmpService {
    
    @Autowired
    private EmpMapper empMapper;

    @Override
    public List<Emp> getAllByOrder(String column, String orderDir, int startIndex, int pageSize) {
        int pageNum = startIndex / pageSize + 1;
        PageHelper.startPage(pageNum, pageSize);
        return empMapper.selectAllOrderBy(column, orderDir);
    }

}
