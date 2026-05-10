package kotlinx.coroutines.internal;

import kotlinx.coroutines.y1;

/* JADX INFO: loaded from: classes2.dex */
final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final kotlin.coroutines.g f13290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f13291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y1[] f13292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13293d;

    public o0(kotlin.coroutines.g gVar, int i10) {
        this.f13290a = gVar;
        this.f13291b = new Object[i10];
        this.f13292c = new y1[i10];
    }

    public final void a(y1 y1Var, Object obj) {
        Object[] objArr = this.f13291b;
        int i10 = this.f13293d;
        objArr[i10] = obj;
        y1[] y1VarArr = this.f13292c;
        this.f13293d = i10 + 1;
        kotlin.jvm.internal.r.c(y1Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        y1VarArr[i10] = y1Var;
    }

    public final void b(kotlin.coroutines.g gVar) {
        int length = this.f13292c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            y1 y1Var = this.f13292c[length];
            kotlin.jvm.internal.r.b(y1Var);
            y1Var.D(gVar, this.f13291b[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }
}
