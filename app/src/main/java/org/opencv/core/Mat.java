package org.opencv.core;

import aa.a;
import aa.e;
import aa.g;
import aa.h;

/* JADX INFO: loaded from: classes2.dex */
public class Mat implements Cloneable {

    /* JADX INFO: renamed from: a */
    public final long f15054a;

    public Mat(long j10) {
        if (j10 == 0) {
            throw new UnsupportedOperationException("Native object address is NULL");
        }
        this.f15054a = j10;
    }

    public static Mat A(h hVar, int i10) {
        return new Mat(n_zeros(hVar.f147a, hVar.f148b, i10));
    }

    private static native int nGetB(long j10, int i10, int i11, int i12, byte[] bArr);

    private static native int nGetD(long j10, int i10, int i11, int i12, double[] dArr);

    private static native int nGetF(long j10, int i10, int i11, int i12, float[] fArr);

    private static native int nGetI(long j10, int i10, int i11, int i12, int[] iArr);

    private static native int nGetS(long j10, int i10, int i11, int i12, short[] sArr);

    private static native int nPutB(long j10, int i10, int i11, int i12, byte[] bArr);

    private static native int nPutF(long j10, int i10, int i11, int i12, float[] fArr);

    private static native int nPutI(long j10, int i10, int i11, int i12, int[] iArr);

    private static native long n_Mat();

    private static native long n_Mat(double d10, double d11, int i10, double d12, double d13, double d14, double d15);

    private static native long n_Mat(int i10, int i11, int i12);

    private static native long n_Mat(int i10, int i11, int i12, double d10, double d11, double d12, double d13);

    private static native long n_Mat(long j10, int i10, int i11, int i12, int i13);

    private static native int n_channels(long j10);

    private static native long n_clone(long j10);

    private static native int n_cols(long j10);

    private static native void n_convertTo(long j10, long j11, int i10);

    private static native void n_copyTo(long j10, long j11, long j12);

    private static native void n_create(long j10, int i10, int i11, int i12);

    private static native long n_dataAddr(long j10);

    private static native void n_delete(long j10);

    private static native int n_dims(long j10);

    private static native long n_elemSize(long j10);

    private static native boolean n_isContinuous(long j10);

    private static native boolean n_isSubmatrix(long j10);

    private static native void n_release(long j10);

    private static native int n_rows(long j10);

    private static native double[] n_size(long j10);

    private static native int n_size_i(long j10, int i10);

    private static native long n_total(long j10);

    private static native int n_type(long j10);

    private static native long n_zeros(double d10, double d11, int i10);

    public int a() {
        return n_channels(this.f15054a);
    }

    /* JADX INFO: renamed from: b */
    public Mat clone() {
        try {
            super.clone();
        } catch (CloneNotSupportedException unused) {
        }
        return new Mat(n_clone(this.f15054a));
    }

    public int d() {
        return n_cols(this.f15054a);
    }

    public void e(Mat mat, int i10) {
        n_convertTo(this.f15054a, mat.f15054a, i10);
    }

    public void f(Mat mat, Mat mat2) {
        n_copyTo(this.f15054a, mat.f15054a, mat2.f15054a);
    }

    protected void finalize() throws Throwable {
        n_delete(this.f15054a);
        super.finalize();
    }

    public void g(int i10, int i11, int i12) {
        n_create(this.f15054a, i10, i11, i12);
    }

    public long h() {
        return n_dataAddr(this.f15054a);
    }

    public int i() {
        return n_dims(this.f15054a);
    }

    public long j() {
        return n_elemSize(this.f15054a);
    }

