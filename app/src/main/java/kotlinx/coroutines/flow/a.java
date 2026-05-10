package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements b {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.a$a, reason: collision with other inner class name */
    static final class C0170a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C0170a(kotlin.coroutines.d dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.collect(null, this);
        }
    }

    public abstract Object a(c cVar, kotlin.coroutines.d dVar);

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.c r5, kotlin.coroutines.d r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.a.C0170a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.a$a r0 = (kotlinx.coroutines.flow.a.C0170a) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.a$a r0 = new kotlinx.coroutines.flow.a$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.flow.internal.g r4 = (kotlinx.coroutines.flow.internal.g) r4
            n8.s.b(r6)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L57
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            n8.s.b(r6)
            kotlinx.coroutines.flow.internal.g r6 = new kotlinx.coroutines.flow.internal.g
            kotlin.coroutines.g r2 = r0.getContext()
            r6.<init>(r5, r2)
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L55
            r0.label = r3     // Catch: java.lang.Throwable -> L55
            java.lang.Object r4 = r4.a(r6, r0)     // Catch: java.lang.Throwable -> L55
            if (r4 != r1) goto L4e
            return r1
        L4e:
            r4 = r6
        L4f:
            r4.releaseIntercepted()
            n8.h0 r4 = n8.h0.INSTANCE
            return r4
        L55:
            r5 = move-exception
            r4 = r6
        L57:
            r4.releaseIntercepted()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.a.collect(kotlinx.coroutines.flow.c, kotlin.coroutines.d):java.lang.Object");
    }
}
