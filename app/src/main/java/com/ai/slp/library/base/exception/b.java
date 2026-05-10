package com.ai.slp.library.base.exception;

import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f4479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Throwable f4480b;

    public b(d type, Throwable throwable) {
        r.e(type, "type");
        r.e(throwable, "throwable");
        this.f4479a = type;
        this.f4480b = throwable;
    }

    public final String a() {
        return this.f4479a.getCode() + ':' + this.f4479a.getName() + ":[" + this.f4480b.getMessage() + AbstractJsonLexerKt.END_LIST;
    }
}
