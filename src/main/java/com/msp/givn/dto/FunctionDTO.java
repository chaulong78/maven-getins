package com.msp.givn.dto;

public class FunctionDTO {

    private String id;

    private String name;

    private String url;

    private String icon;

    private String parentId;

    private boolean canCreate;

    private boolean canView;

    private boolean canUpdate;

    private boolean canDelete;

    private boolean canChange;

    private boolean canRegister;

    private boolean canCancel;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public boolean isCanCreate() {
        return canCreate;
    }

    public void setCanCreate(boolean canCreate) {
        this.canCreate = canCreate;
    }

    public boolean isCanView() {
        return canView;
    }

    public void setCanView(boolean canView) {
        this.canView = canView;
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
        return "FunctionDTO{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", icon='" + icon + '\'' +
                ", parentId='" + parentId + '\'' +
                ", canCreate=" + canCreate +
                ", canView=" + canView +
                ", canUpdate=" + canUpdate +
                ", canDelete=" + canDelete +
                ", canChange=" + canChange +
                ", canRegister=" + canRegister +
                ", canCancel=" + canCancel +
                '}';
    }


}
