package com.coloros.translate.screen.translate.business;

import android.graphics.Rect;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f5548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f5549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f5550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private w8.a f5551e;

    public m(int i10, l translateType, Rect rect, Object obj, w8.a aVar) {
        r.e(translateType, "translateType");
        r.e(rect, "rect");
        this.f5547a = i10;
        this.f5548b = translateType;
        this.f5549c = rect;
        this.f5550d = obj;
        this.f5551e = aVar;
    }

    public final w8.a a() {
        return this.f5551e;
    }

    public final Object b() {
        return this.f5550d;
    }

    public final Rect c() {
        return this.f5549c;
    }

    public final int d() {
        return this.f5547a;
    }

    public final boolean e() {
        return this.f5548b == l.FULL;
    }

    public String toString() {
        return "ViewRequest [requestIndex " + this.f5547a + ", translateType " + this.f5548b + ", rect " + this.f5549c + "]";
    }
}
