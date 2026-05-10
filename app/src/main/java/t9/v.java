package t9;

import com.oplus.aiunit.core.ConfigPackage;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f15791h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f15792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f15793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f15795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f15796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public v f15797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public v f15798g;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public v() {
        this.f15792a = new byte[ConfigPackage.FRAME_SIZE_6];
        this.f15796e = true;
        this.f15795d = false;
    }

    public final void a() {
        int i10;
        v vVar = this.f15798g;
        if (vVar == this) {
            throw new IllegalStateException("cannot compact");
        }
        kotlin.jvm.internal.r.b(vVar);
        if (vVar.f15796e) {
            int i11 = this.f15794c - this.f15793b;
            v vVar2 = this.f15798g;
            kotlin.jvm.internal.r.b(vVar2);
            int i12 = 8192 - vVar2.f15794c;
            v vVar3 = this.f15798g;
            kotlin.jvm.internal.r.b(vVar3);
            if (vVar3.f15795d) {
                i10 = 0;
            } else {
                v vVar4 = this.f15798g;
                kotlin.jvm.internal.r.b(vVar4);
                i10 = vVar4.f15793b;
            }
            if (i11 > i12 + i10) {
                return;
            }
            v vVar5 = this.f15798g;
            kotlin.jvm.internal.r.b(vVar5);
            f(vVar5, i11);
            b();
            w.b(this);
        }
    }

    public final v b() {
        v vVar = this.f15797f;
        if (vVar == this) {
            vVar = null;
        }
        v vVar2 = this.f15798g;
        kotlin.jvm.internal.r.b(vVar2);
        vVar2.f15797f = this.f15797f;
        v vVar3 = this.f15797f;
        kotlin.jvm.internal.r.b(vVar3);
        vVar3.f15798g = this.f15798g;
        this.f15797f = null;
        this.f15798g = null;
        return vVar;
    }

    public final v c(v segment) {
        kotlin.jvm.internal.r.e(segment, "segment");
        segment.f15798g = this;
        segment.f15797f = this.f15797f;
        v vVar = this.f15797f;
        kotlin.jvm.internal.r.b(vVar);
        vVar.f15798g = segment;
        this.f15797f = segment;
        return segment;
    }

    public final v d() {
        this.f15795d = true;
        return new v(this.f15792a, this.f15793b, this.f15794c, true, false);
    }

    public final v e(int i10) {
        v vVarC;
        if (i10 <= 0 || i10 > this.f15794c - this.f15793b) {
            throw new IllegalArgumentException("byteCount out of range");
        }
        if (i10 >= 1024) {
            vVarC = d();
        } else {
            vVarC = w.c();
            byte[] bArr = this.f15792a;
            byte[] bArr2 = vVarC.f15792a;
            int i11 = this.f15793b;
            kotlin.collections.i.l(bArr, bArr2, 0, i11, i11 + i10, 2, null);
        }
        vVarC.f15794c = vVarC.f15793b + i10;
        this.f15793b += i10;
        v vVar = this.f15798g;
        kotlin.jvm.internal.r.b(vVar);
        vVar.c(vVarC);
        return vVarC;
    }

    public final void f(v sink, int i10) {
        kotlin.jvm.internal.r.e(sink, "sink");
        if (!sink.f15796e) {
            throw new IllegalStateException("only owner can write");
        }
        int i11 = sink.f15794c;
        if (i11 + i10 > 8192) {
            if (sink.f15795d) {
                throw new IllegalArgumentException();
            }
            int i12 = sink.f15793b;
            if ((i11 + i10) - i12 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = sink.f15792a;
            kotlin.collections.i.l(bArr, bArr, 0, i12, i11, 2, null);
            sink.f15794c -= sink.f15793b;
            sink.f15793b = 0;
        }
        byte[] bArr2 = this.f15792a;
        byte[] bArr3 = sink.f15792a;
        int i13 = sink.f15794c;
        int i14 = this.f15793b;
        kotlin.collections.i.g(bArr2, bArr3, i13, i14, i14 + i10);
        sink.f15794c += i10;
        this.f15793b += i10;
    }

    public v(byte[] data, int i10, int i11, boolean z10, boolean z11) {
        kotlin.jvm.internal.r.e(data, "data");
        this.f15792a = data;
        this.f15793b = i10;
        this.f15794c = i11;
        this.f15795d = z10;
        this.f15796e = z11;
    }
}
