package m6;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.oplus.anim.a f13846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f13847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f13848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Interpolator f13849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Interpolator f13850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Interpolator f13851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f13852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f13853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f13854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f13855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f13856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f13857l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f13858m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f13859n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PointF f13860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public PointF f13861p;

    public c(com.oplus.anim.a aVar, Object obj, Object obj2, Interpolator interpolator, float f10, Float f11) {
        this.f13854i = -3987645.8f;
        this.f13855j = -3987645.8f;
        this.f13856k = 784923401;
        this.f13857l = 784923401;
        this.f13858m = Float.MIN_VALUE;
        this.f13859n = Float.MIN_VALUE;
        this.f13860o = null;
        this.f13861p = null;
        this.f13846a = aVar;
        this.f13847b = obj;
        this.f13848c = obj2;
        this.f13849d = interpolator;
        this.f13850e = null;
        this.f13851f = null;
        this.f13852g = f10;
        this.f13853h = f11;
    }

    public boolean a(float f10) {
        return f10 >= f() && f10 < c();
    }

    public c b(Object obj, Object obj2) {
        return new c(obj, obj2);
    }

    public float c() {
        if (this.f13846a == null) {
            return 1.0f;
        }
        if (this.f13859n == Float.MIN_VALUE) {
            if (this.f13853h == null) {
                this.f13859n = 1.0f;
            } else {
                this.f13859n = f() + ((this.f13853h.floatValue() - this.f13852g) / this.f13846a.e());
            }
        }
        return this.f13859n;
    }

    public float d() {
        if (this.f13855j == -3987645.8f) {
            this.f13855j = ((Float) this.f13848c).floatValue();
        }
        return this.f13855j;
    }

    public int e() {
        if (this.f13857l == 784923401) {
            this.f13857l = ((Integer) this.f13848c).intValue();
        }
        return this.f13857l;
    }

    public float f() {
        com.oplus.anim.a aVar = this.f13846a;
        if (aVar == null) {
            return 0.0f;
        }
        if (this.f13858m == Float.MIN_VALUE) {
            this.f13858m = (this.f13852g - aVar.p()) / this.f13846a.e();
        }
        return this.f13858m;
    }

    public float g() {
        if (this.f13854i == -3987645.8f) {
            this.f13854i = ((Float) this.f13847b).floatValue();
        }
        return this.f13854i;
    }

    public int h() {
        if (this.f13856k == 784923401) {
            this.f13856k = ((Integer) this.f13847b).intValue();
        }
        return this.f13856k;
    }

    public boolean i() {
        return this.f13849d == null && this.f13850e == null && this.f13851f == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f13847b + ", endValue=" + this.f13848c + ", startFrame=" + this.f13852g + ", endFrame=" + this.f13853h + ", interpolator=" + this.f13849d + AbstractJsonLexerKt.END_OBJ;
    }

    public c(com.oplus.anim.a aVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, float f10, Float f11) {
        this.f13854i = -3987645.8f;
        this.f13855j = -3987645.8f;
        this.f13856k = 784923401;
        this.f13857l = 784923401;
        this.f13858m = Float.MIN_VALUE;
        this.f13859n = Float.MIN_VALUE;
        this.f13860o = null;
        this.f13861p = null;
        this.f13846a = aVar;
        this.f13847b = obj;
        this.f13848c = obj2;
        this.f13849d = null;
        this.f13850e = interpolator;
        this.f13851f = interpolator2;
        this.f13852g = f10;
        this.f13853h = f11;
    }

    protected c(com.oplus.anim.a aVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f10, Float f11) {
        this.f13854i = -3987645.8f;
        this.f13855j = -3987645.8f;
        this.f13856k = 784923401;
        this.f13857l = 784923401;
        this.f13858m = Float.MIN_VALUE;
        this.f13859n = Float.MIN_VALUE;
        this.f13860o = null;
        this.f13861p = null;
        this.f13846a = aVar;
        this.f13847b = obj;
        this.f13848c = obj2;
        this.f13849d = interpolator;
        this.f13850e = interpolator2;
        this.f13851f = interpolator3;
        this.f13852g = f10;
        this.f13853h = f11;
    }

    public c(Object obj) {
        this.f13854i = -3987645.8f;
        this.f13855j = -3987645.8f;
        this.f13856k = 784923401;
        this.f13857l = 784923401;
        this.f13858m = Float.MIN_VALUE;
        this.f13859n = Float.MIN_VALUE;
        this.f13860o = null;
        this.f13861p = null;
        this.f13846a = null;
        this.f13847b = obj;
        this.f13848c = obj;
        this.f13849d = null;
        this.f13850e = null;
        this.f13851f = null;
        this.f13852g = Float.MIN_VALUE;
        this.f13853h = Float.valueOf(Float.MAX_VALUE);
    }

    private c(Object obj, Object obj2) {
        this.f13854i = -3987645.8f;
        this.f13855j = -3987645.8f;
        this.f13856k = 784923401;
        this.f13857l = 784923401;
        this.f13858m = Float.MIN_VALUE;
        this.f13859n = Float.MIN_VALUE;
        this.f13860o = null;
        this.f13861p = null;
        this.f13846a = null;
        this.f13847b = obj;
        this.f13848c = obj2;
        this.f13849d = null;
        this.f13850e = null;
        this.f13851f = null;
        this.f13852g = Float.MIN_VALUE;
        this.f13853h = Float.valueOf(Float.MAX_VALUE);
    }
}
