package com.google.android.gms.common.api;

/* JADX INFO: loaded from: classes.dex */
public class b extends Exception {

    @Deprecated
    protected final Status mStatus;

    public b(Status status) {
        super(status.F0() + ": " + (status.G0() != null ? status.G0() : ""));
        this.mStatus = status;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public int getStatusCode() {
        return this.mStatus.F0();
    }

    @Deprecated
    public String getStatusMessage() {
        return this.mStatus.G0();
    }
}
