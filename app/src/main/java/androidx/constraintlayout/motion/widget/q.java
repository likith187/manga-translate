package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class q {
    private static final float[][] G = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] H = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1489r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f1490s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final MotionLayout f1491t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1472a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1473b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1474c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1475d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1476e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1477f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f1478g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f1479h = 0.5f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f1480i = 0.5f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f1481j = 0.5f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1482k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f1483l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f1484m = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f1485n = 1.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f1486o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f1487p = new float[2];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int[] f1488q = new int[2];

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f1492u = 4.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f1493v = 1.2f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f1494w = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f1495x = 1.0f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f1496y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f1497z = 10.0f;
    private float A = 10.0f;
    private float B = 1.0f;
    private float C = Float.NaN;
    private float D = Float.NaN;
    private int E = 0;
    private int F = 0;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    class b implements NestedScrollView.e {
        b() {
        }

        @Override // androidx.core.widget.NestedScrollView.e
        public void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
        }
    }

    q(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f1491t = motionLayout;
        c(context, Xml.asAttributeSet(xmlPullParser));
    }

    private void b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            if (index == R$styleable.OnSwipe_touchAnchorId) {
                this.f1475d = typedArray.getResourceId(index, this.f1475d);
            } else if (index == R$styleable.OnSwipe_touchAnchorSide) {
                int i11 = typedArray.getInt(index, this.f1472a);
                this.f1472a = i11;
                float[] fArr = G[i11];
                this.f1479h = fArr[0];
                this.f1478g = fArr[1];
            } else if (index == R$styleable.OnSwipe_dragDirection) {
                int i12 = typedArray.getInt(index, this.f1473b);
                this.f1473b = i12;
                float[][] fArr2 = H;
                if (i12 < fArr2.length) {
                    float[] fArr3 = fArr2[i12];
                    this.f1484m = fArr3[0];
                    this.f1485n = fArr3[1];
                } else {
                    this.f1485n = Float.NaN;
                    this.f1484m = Float.NaN;
                    this.f1483l = true;
                }
            } else if (index == R$styleable.OnSwipe_maxVelocity) {
                this.f1492u = typedArray.getFloat(index, this.f1492u);
            } else if (index == R$styleable.OnSwipe_maxAcceleration) {
                this.f1493v = typedArray.getFloat(index, this.f1493v);
            } else if (index == R$styleable.OnSwipe_moveWhenScrollAtTop) {
                this.f1494w = typedArray.getBoolean(index, this.f1494w);
            } else if (index == R$styleable.OnSwipe_dragScale) {
                this.f1495x = typedArray.getFloat(index, this.f1495x);
            } else if (index == R$styleable.OnSwipe_dragThreshold) {
                this.f1497z = typedArray.getFloat(index, this.f1497z);
            } else if (index == R$styleable.OnSwipe_touchRegionId) {
                this.f1476e = typedArray.getResourceId(index, this.f1476e);
            } else if (index == R$styleable.OnSwipe_onTouchUp) {
                this.f1474c = typedArray.getInt(index, this.f1474c);
            } else if (index == R$styleable.OnSwipe_nestedScrollFlags) {
                this.f1496y = typedArray.getInteger(index, 0);
            } else if (index == R$styleable.OnSwipe_limitBoundsTo) {
                this.f1477f = typedArray.getResourceId(index, 0);
            } else if (index == R$styleable.OnSwipe_rotationCenterId) {
                this.f1482k = typedArray.getResourceId(index, this.f1482k);
            } else if (index == R$styleable.OnSwipe_springDamping) {
                this.A = typedArray.getFloat(index, this.A);
            } else if (index == R$styleable.OnSwipe_springMass) {
                this.B = typedArray.getFloat(index, this.B);
            } else if (index == R$styleable.OnSwipe_springStiffness) {
                this.C = typedArray.getFloat(index, this.C);
            } else if (index == R$styleable.OnSwipe_springStopThreshold) {
                this.D = typedArray.getFloat(index, this.D);
            } else if (index == R$styleable.OnSwipe_springBoundary) {
                this.E = typedArray.getInt(index, this.E);
            } else if (index == R$styleable.OnSwipe_autoCompleteMode) {
                this.F = typedArray.getInt(index, this.F);
            }
        }
    }

    private void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.OnSwipe);
        b(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    void A() {
        View viewFindViewById;
        int i10 = this.f1475d;
        if (i10 != -1) {
            viewFindViewById = this.f1491t.findViewById(i10);
            if (viewFindViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + androidx.constraintlayout.motion.widget.a.c(this.f1491t.getContext(), this.f1475d));
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new a());
            nestedScrollView.setOnScrollChangeListener(new b());
        }
    }

    float a(float f10, float f11) {
        return (f10 * this.f1484m) + (f11 * this.f1485n);
    }

    public int d() {
        return this.F;
    }

    public int e() {
        return this.f1496y;
    }

    RectF f(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i10 = this.f1477f;
        if (i10 == -1 || (viewFindViewById = viewGroup.findViewById(i10)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    float g() {
        return this.f1493v;
    }

    public float h() {
        return this.f1492u;
    }

    boolean i() {
        return this.f1494w;
    }

    float j(float f10, float f11) {
        this.f1491t.S(this.f1475d, this.f1491t.getProgress(), this.f1479h, this.f1478g, this.f1487p);
        float f12 = this.f1484m;
        if (f12 != 0.0f) {
            float[] fArr = this.f1487p;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            return (f10 * f12) / fArr[0];
        }
        float[] fArr2 = this.f1487p;
        if (fArr2[1] == 0.0f) {
            fArr2[1] = 1.0E-7f;
        }
        return (f11 * this.f1485n) / fArr2[1];
    }

    public int k() {
        return this.E;
    }

    public float l() {
        return this.A;
    }

    public float m() {
        return this.B;
    }

    public float n() {
        return this.C;
    }

    public float o() {
        return this.D;
    }

    RectF p(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i10 = this.f1476e;
        if (i10 == -1 || (viewFindViewById = viewGroup.findViewById(i10)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    int q() {
        return this.f1476e;
    }

    boolean r() {
        return this.f1486o;
    }

    void s(MotionEvent motionEvent, MotionLayout.g gVar, int i10, p pVar) {
        int i11;
        if (this.f1483l) {
            t(motionEvent, gVar, i10, pVar);
            return;
        }
        gVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1489r = motionEvent.getRawX();
            this.f1490s = motionEvent.getRawY();
            this.f1486o = false;
            return;
        }
        if (action == 1) {
            this.f1486o = false;
            gVar.e(1000);
            float fC = gVar.c();
            float fB = gVar.b();
            float progress = this.f1491t.getProgress();
            int i12 = this.f1475d;
            if (i12 != -1) {
                this.f1491t.S(i12, progress, this.f1479h, this.f1478g, this.f1487p);
            } else {
                float fMin = Math.min(this.f1491t.getWidth(), this.f1491t.getHeight());
                float[] fArr = this.f1487p;
                fArr[1] = this.f1485n * fMin;
                fArr[0] = fMin * this.f1484m;
            }
            float f10 = this.f1484m;
            float[] fArr2 = this.f1487p;
            float fAbs = f10 != 0.0f ? fC / fArr2[0] : fB / fArr2[1];
            float f11 = !Float.isNaN(fAbs) ? (fAbs / 3.0f) + progress : progress;
            if (f11 == 0.0f || f11 == 1.0f || (i11 = this.f1474c) == 3) {
                if (0.0f >= f11 || 1.0f <= f11) {
                    this.f1491t.setState(MotionLayout.k.FINISHED);
                    return;
                }
                return;
            }
            float f12 = ((double) f11) < 0.5d ? 0.0f : 1.0f;
            if (i11 == 6) {
                if (progress + fAbs < 0.0f) {
                    fAbs = Math.abs(fAbs);
                }
                f12 = 1.0f;
            }
            if (this.f1474c == 7) {
                if (progress + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f12 = 0.0f;
            }
            this.f1491t.i0(this.f1474c, f12, fAbs);
            if (0.0f >= progress || 1.0f <= progress) {
                this.f1491t.setState(MotionLayout.k.FINISHED);
                return;
            }
            return;
        }
        if (action != 2) {
            return;
        }
        float rawY = motionEvent.getRawY() - this.f1490s;
        float rawX = motionEvent.getRawX() - this.f1489r;
        if (Math.abs((this.f1484m * rawX) + (this.f1485n * rawY)) > this.f1497z || this.f1486o) {
            float progress2 = this.f1491t.getProgress();
            if (!this.f1486o) {
                this.f1486o = true;
                this.f1491t.setProgress(progress2);
            }
            int i13 = this.f1475d;
            if (i13 != -1) {
                this.f1491t.S(i13, progress2, this.f1479h, this.f1478g, this.f1487p);
            } else {
                float fMin2 = Math.min(this.f1491t.getWidth(), this.f1491t.getHeight());
                float[] fArr3 = this.f1487p;
                fArr3[1] = this.f1485n * fMin2;
                fArr3[0] = fMin2 * this.f1484m;
            }
            float f13 = this.f1484m;
            float[] fArr4 = this.f1487p;
            if (Math.abs(((f13 * fArr4[0]) + (this.f1485n * fArr4[1])) * this.f1495x) < 0.01d) {
                float[] fArr5 = this.f1487p;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            float fMax = Math.max(Math.min(progress2 + (this.f1484m != 0.0f ? rawX / this.f1487p[0] : rawY / this.f1487p[1]), 1.0f), 0.0f);
            if (this.f1474c == 6) {
                fMax = Math.max(fMax, 0.01f);
            }
            if (this.f1474c == 7) {
                fMax = Math.min(fMax, 0.99f);
            }
            float progress3 = this.f1491t.getProgress();
            if (fMax != progress3) {
                if (progress3 == 0.0f || progress3 == 1.0f) {
                    this.f1491t.L(progress3 == 0.0f);
                }
                this.f1491t.setProgress(fMax);
                gVar.e(1000);
                this.f1491t.f1163f = this.f1484m != 0.0f ? gVar.c() / this.f1487p[0] : gVar.b() / this.f1487p[1];
            } else {
                this.f1491t.f1163f = 0.0f;
            }
            this.f1489r = motionEvent.getRawX();
            this.f1490s = motionEvent.getRawY();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void t(android.view.MotionEvent r24, androidx.constraintlayout.motion.widget.MotionLayout.g r25, int r26, androidx.constraintlayout.motion.widget.p r27) {
        /*
            Method dump skipped, instruction units count: 834
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.q.t(android.view.MotionEvent, androidx.constraintlayout.motion.widget.MotionLayout$g, int, androidx.constraintlayout.motion.widget.p):void");
    }

    public String toString() {
        if (Float.isNaN(this.f1484m)) {
            return "rotation";
        }
        return this.f1484m + " , " + this.f1485n;
    }

    void u(float f10, float f11) {
        float progress = this.f1491t.getProgress();
        if (!this.f1486o) {
            this.f1486o = true;
            this.f1491t.setProgress(progress);
        }
        this.f1491t.S(this.f1475d, progress, this.f1479h, this.f1478g, this.f1487p);
        float f12 = this.f1484m;
        float[] fArr = this.f1487p;
        if (Math.abs((f12 * fArr[0]) + (this.f1485n * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f1487p;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f13 = this.f1484m;
        float fMax = Math.max(Math.min(progress + (f13 != 0.0f ? (f10 * f13) / this.f1487p[0] : (f11 * this.f1485n) / this.f1487p[1]), 1.0f), 0.0f);
        if (fMax != this.f1491t.getProgress()) {
            this.f1491t.setProgress(fMax);
        }
    }

    void v(float f10, float f11) {
        int i10;
        this.f1486o = false;
        float progress = this.f1491t.getProgress();
        this.f1491t.S(this.f1475d, progress, this.f1479h, this.f1478g, this.f1487p);
        float f12 = this.f1484m;
        float[] fArr = this.f1487p;
        float f13 = f12 != 0.0f ? (f10 * f12) / fArr[0] : (f11 * this.f1485n) / fArr[1];
        if (!Float.isNaN(f13)) {
            progress += f13 / 3.0f;
        }
        if (progress == 0.0f || progress == 1.0f || (i10 = this.f1474c) == 3) {
            return;
        }
        this.f1491t.i0(i10, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f13);
    }

    void w(float f10, float f11) {
        this.f1489r = f10;
        this.f1490s = f11;
    }

    public void x(boolean z10) {
        if (z10) {
            float[][] fArr = H;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = G;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = H;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = G;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[] fArr5 = G[this.f1472a];
        this.f1479h = fArr5[0];
        this.f1478g = fArr5[1];
        int i10 = this.f1473b;
        float[][] fArr6 = H;
        if (i10 >= fArr6.length) {
            return;
        }
        float[] fArr7 = fArr6[i10];
        this.f1484m = fArr7[0];
        this.f1485n = fArr7[1];
    }

    public void y(int i10) {
        this.f1474c = i10;
    }

    void z(float f10, float f11) {
        this.f1489r = f10;
        this.f1490s = f11;
        this.f1486o = false;
    }
}
