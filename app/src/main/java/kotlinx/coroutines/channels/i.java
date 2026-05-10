package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.internal.d0;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends d0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f13218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f13219f;

    public i(long j10, i iVar, b bVar, int i10) {
        super(j10, iVar, i10);
        this.f13218e = bVar;
        this.f13219f = new AtomicReferenceArray(c.f13194b * 2);
    }

    private final void E(int i10, Object obj) {
        z().set(i10 * 2, obj);
    }

    private final /* synthetic */ AtomicReferenceArray z() {
        return this.f13219f;
    }

    public final Object A(int i10) {
        return z().get(i10 * 2);
    }

    public final Object B(int i10) {
        return z().get((i10 * 2) + 1);
    }

    public final void C(int i10, boolean z10) {
        if (z10) {
            y().t0((this.f13261c * ((long) c.f13194b)) + ((long) i10));
        }
        t();
    }

    public final Object D(int i10) {
        Object objA = A(i10);
        w(i10);
        return objA;
    }

    public final void F(int i10, Object obj) {
        z().set((i10 * 2) + 1, obj);
    }

    public final void G(int i10, Object obj) {
        E(i10, obj);
    }

    @Override // kotlinx.coroutines.internal.d0
    public int r() {
        return c.f13194b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
    
        w(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0066, code lost:
    
        if (r0 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0068, code lost:
    
        r3 = y().f13188c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006e, code lost:
    
        if (r3 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0070, code lost:
    
        kotlinx.coroutines.internal.y.b(r3, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.d0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void s(int r4, java.lang.Throwable r5, kotlin.coroutines.g r6) {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.c.f13194b
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.A(r4)
        Le:
            java.lang.Object r1 = r3.B(r4)
            boolean r2 = r1 instanceof kotlinx.coroutines.e2
            if (r2 != 0) goto L74
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.o
            if (r2 == 0) goto L1b
            goto L74
        L1b:
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.h()
            if (r1 == r2) goto L63
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.g()
            if (r1 != r2) goto L28
            goto L63
        L28:
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.n()
            if (r1 == r2) goto Le
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.o()
            if (r1 != r2) goto L35
            goto Le
        L35:
            kotlinx.coroutines.internal.g0 r3 = kotlinx.coroutines.channels.c.d()
            if (r1 == r3) goto L62
            kotlinx.coroutines.internal.g0 r3 = kotlinx.coroutines.channels.c.f13196d
            if (r1 != r3) goto L40
            goto L62
        L40:
            kotlinx.coroutines.internal.g0 r3 = kotlinx.coroutines.channels.c.x()
            if (r1 != r3) goto L47
            return
        L47:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "unexpected state: "
            r4.append(r5)
            r4.append(r1)
            java.lang.String r4 = r4.toString()
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L62:
            return
        L63:
            r3.w(r4)
            if (r0 == 0) goto L73
            kotlinx.coroutines.channels.b r3 = r3.y()
            w8.l r3 = r3.f13188c
            if (r3 == 0) goto L73
            kotlinx.coroutines.internal.y.b(r3, r5, r6)
        L73:
            return
        L74:
            if (r0 == 0) goto L7b
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.h()
            goto L7f
        L7b:
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.g()
        L7f:
            boolean r1 = r3.v(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.w(r4)
            r1 = r0 ^ 1
            r3.C(r4, r1)
            if (r0 == 0) goto L9a
            kotlinx.coroutines.channels.b r3 = r3.y()
            w8.l r3 = r3.f13188c
            if (r3 == 0) goto L9a
            kotlinx.coroutines.internal.y.b(r3, r5, r6)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.i.s(int, java.lang.Throwable, kotlin.coroutines.g):void");
    }

    public final boolean v(int i10, Object obj, Object obj2) {
        return h.a(z(), (i10 * 2) + 1, obj, obj2);
    }

    public final void w(int i10) {
        E(i10, null);
    }

    public final Object x(int i10, Object obj) {
        return z().getAndSet((i10 * 2) + 1, obj);
    }

    public final b y() {
        b bVar = this.f13218e;
        r.b(bVar);
        return bVar;
    }
}
