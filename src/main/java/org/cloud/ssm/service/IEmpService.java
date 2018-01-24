package org.cloud.ssm.service;

import java.util.List;

import org.cloud.ssm.common.base.IBaseService;
import org.cloud.ssm.domain.Emp;

public interface IEmpService extends IBaseService<Emp> {
    
    List<Emp> getAllByOrder(String column, String orderDir, int pageNum, int pageSize);

    Long saveBatch(List<Emp> list);

    Long updateBatch(List<Emp> list);
}
