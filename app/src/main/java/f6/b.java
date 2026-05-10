package f6;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f11974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f11975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f11976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f11977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f11980g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11981h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11982i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11983j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f11984k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PointF f11985l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PointF f11986m;

    public enum a {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public b(String str, String str2, float f10, a aVar, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        a(str, str2, f10, aVar, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2);
    }

    public void a(String str, String str2, float f10, a aVar, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        this.f11974a = str;
        this.f11975b = str2;
        this.f11976c = f10;
        this.f11977d = aVar;
        this.f11978e = i10;
        this.f11979f = f11;
        this.f11980g = f12;
        this.f11981h = i11;
        this.f11982i = i12;
        this.f11983j = f13;
        this.f11984k = z10;
        this.f11985l = pointF;
        this.f11986m = pointF2;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.f11974a.hashCode() * 31) + this.f11975b.hashCode()) * 31) + this.f11976c)) * 31) + this.f11977d.ordinal()) * 31) + this.f11978e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f11979f);
        return (((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f11981h;
    }

    public b() {
    }
}
