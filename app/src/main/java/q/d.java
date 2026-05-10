package q;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends m.j {

    static class a extends d {
        a() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setAlpha(a(f10));
        }
    }

    public static class b extends d {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f15259f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        SparseArray f15260g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float[] f15261h;

        public b(String str, SparseArray sparseArray) {
            this.f15259f = str.split(",")[1];
            this.f15260g = sparseArray;
        }

        @Override // m.j
        public void c(int i10, float f10) {
            throw new RuntimeException("call of custom attribute setPoint");
        }

        @Override // m.j
        public void e(int i10) {
            int size = this.f15260g.size();
            int iH = ((androidx.constraintlayout.widget.a) this.f15260g.valueAt(0)).h();
            double[] dArr = new double[size];
            this.f15261h = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iH);
            for (int i11 = 0; i11 < size; i11++) {
                int iKeyAt = this.f15260g.keyAt(i11);
                androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f15260g.valueAt(i11);
                dArr[i11] = ((double) iKeyAt) * 0.01d;
                aVar.f(this.f15261h);
                int i12 = 0;
                while (true) {
                    if (i12 < this.f15261h.length) {
                        dArr2[i11][i12] = r6[i12];
                        i12++;
                    }
                }
            }
            this.f13757a = m.b.a(i10, dArr, dArr2);
        }

        @Override // q.d
        public void h(View view, float f10) {
            this.f13757a.e(f10, this.f15261h);
            q.a.b((androidx.constraintlayout.widget.a) this.f15260g.valueAt(0), view, this.f15261h);
        }

        public void i(int i10, androidx.constraintlayout.widget.a aVar) {
            this.f15260g.append(i10, aVar);
        }
    }

    static class c extends d {
        c() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setElevation(a(f10));
        }
    }

    /* JADX INFO: renamed from: q.d$d, reason: collision with other inner class name */
    public static class C0207d extends d {
        @Override // q.d
        public void h(View view, float f10) {
        }

        public void i(View view, float f10, double d10, double d11) {
            view.setRotation(a(f10) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }
    }

    static class e extends d {
        e() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setPivotX(a(f10));
        }
    }

    static class f extends d {
        f() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setPivotY(a(f10));
        }
    }

    static class g extends d {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f15262f = false;

        g() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f10));
                return;
            }
            if (this.f15262f) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f15262f = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f10)));
                } catch (IllegalAccessException e10) {
                    Log.e("ViewSpline", "unable to setProgress", e10);
                } catch (InvocationTargetException e11) {
                    Log.e("ViewSpline", "unable to setProgress", e11);
                }
            }
        }
    }

    static class h extends d {
        h() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setRotation(a(f10));
        }
    }

    static class i extends d {
        i() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setRotationX(a(f10));
        }
    }

    static class j extends d {
        j() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setRotationY(a(f10));
        }
    }

    static class k extends d {
        k() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setScaleX(a(f10));
        }
    }

    static class l extends d {
        l() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setScaleY(a(f10));
        }
    }

    static class m extends d {
        m() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setTranslationX(a(f10));
        }
    }

    static class n extends d {
        n() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setTranslationY(a(f10));
        }
    }

    static class o extends d {
        o() {
        }

        @Override // q.d
        public void h(View view, float f10) {
            view.setTranslationZ(a(f10));
        }
    }

    public static d f(String str, SparseArray sparseArray) {
        return new b(str, sparseArray);
    }

    public static d g(String str) {
        str.hashCode();
        switch (str) {
        }
        return new a();
    }

    public abstract void h(View view, float f10);
}
