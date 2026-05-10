package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k {

    /* JADX INFO: renamed from: a */
    private static final g0 f13274a = new g0("UNDEFINED");

    /* JADX INFO: renamed from: b */
    public static final g0 f13275b = new g0("REUSABLE_CLAIMED");

    /* JADX WARN: Removed duplicated region for block: B:82:0x008f A[Catch: all -> 0x0068, DONT_GENERATE, TryCatch #0 {all -> 0x0068, blocks: (B:66:0x003f, B:68:0x004d, B:70:0x0053, B:83:0x0092, B:73:0x006a, B:75:0x007a, B:80:0x0089, B:82:0x008f, B:88:0x009f, B:91:0x00a8, B:90:0x00a5, B:78:0x0080), top: B:99:0x003f, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void b(kotlin.coroutines.d r6, java.lang.Object r7, w8.l r8) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.internal.j
            if (r0 == 0) goto Lb2
            kotlinx.coroutines.internal.j r6 = (kotlinx.coroutines.internal.j) r6
            java.lang.Object r8 = kotlinx.coroutines.w.c(r7, r8)
            kotlinx.coroutines.y r0 = r6.f13270f
            kotlin.coroutines.g r1 = r6.getContext()
            boolean r0 = r0.D0(r1)
            r1 = 1
            if (r0 == 0) goto L26
            r6.f13272i = r8
            r6.f13320c = r1
            kotlinx.coroutines.y r7 = r6.f13270f
            kotlin.coroutines.g r8 = r6.getContext()
            r7.x0(r8, r6)
            goto Lb5
        L26:
            kotlinx.coroutines.z1 r0 = kotlinx.coroutines.z1.INSTANCE
            kotlinx.coroutines.s0 r0 = r0.a()
            boolean r2 = r0.L0()
            if (r2 == 0) goto L3b
            r6.f13272i = r8
            r6.f13320c = r1
            r0.H0(r6)
            goto Lb5
        L3b:
            r0.J0(r1)
            r2 = 0
            kotlin.coroutines.g r3 = r6.getContext()     // Catch: java.lang.Throwable -> L68
            kotlinx.coroutines.f1$b r4 = kotlinx.coroutines.f1.f13228g     // Catch: java.lang.Throwable -> L68
            kotlin.coroutines.g$b r3 = r3.get(r4)     // Catch: java.lang.Throwable -> L68
            kotlinx.coroutines.f1 r3 = (kotlinx.coroutines.f1) r3     // Catch: java.lang.Throwable -> L68
            if (r3 == 0) goto L6a
            boolean r4 = r3.isActive()     // Catch: java.lang.Throwable -> L68
            if (r4 != 0) goto L6a
            java.util.concurrent.CancellationException r7 = r3.N()     // Catch: java.lang.Throwable -> L68
            r6.c(r8, r7)     // Catch: java.lang.Throwable -> L68
            n8.r$a r8 = n8.r.Companion     // Catch: java.lang.Throwable -> L68
            java.lang.Object r7 = n8.s.a(r7)     // Catch: java.lang.Throwable -> L68
            java.lang.Object r7 = n8.r.m59constructorimpl(r7)     // Catch: java.lang.Throwable -> L68
            r6.resumeWith(r7)     // Catch: java.lang.Throwable -> L68
            goto L92
        L68:
            r7 = move-exception
            goto La9
        L6a:
            kotlin.coroutines.d r8 = r6.f13271h     // Catch: java.lang.Throwable -> L68
            java.lang.Object r3 = r6.f13273j     // Catch: java.lang.Throwable -> L68
            kotlin.coroutines.g r4 = r8.getContext()     // Catch: java.lang.Throwable -> L68
            java.lang.Object r3 = kotlinx.coroutines.internal.k0.c(r4, r3)     // Catch: java.lang.Throwable -> L68
            kotlinx.coroutines.internal.g0 r5 = kotlinx.coroutines.internal.k0.f13276a     // Catch: java.lang.Throwable -> L68
            if (r3 == r5) goto L7f
            kotlinx.coroutines.c2 r8 = kotlinx.coroutines.x.g(r8, r4, r3)     // Catch: java.lang.Throwable -> L68
            goto L80
        L7f:
            r8 = r2
        L80:
            kotlin.coroutines.d r5 = r6.f13271h     // Catch: java.lang.Throwable -> L9c
            r5.resumeWith(r7)     // Catch: java.lang.Throwable -> L9c
            n8.h0 r7 = n8.h0.INSTANCE     // Catch: java.lang.Throwable -> L9c
            if (r8 == 0) goto L8f
            boolean r7 = r8.B0()     // Catch: java.lang.Throwable -> L68
            if (r7 == 0) goto L92
        L8f:
            kotlinx.coroutines.internal.k0.a(r4, r3)     // Catch: java.lang.Throwable -> L68
        L92:
            boolean r7 = r0.N0()     // Catch: java.lang.Throwable -> L68
            if (r7 != 0) goto L92
        L98:
            r0.F0(r1)
            goto Lb5
        L9c:
            r7 = move-exception
            if (r8 == 0) goto La5
            boolean r8 = r8.B0()     // Catch: java.lang.Throwable -> L68
            if (r8 == 0) goto La8
        La5:
            kotlinx.coroutines.internal.k0.a(r4, r3)     // Catch: java.lang.Throwable -> L68
        La8:
            throw r7     // Catch: java.lang.Throwable -> L68
        La9:
            r6.k(r7, r2)     // Catch: java.lang.Throwable -> Lad
            goto L98
        Lad:
            r6 = move-exception
            r0.F0(r1)
            throw r6
        Lb2:
            r6.resumeWith(r7)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.k.b(kotlin.coroutines.d, java.lang.Object, w8.l):void");
    }

    public static /* synthetic */ void c(kotlin.coroutines.d dVar, Object obj, w8.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        b(dVar, obj, lVar);
    }
}
