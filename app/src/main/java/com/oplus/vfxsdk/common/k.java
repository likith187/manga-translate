package com.oplus.vfxsdk.common;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f11277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u1.b f11278b = new u1.b();

    public k(HashMap map) {
        this.f11277a = map;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                this.f11278b.c((String) entry.getKey(), ((String[]) entry.getValue())[0]);
            }
        }
    }

    public final BigDecimal a(String expr, float f10, float f11) {
        kotlin.jvm.internal.r.e(expr, "expr");
        if (kotlin.text.r.K(expr, "origin", false, 2, null)) {
            this.f11278b.b("origin", f11);
        }
        return this.f11278b.d(expr);
    }

    public final void b(int i10) {
        HashMap map = this.f11277a;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                this.f11278b.c((String) entry.getKey(), ((String[]) entry.getValue())[i10]);
            }
        }
    }
}
