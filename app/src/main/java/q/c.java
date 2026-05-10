package q;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends m.e {

    static class a extends c {
        a() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setAlpha(a(f10));
        }
    }

    static class b extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float[] f15256h = new float[1];

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        protected androidx.constraintlayout.widget.a f15257i;

        b() {
        }

        @Override // m.e
        protected void c(Object obj) {
            this.f15257i = (androidx.constraintlayout.widget.a) obj;
        }

        @Override // q.c
        public void j(View view, float f10) {
            this.f15256h[0] = a(f10);
            q.a.b(this.f15257i, view, this.f15256h);
        }
    }

    /* JADX INFO: renamed from: q.c$c, reason: collision with other inner class name */
    static class C0206c extends c {
        C0206c() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setElevation(a(f10));
        }
    }

    public static class d extends c {
        @Override // q.c
        public void j(View view, float f10) {
        }

        public void k(View view, float f10, double d10, double d11) {
            view.setRotation(a(f10) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }
    }

    static class e extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f15258h = false;

        e() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f10));
                return;
            }
            if (this.f15258h) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f15258h = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f10)));
                } catch (IllegalAccessException e10) {
                    Log.e("ViewOscillator", "unable to setProgress", e10);
                } catch (InvocationTargetException e11) {
                    Log.e("ViewOscillator", "unable to setProgress", e11);
                }
            }
        }
    }

    static class f extends c {
        f() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setRotation(a(f10));
        }
    }

    static class g extends c {
        g() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setRotationX(a(f10));
        }
    }

    static class h extends c {
        h() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setRotationY(a(f10));
        }
    }

    static class i extends c {
        i() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setScaleX(a(f10));
        }
    }

    static class j extends c {
        j() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setScaleY(a(f10));
        }
    }

    static class k extends c {
        k() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setTranslationX(a(f10));
        }
    }

    static class l extends c {
        l() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setTranslationY(a(f10));
        }
    }

    static class m extends c {
        m() {
        }

        @Override // q.c
        public void j(View view, float f10) {
            view.setTranslationZ(a(f10));
        }
    }

    public static c i(String str) {
        if (str.startsWith("CUSTOM")) {
            return new b();
        }
        switch (str) {
            case "rotationX":
                return new g();
            case "rotationY":
                return new h();
            case "translationX":
                return new k();
            case "translationY":
                return new l();
            case "translationZ":
                return new m();
            case "progress":
                return new e();
            case "scaleX":
                return new i();
            case "scaleY":
                return new j();
            case "waveVariesBy":
                return new a();
            case "rotation":
                return new f();
            case "elevation":
                return new C0206c();
            case "transitionPathRotate":
                return new d();
            case "alpha":
                return new a();
            case "waveOffset":
                return new a();
            default:
                return null;
        }
    }

    public abstract void j(View view, float f10);
}
