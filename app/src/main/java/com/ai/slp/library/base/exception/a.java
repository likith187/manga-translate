package com.ai.slp.library.base.exception;

/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f4476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f4477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f4478c;

    static {
        c cVar = new c(1, "ERROR_SDK");
        f4476a = cVar;
        f4477b = new c(cVar, "01", "ERROR_AUTH");
        f4478c = new c(cVar, "02", "ERROR_NETWORK");
    }
}
