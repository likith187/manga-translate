package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c[] f13236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f13237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f13238c;

    protected final c a() {
        c cVarB;
        synchronized (this) {
            try {
                c[] cVarArrC = this.f13236a;
                if (cVarArrC == null) {
                    cVarArrC = c(2);
                    this.f13236a = cVarArrC;
                } else if (this.f13237b >= cVarArrC.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(cVarArrC, cVarArrC.length * 2);
                    r.d(objArrCopyOf, "copyOf(...)");
                    this.f13236a = (c[]) objArrCopyOf;
                    cVarArrC = (c[]) objArrCopyOf;
                }
                int i10 = this.f13238c;
                do {
                    cVarB = cVarArrC[i10];
                    if (cVarB == null) {
                        cVarB = b();
                        cVarArrC[i10] = cVarB;
                    }
                    i10++;
                    if (i10 >= cVarArrC.length) {
                        i10 = 0;
                    }
                    r.c(cVarB, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!cVarB.a(this));
                this.f13238c = i10;
                this.f13237b++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVarB;
    }

    protected abstract c b();

    protected abstract c[] c(int i10);

    protected final void d(c cVar) {
        int i10;
        kotlin.coroutines.d[] dVarArrB;
        synchronized (this) {
            try {
                int i11 = this.f13237b - 1;
                this.f13237b = i11;
                if (i11 == 0) {
                    this.f13238c = 0;
                }
                r.c(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                dVarArrB = cVar.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (kotlin.coroutines.d dVar : dVarArrB) {
            if (dVar != null) {
                r.a aVar = n8.r.Companion;
                dVar.resumeWith(n8.r.m59constructorimpl(h0.INSTANCE));
            }
        }
    }

    protected final c[] e() {
        return this.f13236a;
    }
}
