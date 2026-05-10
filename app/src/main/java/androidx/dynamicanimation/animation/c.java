package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.view.m0;
import androidx.dynamicanimation.animation.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements a.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final s f2288m = new g("translationX");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final s f2289n = new h("translationY");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final s f2290o = new i("translationZ");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final s f2291p = new j("scaleX");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final s f2292q = new k("scaleY");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final s f2293r = new l("rotation");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final s f2294s = new m("rotationX");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final s f2295t = new n("rotationY");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final s f2296u = new o("x");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final s f2297v = new a("y");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final s f2298w = new b("z");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final s f2299x = new C0023c("alpha");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final s f2300y = new d("scrollX");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final s f2301z = new e("scrollY");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f2302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f2303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object f2305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final androidx.dynamicanimation.animation.d f2306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f2307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f2308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f2309h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f2310i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f2311j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ArrayList f2312k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ArrayList f2313l;

    static class a extends s {
        a(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getY();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setY(f10);
        }
    }

    static class b extends s {
        b(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return m0.I(view);
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            m0.G0(view, f10);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.c$c, reason: collision with other inner class name */
    static class C0023c extends s {
        C0023c(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getAlpha();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setAlpha(f10);
        }
    }

    static class d extends s {
        d(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getScrollX();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setScrollX((int) f10);
        }
    }

    static class e extends s {
        e(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getScrollY();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setScrollY((int) f10);
        }
    }

    class f extends androidx.dynamicanimation.animation.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.dynamicanimation.animation.e f2314a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, androidx.dynamicanimation.animation.e eVar) {
            super(str);
            this.f2314a = eVar;
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(Object obj) {
            return this.f2314a.a();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(Object obj, float f10) {
            this.f2314a.b(f10);
        }
    }

    static class g extends s {
        g(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getTranslationX();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setTranslationX(f10);
        }
    }

    static class h extends s {
        h(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getTranslationY();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setTranslationY(f10);
        }
    }

    static class i extends s {
        i(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return m0.F(view);
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            m0.E0(view, f10);
        }
    }

    static class j extends s {
        j(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getScaleX();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setScaleX(f10);
        }
    }

    static class k extends s {
        k(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getScaleY();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setScaleY(f10);
        }
    }

    static class l extends s {
        l(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getRotation();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setRotation(f10);
        }
    }

    static class m extends s {
        m(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getRotationX();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setRotationX(f10);
        }
    }

    static class n extends s {
        n(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getRotationY();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setRotationY(f10);
        }
    }

    static class o extends s {
        o(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(View view) {
            return view.getX();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(View view, float f10) {
            view.setX(f10);
        }
    }

    static class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f2316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f2317b;

        p() {
        }
    }

    public interface q {
        void onAnimationEnd(c cVar, boolean z10, float f10, float f11);
    }

    public interface r {
        void onAnimationUpdate(c cVar, float f10, float f11);
    }

    public static abstract class s extends androidx.dynamicanimation.animation.d {
        /* synthetic */ s(String str, g gVar) {
            this(str);
        }

        private s(String str) {
            super(str);
        }
    }

    c(androidx.dynamicanimation.animation.e eVar) {
        this.f2302a = 0.0f;
        this.f2303b = Float.MAX_VALUE;
        this.f2304c = false;
        this.f2307f = false;
        this.f2308g = Float.MAX_VALUE;
        this.f2309h = -Float.MAX_VALUE;
        this.f2310i = 0L;
        this.f2312k = new ArrayList();
        this.f2313l = new ArrayList();
        this.f2305d = null;
        this.f2306e = new f("FloatValueHolder", eVar);
        this.f2311j = 1.0f;
    }

    private void d(boolean z10) {
        this.f2307f = false;
        androidx.dynamicanimation.animation.a.d().g(this);
        this.f2310i = 0L;
        this.f2304c = false;
        for (int i10 = 0; i10 < this.f2312k.size(); i10++) {
            if (this.f2312k.get(i10) != null) {
                ((q) this.f2312k.get(i10)).onAnimationEnd(this, z10, this.f2303b, this.f2302a);
            }
        }
        h(this.f2312k);
    }

    private float e() {
        return this.f2306e.getValue(this.f2305d);
    }

    private static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private void q() {
        if (this.f2307f) {
            return;
        }
        this.f2307f = true;
        if (!this.f2304c) {
            this.f2303b = e();
        }
        float f10 = this.f2303b;
        if (f10 > this.f2308g || f10 < this.f2309h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        androidx.dynamicanimation.animation.a.d().a(this, 0L);
    }

    public c a(q qVar) {
        if (!this.f2312k.contains(qVar)) {
            this.f2312k.add(qVar);
        }
        return this;
    }

    public c b(r rVar) {
        if (g()) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        if (!this.f2313l.contains(rVar)) {
            this.f2313l.add(rVar);
        }
        return this;
    }

    public void c() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.f2307f) {
            d(true);
        }
    }

    @Override // androidx.dynamicanimation.animation.a.b
    public boolean doAnimationFrame(long j10) {
        long j11 = this.f2310i;
        if (j11 == 0) {
            this.f2310i = j10;
            l(this.f2303b);
            return false;
        }
        this.f2310i = j10;
        boolean zR = r(j10 - j11);
        float fMin = Math.min(this.f2303b, this.f2308g);
        this.f2303b = fMin;
        float fMax = Math.max(fMin, this.f2309h);
        this.f2303b = fMax;
        l(fMax);
        if (zR) {
            d(false);
        }
        return zR;
    }

    float f() {
        return this.f2311j * 0.75f;
    }

    public boolean g() {
        return this.f2307f;
    }

    public c i(float f10) {
        this.f2308g = f10;
        return this;
    }

    public c j(float f10) {
        this.f2309h = f10;
        return this;
    }

    public c k(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.f2311j = f10;
        o(f10 * 0.75f);
        return this;
    }

    void l(float f10) {
        this.f2306e.setValue(this.f2305d, f10);
        for (int i10 = 0; i10 < this.f2313l.size(); i10++) {
            if (this.f2313l.get(i10) != null) {
                ((r) this.f2313l.get(i10)).onAnimationUpdate(this, this.f2303b, this.f2302a);
            }
        }
        h(this.f2313l);
    }

    public c m(float f10) {
        this.f2303b = f10;
        this.f2304c = true;
        return this;
    }

    public c n(float f10) {
        this.f2302a = f10;
        return this;
    }

    abstract void o(float f10);

    public void p() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f2307f) {
            return;
        }
        q();
    }

    abstract boolean r(long j10);

    c(Object obj, androidx.dynamicanimation.animation.d dVar) {
        this.f2302a = 0.0f;
        this.f2303b = Float.MAX_VALUE;
        this.f2304c = false;
        this.f2307f = false;
        this.f2308g = Float.MAX_VALUE;
        this.f2309h = -Float.MAX_VALUE;
        this.f2310i = 0L;
        this.f2312k = new ArrayList();
        this.f2313l = new ArrayList();
        this.f2305d = obj;
        this.f2306e = dVar;
        if (dVar != f2293r && dVar != f2294s && dVar != f2295t) {
            if (dVar == f2299x) {
                this.f2311j = 0.00390625f;
                return;
            } else if (dVar != f2291p && dVar != f2292q) {
                this.f2311j = 1.0f;
                return;
            } else {
                this.f2311j = 0.00390625f;
                return;
            }
        }
        this.f2311j = 0.1f;
    }
}
