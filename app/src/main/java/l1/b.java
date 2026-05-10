package l1;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f13541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f13542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f13543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f13545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f13546g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f13549j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13550k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PointF f13551l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PointF f13552m;

    public enum a {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public b(String str, String str2, float f10, a aVar, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        a(str, str2, f10, aVar, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2);
    }

    public void a(String str, String str2, float f10, a aVar, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        this.f13540a = str;
        this.f13541b = str2;
        this.f13542c = f10;
        this.f13543d = aVar;
        this.f13544e = i10;
        this.f13545f = f11;
        this.f13546g = f12;
        this.f13547h = i11;
        this.f13548i = i12;
        this.f13549j = f13;
        this.f13550k = z10;
        this.f13551l = pointF;
        this.f13552m = pointF2;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.f13540a.hashCode() * 31) + this.f13541b.hashCode()) * 31) + this.f13542c)) * 31) + this.f13543d.ordinal()) * 31) + this.f13544e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f13545f);
        return (((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f13547h;
    }

    public b() {
    }
}
