package org.cloud.ssm.mapper;

import org.cloud.ssm.common.base.BaseMapper;
import org.cloud.ssm.domain.Permission;

public interface PermissionMapper extends BaseMapper<Permission> {
    void deletePermissionsById(Long permissionid);
}
