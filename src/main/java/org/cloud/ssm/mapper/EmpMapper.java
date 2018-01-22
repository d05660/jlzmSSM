package org.cloud.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.cloud.ssm.common.base.BaseMapper;
import org.cloud.ssm.domain.Emp;

public interface EmpMapper extends BaseMapper<Emp> {
    List<Emp> selectAllOrderBy(@Param("column") String column, @Param("orderDir") String orderDir);
}