    public int k(int i10, int i11, byte[] bArr) {
        int iZ = z();
        if (bArr == null || bArr.length % a.i(iZ) != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Provided data element number (");
            sb.append(bArr == null ? 0 : bArr.length);
            sb.append(") should be multiple of the Mat channels count (");
            sb.append(a.i(iZ));
            sb.append(")");
            throw new UnsupportedOperationException(sb.toString());
        }
        if (a.j(iZ) == 0 || a.j(iZ) == 1) {
            return nGetB(this.f15054a, i10, i11, bArr.length, bArr);
        }
        throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
    }

    public int l(int i10, int i11, double[] dArr) {
        int iZ = z();
        if (dArr != null && dArr.length % a.i(iZ) == 0) {
            if (a.j(iZ) == 6) {
                return nGetD(this.f15054a, i10, i11, dArr.length, dArr);
            }
            throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Provided data element number (");
        sb.append(dArr == null ? 0 : dArr.length);
        sb.append(") should be multiple of the Mat channels count (");
        sb.append(a.i(iZ));
        sb.append(")");
        throw new UnsupportedOperationException(sb.toString());
    }

    public int m(int i10, int i11, float[] fArr) {
        int iZ = z();
        if (fArr != null && fArr.length % a.i(iZ) == 0) {
            if (a.j(iZ) == 5) {
                return nGetF(this.f15054a, i10, i11, fArr.length, fArr);
            }
            throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Provided data element number (");
        sb.append(fArr == null ? 0 : fArr.length);
        sb.append(") should be multiple of the Mat channels count (");
        sb.append(a.i(iZ));
        sb.append(")");
        throw new UnsupportedOperationException(sb.toString());
    }

    public int n(int i10, int i11, int[] iArr) {
        int iZ = z();
        if (iArr != null && iArr.length % a.i(iZ) == 0) {
            if (a.j(iZ) == 4) {
                return nGetI(this.f15054a, i10, i11, iArr.length, iArr);
            }
            throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Provided data element number (");
        sb.append(iArr == null ? 0 : iArr.length);
        sb.append(") should be multiple of the Mat channels count (");
        sb.append(a.i(iZ));
        sb.append(")");
        throw new UnsupportedOperationException(sb.toString());
    }

    public int o(int i10, int i11, short[] sArr) {
        int iZ = z();
        if (sArr == null || sArr.length % a.i(iZ) != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Provided data element number (");
            sb.append(sArr == null ? 0 : sArr.length);
            sb.append(") should be multiple of the Mat channels count (");
            sb.append(a.i(iZ));
            sb.append(")");
            throw new UnsupportedOperationException(sb.toString());
        }
        if (a.j(iZ) == 2 || a.j(iZ) == 3) {
            return nGetS(this.f15054a, i10, i11, sArr.length, sArr);
        }
        throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
    }

    public boolean p() {
        return n_isContinuous(this.f15054a);
    }

    public boolean q() {
        return n_isSubmatrix(this.f15054a);
    }

    public int r(int i10, int i11, byte[] bArr) {
        int iZ = z();
        if (bArr == null || bArr.length % a.i(iZ) != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Provided data element number (");
            sb.append(bArr == null ? 0 : bArr.length);
            sb.append(") should be multiple of the Mat channels count (");
            sb.append(a.i(iZ));
            sb.append(")");
            throw new UnsupportedOperationException(sb.toString());
        }
        if (a.j(iZ) == 0 || a.j(iZ) == 1) {
            return nPutB(this.f15054a, i10, i11, bArr.length, bArr);
        }
        throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
    }

    public int s(int i10, int i11, float[] fArr) {
        int iZ = z();
        if (fArr != null && fArr.length % a.i(iZ) == 0) {
            if (a.j(iZ) == 5) {
                return nPutF(this.f15054a, i10, i11, fArr.length, fArr);
            }
            throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Provided data element number (");
        sb.append(fArr == null ? 0 : fArr.length);
        sb.append(") should be multiple of the Mat channels count (");
        sb.append(a.i(iZ));
        sb.append(")");
        throw new UnsupportedOperationException(sb.toString());
    }

    public int t(int i10, int i11, int[] iArr) {
        int iZ = z();
        if (iArr != null && iArr.length % a.i(iZ) == 0) {
            if (a.j(iZ) == 4) {
                return nPutI(this.f15054a, i10, i11, iArr.length, iArr);
            }
            throw new UnsupportedOperationException("Mat data type is not compatible: " + iZ);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Provided data element number (");
        sb.append(iArr == null ? 0 : iArr.length);
        sb.append(") should be multiple of the Mat channels count (");
        sb.append(a.i(iZ));
        sb.append(")");
        throw new UnsupportedOperationException(sb.toString());
    }

    public String toString() {
        String str = i() > 0 ? "" : "-1*-1*";
        for (int i10 = 0; i10 < i(); i10++) {
            str = str + w(i10) + "*";
        }
        return "Mat [ " + str + a.l(z()) + ", isCont=" + p() + ", isSubmat=" + q() + ", nativeObj=0x" + Long.toHexString(this.f15054a) + ", dataAddr=0x" + Long.toHexString(h()) + " ]";
    }

    public void u() {
        n_release(this.f15054a);
    }

    public int v() {
        return n_rows(this.f15054a);
    }

    public int w(int i10) {
        return n_size_i(this.f15054a, i10);
    }

    public h x() {
        return new h(n_size(this.f15054a));
    }

    public long y() {
        return n_total(this.f15054a);
    }

    public int z() {
        return n_type(this.f15054a);
    }

    public Mat() {
        this.f15054a = n_Mat();
    }

    public Mat(int i10, int i11, int i12) {
        this.f15054a = n_Mat(i10, i11, i12);
    }

    public Mat(int i10, int i11, int i12, g gVar) {
        double[] dArr = gVar.f146a;
        this.f15054a = n_Mat(i10, i11, i12, dArr[0], dArr[1], dArr[2], dArr[3]);
    }

    public Mat(h hVar, int i10, g gVar) {
        double d10 = hVar.f147a;
        double d11 = hVar.f148b;
        double[] dArr = gVar.f146a;
        this.f15054a = n_Mat(d10, d11, i10, dArr[0], dArr[1], dArr[2], dArr[3]);
    }

    public Mat(Mat mat, e eVar) {
        long j10 = mat.f15054a;
        int i10 = eVar.f140b;
        int i11 = i10 + eVar.f142f;
        int i12 = eVar.f139a;
        this.f15054a = n_Mat(j10, i10, i11, i12, i12 + eVar.f141c);
    }
}
