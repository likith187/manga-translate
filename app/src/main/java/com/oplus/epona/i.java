package com.oplus.epona;

/* JADX INFO: loaded from: classes2.dex */
public enum i {
    SUCCESS(1),
    FAILED(-1),
    PERMISSION_DENY(-2);

    private int code;

    i(int i10) {
        this.code = i10;
    }

    public int getCode() {
        return this.code;
    }
}
