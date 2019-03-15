package com.msp.givn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "role_function")
public class RoleFunction {

    @Id
    @Column(name = "role_id")
    private int roleId;

    @Column(name = "function_id")
    private String functionId;

    @Column(name = "can_view")
    private boolean canView;

    @Column(name = "can_create")
    private boolean canCreate;

    @Column(name = "can_update")
    private boolean canUpdate;

    @Column(name = "can_delete")
    private boolean canDelete;

    @Override
    public String toString() {
        return "RoleFunction{" +
                "roleId=" + roleId +
                ", functionId='" + functionId + '\'' +
                ", canView=" + canView +
                ", canCreate=" + canCreate +
                ", canUpdate=" + canUpdate +
                ", canDelete=" + canDelete +
                '}';
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getFunctionId() {
        return functionId;
    }

    public void setFunctionId(String functionId) {
        this.functionId = functionId;
    }

    public boolean isCanView() {
        return canView;
    }

    public void setCanView(boolean canView) {
        this.canView = canView;
    }

    public boolean isCanCreate() {
        return canCreate;
    }

    public void setCanCreate(boolean canCreate) {
        this.canCreate = canCreate;
    }

    public boolean isCanUpdate() {
        return canUpdate;
    }

    public void setCanUpdate(boolean canUpdate) {
        this.canUpdate = canUpdate;
    }

    public boolean isCanDelete() {
        return canDelete;
    }

    public void setCanDelete(boolean canDelete) {
        this.canDelete = canDelete;
    }
}
