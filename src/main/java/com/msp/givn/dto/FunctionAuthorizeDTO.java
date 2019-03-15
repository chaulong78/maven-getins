package com.msp.givn.dto;

public class FunctionAuthorizeDTO {

    private String functionId;

    private String functionName;

    private boolean canView;

    private boolean canCreate;

    private boolean canUpdate;

    private boolean canDelete;

    private boolean canChange;

    private boolean canRegister;

    private boolean canCancel;

    public String getFunctionId() {
        return functionId;
    }

    public void setFunctionId(String functionId) {
        this.functionId = functionId;
    }

    public String getFunctionName() {
        return functionName;
    }

    public void setFunctionName(String functionName) {
        this.functionName = functionName;
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

    public boolean isCanChange() {
        return canChange;
    }

    public void setCanChange(boolean canChange) {
        this.canChange = canChange;
    }

    public boolean isCanRegister() {
        return canRegister;
    }

    public void setCanRegister(boolean canRegister) {
        this.canRegister = canRegister;
    }

    public boolean isCanCancel() {
        return canCancel;
    }

    public void setCanCancel(boolean canCancel) {
        this.canCancel = canCancel;
    }

    @Override
    public String toString() {
        return "FunctionAuthorizeDTO{" +
                "functionId='" + functionId + '\'' +
                ", functionName='" + functionName + '\'' +
                ", canView=" + canView +
                ", canCreate=" + canCreate +
                ", canUpdate=" + canUpdate +
                ", canDelete=" + canDelete +
                ", canChange=" + canChange +
                ", canRegister=" + canRegister +
                ", canCancel=" + canCancel +
                '}';
    }
}
