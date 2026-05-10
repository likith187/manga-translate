package com.ai.slp.library.base.exception;

import com.slp.library.common.log.Logs;

/* JADX INFO: loaded from: classes.dex */
public class f extends RuntimeException {
    final b info;

    public f(d dVar, String str) {
        this(dVar, str, null);
    }

    public b getErrorInfo() {
        return this.info;
    }

    public f(d dVar, String str, Throwable th) {
        super(str, th);
        this.info = new b(dVar, this);
        Logs.WARNS.logSplit(getClass().getName(), null, 1, 0, "NewException::" + this, new Object[0]);
    }

    public f(d dVar, Throwable th) {
        this(dVar, th.getMessage(), th);
    }
}
