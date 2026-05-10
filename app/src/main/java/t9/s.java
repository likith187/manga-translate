package t9;

/* JADX INFO: loaded from: classes2.dex */
public final class s implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f15778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f15779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private v f15780c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f15781f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f15782h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f15783i;

    public s(f upstream) {
        kotlin.jvm.internal.r.e(upstream, "upstream");
        this.f15778a = upstream;
        d dVarD = upstream.d();
        this.f15779b = dVarD;
        v vVar = dVarD.f15749a;
        this.f15780c = vVar;
        this.f15781f = vVar != null ? vVar.f15793b : -1;
    }

    @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15782h = true;
    }

    @Override // t9.a0
    public b0 f() {
        return this.f15778a.f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        if (r3 == r4.f15793b) goto L15;
     */
    @Override // t9.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long i0(t9.d r9, long r10) {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            kotlin.jvm.internal.r.e(r9, r0)
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 < 0) goto L75
            boolean r3 = r8.f15782h
            if (r3 != 0) goto L6d
            t9.v r3 = r8.f15780c
            if (r3 == 0) goto L2b
            t9.d r4 = r8.f15779b
            t9.v r4 = r4.f15749a
            if (r3 != r4) goto L23
            int r3 = r8.f15781f
            kotlin.jvm.internal.r.b(r4)
            int r4 = r4.f15793b
            if (r3 != r4) goto L23
            goto L2b
        L23:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Peek source is invalid because upstream source was used"
            r8.<init>(r9)
            throw r8
        L2b:
            if (r2 != 0) goto L2e
            return r0
        L2e:
            t9.f r0 = r8.f15778a
            long r1 = r8.f15783i
            r3 = 1
            long r1 = r1 + r3
            boolean r0 = r0.F(r1)
            if (r0 != 0) goto L3e
            r8 = -1
            return r8
        L3e:
            t9.v r0 = r8.f15780c
            if (r0 != 0) goto L51
            t9.d r0 = r8.f15779b
            t9.v r0 = r0.f15749a
            if (r0 == 0) goto L51
            r8.f15780c = r0
            kotlin.jvm.internal.r.b(r0)
            int r0 = r0.f15793b
            r8.f15781f = r0
        L51:
            t9.d r0 = r8.f15779b
            long r0 = r0.G0()
            long r2 = r8.f15783i
            long r0 = r0 - r2
            long r10 = java.lang.Math.min(r10, r0)
            t9.d r2 = r8.f15779b
            long r4 = r8.f15783i
            r3 = r9
            r6 = r10
            r2.B(r3, r4, r6)
            long r0 = r8.f15783i
            long r0 = r0 + r10
            r8.f15783i = r0
            return r10
        L6d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "closed"
            r8.<init>(r9)
            throw r8
        L75:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "byteCount < 0: "
            r8.append(r9)
            r8.append(r10)
            java.lang.String r8 = r8.toString()
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r8 = r8.toString()
            r9.<init>(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.s.i0(t9.d, long):long");
    }
}
