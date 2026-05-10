package androidx.core.view;

import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f2126a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final u.e f2127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u.e f2128b;

        private a(WindowInsetsAnimation.Bounds bounds) {
            this.f2127a = c.g(bounds);
            this.f2128b = c.f(bounds);
        }

        public static a d(WindowInsetsAnimation.Bounds bounds) {
            return new a(bounds);
        }

        public u.e a() {
            return this.f2127a;
        }

        public u.e b() {
            return this.f2128b;
        }

        public WindowInsetsAnimation.Bounds c() {
            return c.e(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.f2127a + " upper=" + this.f2128b + "}";
        }
    }

    public static abstract class b {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;
        a1 mDispachedInsets;
        private final int mDispatchMode;

        public b(int i10) {
            this.mDispatchMode = i10;
        }

        public final int getDispatchMode() {
            return this.mDispatchMode;
        }

        public void onEnd(z0 z0Var) {
        }

        public void onPrepare(z0 z0Var) {
        }

        public abstract a1 onProgress(a1 a1Var, List list);

        public a onStart(z0 z0Var, a aVar) {
            return aVar;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Interpolator f2135b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f2136c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f2137d = 1.0f;

        d(int i10, Interpolator interpolator, long j10) {
            this.f2134a = i10;
            this.f2135b = interpolator;
            this.f2136c = j10;
        }

        public abstract float a();

        public abstract float b();

        public abstract int c();

        public abstract void d(float f10);
    }

    public z0(int i10, Interpolator interpolator, long j10) {
        this.f2126a = new c(i10, interpolator, j10);
    }

    static void d(View view, b bVar) {
        c.h(view, bVar);
    }

    static z0 f(WindowInsetsAnimation windowInsetsAnimation) {
        return new z0(windowInsetsAnimation);
    }

    public float a() {
        return this.f2126a.a();
    }

    public float b() {
        return this.f2126a.b();
    }

    public int c() {
        return this.f2126a.c();
    }

    public void e(float f10) {
        this.f2126a.d(f10);
    }

    private static class c extends d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final WindowInsetsAnimation f2129e;

        private static class a extends WindowInsetsAnimation.Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final b f2130a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private List f2131b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private ArrayList f2132c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final HashMap f2133d;

            a(b bVar) {
                super(bVar.getDispatchMode());
                this.f2133d = new HashMap();
                this.f2130a = bVar;
            }

            private z0 a(WindowInsetsAnimation windowInsetsAnimation) {
                z0 z0Var = (z0) this.f2133d.get(windowInsetsAnimation);
                if (z0Var != null) {
                    return z0Var;
                }
                z0 z0VarF = z0.f(windowInsetsAnimation);
                this.f2133d.put(windowInsetsAnimation, z0VarF);
                return z0VarF;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.f2130a.onEnd(a(windowInsetsAnimation));
                this.f2133d.remove(windowInsetsAnimation);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.f2130a.onPrepare(a(windowInsetsAnimation));
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsets onProgress(WindowInsets windowInsets, List list) {
                ArrayList arrayList = this.f2132c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.f2132c = arrayList2;
                    this.f2131b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(size);
                    z0 z0VarA = a(windowInsetsAnimation);
                    z0VarA.e(windowInsetsAnimation.getFraction());
                    this.f2132c.add(z0VarA);
                }
                return this.f2130a.onProgress(a1.y(windowInsets), this.f2131b).x();
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                return this.f2130a.onStart(a(windowInsetsAnimation), a.d(bounds)).c();
            }
        }

        c(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f2129e = windowInsetsAnimation;
        }

        public static WindowInsetsAnimation.Bounds e(a aVar) {
            return new WindowInsetsAnimation.Bounds(aVar.a().e(), aVar.b().e());
        }

        public static u.e f(WindowInsetsAnimation.Bounds bounds) {
            return u.e.d(bounds.getUpperBound());
        }

        public static u.e g(WindowInsetsAnimation.Bounds bounds) {
            return u.e.d(bounds.getLowerBound());
        }

        public static void h(View view, b bVar) {
            view.setWindowInsetsAnimationCallback(bVar != null ? new a(bVar) : null);
        }

        @Override // androidx.core.view.z0.d
        public float a() {
            return this.f2129e.getAlpha();
        }

        @Override // androidx.core.view.z0.d
        public float b() {
            return this.f2129e.getInterpolatedFraction();
        }

        @Override // androidx.core.view.z0.d
        public int c() {
            return this.f2129e.getTypeMask();
        }

        @Override // androidx.core.view.z0.d
        public void d(float f10) {
            this.f2129e.setFraction(f10);
        }

        c(int i10, Interpolator interpolator, long j10) {
            this(new WindowInsetsAnimation(i10, interpolator, j10));
        }
    }

    private z0(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        this.f2126a = new c(windowInsetsAnimation);
    }
}
