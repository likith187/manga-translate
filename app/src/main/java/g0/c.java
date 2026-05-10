package g0;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f12042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ByteBuffer f12043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f12044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f12046e = d.a();

    protected int a(int i10) {
        return i10 + this.f12043b.getInt(i10);
    }

    protected int b(int i10) {
        if (i10 < this.f12045d) {
            return this.f12043b.getShort(this.f12044c + i10);
        }
        return 0;
    }

    protected void c(int i10, ByteBuffer byteBuffer) {
        this.f12043b = byteBuffer;
        if (byteBuffer == null) {
            this.f12042a = 0;
            this.f12044c = 0;
            this.f12045d = 0;
        } else {
            this.f12042a = i10;
            int i11 = i10 - byteBuffer.getInt(i10);
            this.f12044c = i11;
            this.f12045d = this.f12043b.getShort(i11);
        }
    }

    protected int d(int i10) {
        int i11 = i10 + this.f12042a;
        return i11 + this.f12043b.getInt(i11) + 4;
    }

    protected int e(int i10) {
        int i11 = i10 + this.f12042a;
        return this.f12043b.getInt(i11 + this.f12043b.getInt(i11));
    }
}
