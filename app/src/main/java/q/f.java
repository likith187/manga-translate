package q;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import m.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends o {

    static class a extends f {
        a() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setAlpha(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    public static class b extends f {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        String f15263l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        SparseArray f15264m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        SparseArray f15265n = new SparseArray();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        float[] f15266o;

        public b(String str, SparseArray sparseArray) {
            this.f15263l = str.split(",")[1];
            this.f15264m = sparseArray;
        }

        @Override // m.o
        public void b(int i10, float f10, float f11, int i11, float f12) {
            throw new RuntimeException("Wrong call for custom attribute");
        }

        @Override // m.o
        public void e(int i10) {
            int size = this.f15264m.size();
            int iH = ((androidx.constraintlayout.widget.a) this.f15264m.valueAt(0)).h();
            double[] dArr = new double[size];
            int i11 = iH + 2;
            this.f15266o = new float[i11];
            this.f13797g = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i11);
            for (int i12 = 0; i12 < size; i12++) {
                int iKeyAt = this.f15264m.keyAt(i12);
                androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f15264m.valueAt(i12);
                float[] fArr = (float[]) this.f15265n.valueAt(i12);
                dArr[i12] = ((double) iKeyAt) * 0.01d;
                aVar.f(this.f15266o);
                int i13 = 0;
                while (true) {
                    if (i13 < this.f15266o.length) {
                        dArr2[i12][i13] = r8[i13];
                        i13++;
                    }
                }
                double[] dArr3 = dArr2[i12];
                dArr3[iH] = fArr[0];
                dArr3[iH + 1] = fArr[1];
            }
            this.f13791a = m.b.a(i10, dArr, dArr2);
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            this.f13791a.e(f10, this.f15266o);
            float[] fArr = this.f15266o;
            float f11 = fArr[fArr.length - 2];
            float f12 = fArr[fArr.length - 1];
            long j11 = j10 - this.f13799i;
            if (Float.isNaN(this.f13800j)) {
                float fA = dVar.a(view, this.f15263l, 0);
                this.f13800j = fA;
                if (Float.isNaN(fA)) {
                    this.f13800j = 0.0f;
                }
            }
            float f13 = (float) ((((double) this.f13800j) + ((j11 * 1.0E-9d) * ((double) f11))) % 1.0d);
            this.f13800j = f13;
            this.f13799i = j10;
            float fA2 = a(f13);
            this.f13798h = false;
            int i10 = 0;
            while (true) {
                float[] fArr2 = this.f13797g;
                if (i10 >= fArr2.length) {
                    break;
                }
                boolean z10 = this.f13798h;
                float f14 = this.f15266o[i10];
                this.f13798h = z10 | (((double) f14) != 0.0d);
                fArr2[i10] = (f14 * fA2) + f12;
                i10++;
            }
            q.a.b((androidx.constraintlayout.widget.a) this.f15264m.valueAt(0), view, this.f13797g);
            if (f11 != 0.0f) {
                this.f13798h = true;
            }
            return this.f13798h;
        }

        public void j(int i10, androidx.constraintlayout.widget.a aVar, float f10, int i11, float f11) {
            this.f15264m.append(i10, aVar);
            this.f15265n.append(i10, new float[]{f10, f11});
            this.f13792b = Math.max(this.f13792b, i11);
        }
    }

    static class c extends f {
        c() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setElevation(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    public static class d extends f {
        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            return this.f13798h;
        }

        public boolean j(View view, m.d dVar, float f10, long j10, double d10, double d11) {
            view.setRotation(f(f10, j10, view, dVar) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
            return this.f13798h;
        }
    }

    static class e extends f {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f15267l = false;

        e() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(f(f10, j10, view, dVar));
            } else {
                if (this.f15267l) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f15267l = true;
                    method = null;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(f(f10, j10, view, dVar)));
                    } catch (IllegalAccessException e10) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e10);
                    } catch (InvocationTargetException e11) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e11);
                    }
                }
            }
            return this.f13798h;
        }
    }

    /* JADX INFO: renamed from: q.f$f, reason: collision with other inner class name */
    static class C0208f extends f {
        C0208f() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setRotation(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    static class g extends f {
        g() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setRotationX(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    static class h extends f {
        h() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setRotationY(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    static class i extends f {
        i() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setScaleX(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    static class j extends f {
        j() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setScaleY(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    static class k extends f {
        k() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setTranslationX(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    static class l extends f {
        l() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setTranslationY(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    static class m extends f {
        m() {
        }

        @Override // q.f
        public boolean i(View view, float f10, long j10, m.d dVar) {
            view.setTranslationZ(f(f10, j10, view, dVar));
            return this.f13798h;
        }
    }

    public static f g(String str, SparseArray sparseArray) {
        return new b(str, sparseArray);
    }

    public static f h(String str, long j10) {
        f gVar;
        str.hashCode();
        switch (str) {
            case "rotationX":
                gVar = new g();
                break;
            case "rotationY":
                gVar = new h();
                break;
            case "translationX":
                gVar = new k();
                break;
            case "translationY":
                gVar = new l();
                break;
            case "translationZ":
                gVar = new m();
                break;
            case "progress":
                gVar = new e();
                break;
            case "scaleX":
                gVar = new i();
                break;
            case "scaleY":
                gVar = new j();
                break;
            case "rotation":
                gVar = new C0208f();
                break;
            case "elevation":
                gVar = new c();
                break;
            case "transitionPathRotate":
                gVar = new d();
                break;
            case "alpha":
                gVar = new a();
                break;
            default:
                return null;
        }
        gVar.c(j10);
        return gVar;
    }

    public float f(float f10, long j10, View view, m.d dVar) {
        this.f13791a.e(f10, this.f13797g);
        float[] fArr = this.f13797g;
        float f11 = fArr[1];
        if (f11 == 0.0f) {
            this.f13798h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f13800j)) {
            float fA = dVar.a(view, this.f13796f, 0);
            this.f13800j = fA;
            if (Float.isNaN(fA)) {
                this.f13800j = 0.0f;
            }
        }
        float f12 = (float) ((((double) this.f13800j) + (((j10 - this.f13799i) * 1.0E-9d) * ((double) f11))) % 1.0d);
        this.f13800j = f12;
        dVar.b(view, this.f13796f, 0, f12);
        this.f13799i = j10;
        float f13 = this.f13797g[0];
        float fA2 = (a(this.f13800j) * f13) + this.f13797g[2];
        this.f13798h = (f13 == 0.0f && f11 == 0.0f) ? false : true;
        return fA2;
    }

    public abstract boolean i(View view, float f10, long j10, m.d dVar);
}
