package s1;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.j;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f15503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f15504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f15505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Interpolator f15506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Interpolator f15507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Interpolator f15508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f15509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f15510h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f15511i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f15512j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f15513k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f15514l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f15515m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f15516n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PointF f15517o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public PointF f15518p;

    public a(j jVar, Object obj, Object obj2, Interpolator interpolator, float f10, Float f11) {
        this.f15511i = -3987645.8f;
        this.f15512j = -3987645.8f;
        this.f15513k = 784923401;
        this.f15514l = 784923401;
        this.f15515m = Float.MIN_VALUE;
        this.f15516n = Float.MIN_VALUE;
        this.f15517o = null;
        this.f15518p = null;
        this.f15503a = jVar;
        this.f15504b = obj;
        this.f15505c = obj2;
        this.f15506d = interpolator;
        this.f15507e = null;
        this.f15508f = null;
        this.f15509g = f10;
        this.f15510h = f11;
    }

    public boolean a(float f10) {
        return f10 >= f() && f10 < c();
    }

    public a b(Object obj, Object obj2) {
        return new a(obj, obj2);
    }

    public float c() {
        if (this.f15503a == null) {
            return 1.0f;
        }
        if (this.f15516n == Float.MIN_VALUE) {
            if (this.f15510h == null) {
                this.f15516n = 1.0f;
            } else {
                this.f15516n = f() + ((this.f15510h.floatValue() - this.f15509g) / this.f15503a.e());
            }
        }
        return this.f15516n;
    }

    public float d() {
        if (this.f15512j == -3987645.8f) {
            this.f15512j = ((Float) this.f15505c).floatValue();
        }
        return this.f15512j;
    }

    public int e() {
        if (this.f15514l == 784923401) {
            this.f15514l = ((Integer) this.f15505c).intValue();
        }
        return this.f15514l;
    }

    public float f() {
        j jVar = this.f15503a;
        if (jVar == null) {
            return 0.0f;
        }
        if (this.f15515m == Float.MIN_VALUE) {
            this.f15515m = (this.f15509g - jVar.p()) / this.f15503a.e();
        }
        return this.f15515m;
    }

    public float g() {
        if (this.f15511i == -3987645.8f) {
            this.f15511i = ((Float) this.f15504b).floatValue();
        }
        return this.f15511i;
    }

    public int h() {
        if (this.f15513k == 784923401) {
            this.f15513k = ((Integer) this.f15504b).intValue();
        }
        return this.f15513k;
    }

    public boolean i() {
        return this.f15506d == null && this.f15507e == null && this.f15508f == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f15504b + ", endValue=" + this.f15505c + ", startFrame=" + this.f15509g + ", endFrame=" + this.f15510h + ", interpolator=" + this.f15506d + AbstractJsonLexerKt.END_OBJ;
    }

    public a(j jVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, float f10, Float f11) {
        this.f15511i = -3987645.8f;
        this.f15512j = -3987645.8f;
        this.f15513k = 784923401;
        this.f15514l = 784923401;
        this.f15515m = Float.MIN_VALUE;
        this.f15516n = Float.MIN_VALUE;
        this.f15517o = null;
        this.f15518p = null;
        this.f15503a = jVar;
        this.f15504b = obj;
        this.f15505c = obj2;
        this.f15506d = null;
        this.f15507e = interpolator;
        this.f15508f = interpolator2;
        this.f15509g = f10;
        this.f15510h = f11;
    }

    protected a(j jVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f10, Float f11) {
        this.f15511i = -3987645.8f;
        this.f15512j = -3987645.8f;
        this.f15513k = 784923401;
        this.f15514l = 784923401;
        this.f15515m = Float.MIN_VALUE;
        this.f15516n = Float.MIN_VALUE;
        this.f15517o = null;
        this.f15518p = null;
        this.f15503a = jVar;
        this.f15504b = obj;
        this.f15505c = obj2;
        this.f15506d = interpolator;
        this.f15507e = interpolator2;
        this.f15508f = interpolator3;
        this.f15509g = f10;
        this.f15510h = f11;
    }

    public a(Object obj) {
        this.f15511i = -3987645.8f;
        this.f15512j = -3987645.8f;
        this.f15513k = 784923401;
        this.f15514l = 784923401;
        this.f15515m = Float.MIN_VALUE;
        this.f15516n = Float.MIN_VALUE;
        this.f15517o = null;
        this.f15518p = null;
        this.f15503a = null;
        this.f15504b = obj;
        this.f15505c = obj;
        this.f15506d = null;
        this.f15507e = null;
        this.f15508f = null;
        this.f15509g = Float.MIN_VALUE;
        this.f15510h = Float.valueOf(Float.MAX_VALUE);
    }

    private a(Object obj, Object obj2) {
        this.f15511i = -3987645.8f;
        this.f15512j = -3987645.8f;
        this.f15513k = 784923401;
        this.f15514l = 784923401;
        this.f15515m = Float.MIN_VALUE;
        this.f15516n = Float.MIN_VALUE;
        this.f15517o = null;
        this.f15518p = null;
        this.f15503a = null;
        this.f15504b = obj;
        this.f15505c = obj2;
        this.f15506d = null;
        this.f15507e = null;
        this.f15508f = null;
        this.f15509g = Float.MIN_VALUE;
        this.f15510h = Float.valueOf(Float.MAX_VALUE);
    }
}
