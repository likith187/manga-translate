package okhttp3;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a0 {

    /* JADX INFO: renamed from: a */
    public static final a f14656a = new a(null);

    public static final class a {

        /* JADX INFO: renamed from: okhttp3.a0$a$a */
        public static final class C0192a extends a0 {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ w f14657b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ int f14658c;

            /* JADX INFO: renamed from: d */
            final /* synthetic */ byte[] f14659d;

            /* JADX INFO: renamed from: e */
            final /* synthetic */ int f14660e;

            C0192a(w wVar, int i10, byte[] bArr, int i11) {
                this.f14657b = wVar;
                this.f14658c = i10;
                this.f14659d = bArr;
                this.f14660e = i11;
            }

            @Override // okhttp3.a0
            public long a() {
                return this.f14658c;
            }

            @Override // okhttp3.a0
            public w b() {
                return this.f14657b;
            }

            @Override // okhttp3.a0
            public void e(t9.e sink) {
                kotlin.jvm.internal.r.e(sink, "sink");
                sink.j(this.f14659d, this.f14660e, this.f14658c);
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ a0 b(a aVar, byte[] bArr, w wVar, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                wVar = null;
            }
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = bArr.length;
            }
            return aVar.a(bArr, wVar, i10, i11);
        }

        public final a0 a(byte[] bArr, w wVar, int i10, int i11) {
            kotlin.jvm.internal.r.e(bArr, "<this>");
            i9.d.k(bArr.length, i10, i11);
            return new C0192a(wVar, i11, bArr, i10);
        }

        private a() {
        }
    }

    public abstract long a();

    public abstract w b();

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public abstract void e(t9.e eVar);
}
