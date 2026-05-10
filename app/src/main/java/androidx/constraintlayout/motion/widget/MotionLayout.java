package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.p;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.view.y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements y {
    public static boolean H0;
    int A;
    k A0;
    e B;
    f B0;
    private boolean C;
    private boolean C0;
    private q.b D;
    private RectF D0;
    private d E;
    private View E0;
    private androidx.constraintlayout.motion.widget.b F;
    private Matrix F0;
    boolean G;
    ArrayList G0;
    int H;
    int I;
    int J;
    int K;
    boolean L;
    float M;
    float N;
    long O;
    float P;
    private boolean Q;
    private ArrayList R;
    private ArrayList S;
    private ArrayList T;
    private CopyOnWriteArrayList U;
    private int V;
    private long W;

    /* JADX INFO: renamed from: a */
    p f1155a;

    /* JADX INFO: renamed from: a0 */
    private float f1156a0;

    /* JADX INFO: renamed from: b */
    Interpolator f1157b;

    /* JADX INFO: renamed from: b0 */
    private int f1158b0;

    /* JADX INFO: renamed from: c */
    Interpolator f1159c;

    /* JADX INFO: renamed from: c0 */
    private float f1160c0;

    /* JADX INFO: renamed from: d0 */
    boolean f1161d0;

    /* JADX INFO: renamed from: e0 */
    protected boolean f1162e0;

    /* JADX INFO: renamed from: f */
    float f1163f;

    /* JADX INFO: renamed from: f0 */
    int f1164f0;

    /* JADX INFO: renamed from: g0 */
    int f1165g0;

    /* JADX INFO: renamed from: h */
    private int f1166h;

    /* JADX INFO: renamed from: h0 */
    int f1167h0;

    /* JADX INFO: renamed from: i */
    int f1168i;

    /* JADX INFO: renamed from: i0 */
    int f1169i0;

    /* JADX INFO: renamed from: j */
    private int f1170j;

    /* JADX INFO: renamed from: j0 */
    int f1171j0;

    /* JADX INFO: renamed from: k */
    private int f1172k;

    /* JADX INFO: renamed from: k0 */
    int f1173k0;

    /* JADX INFO: renamed from: l */
    private int f1174l;

    /* JADX INFO: renamed from: l0 */
    float f1175l0;

    /* JADX INFO: renamed from: m */
    private boolean f1176m;

    /* JADX INFO: renamed from: m0 */
    private m.d f1177m0;

    /* JADX INFO: renamed from: n */
    HashMap f1178n;

    /* JADX INFO: renamed from: n0 */
    private boolean f1179n0;

    /* JADX INFO: renamed from: o */
    private long f1180o;

    /* JADX INFO: renamed from: o0 */
    private i f1181o0;

    /* JADX INFO: renamed from: p */
    private float f1182p;

    /* JADX INFO: renamed from: p0 */
    private Runnable f1183p0;

    /* JADX INFO: renamed from: q */
    float f1184q;

    /* JADX INFO: renamed from: q0 */
    private int[] f1185q0;

    /* JADX INFO: renamed from: r */
    float f1186r;

    /* JADX INFO: renamed from: r0 */
    int f1187r0;

    /* JADX INFO: renamed from: s */
    private long f1188s;

    /* JADX INFO: renamed from: s0 */
    private boolean f1189s0;

    /* JADX INFO: renamed from: t */
    float f1190t;

    /* JADX INFO: renamed from: t0 */
    int f1191t0;

    /* JADX INFO: renamed from: u */
    private boolean f1192u;

    /* JADX INFO: renamed from: u0 */
    HashMap f1193u0;

    /* JADX INFO: renamed from: v */
    boolean f1194v;

    /* JADX INFO: renamed from: v0 */
    private int f1195v0;

    /* JADX INFO: renamed from: w */
    boolean f1196w;

    /* JADX INFO: renamed from: w0 */
    private int f1197w0;

    /* JADX INFO: renamed from: x */
    private j f1198x;

    /* JADX INFO: renamed from: x0 */
    private int f1199x0;

    /* JADX INFO: renamed from: y */
    private float f1200y;

    /* JADX INFO: renamed from: y0 */
    Rect f1201y0;

    /* JADX INFO: renamed from: z */
    private float f1202z;

    /* JADX INFO: renamed from: z0 */
    private boolean f1203z0;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MotionLayout.this.f1181o0.a();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f1205a;

        b(View view) {
            this.f1205a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1205a.setNestedScrollingEnabled(true);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MotionLayout.this.f1181o0.a();
        }
    }

    class d extends n {

        /* JADX INFO: renamed from: a */
        float f1208a = 0.0f;

        /* JADX INFO: renamed from: b */
        float f1209b = 0.0f;

        /* JADX INFO: renamed from: c */
        float f1210c;

        d() {
        }

        @Override // androidx.constraintlayout.motion.widget.n
        public float a() {
            return MotionLayout.this.f1163f;
        }

        public void b(float f10, float f11, float f12) {
            this.f1208a = f10;
            this.f1209b = f11;
            this.f1210c = f12;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11;
            float f12;
            float f13 = this.f1208a;
            if (f13 > 0.0f) {
                float f14 = this.f1210c;
                if (f13 / f14 < f10) {
                    f10 = f13 / f14;
                }
                MotionLayout.this.f1163f = f13 - (f14 * f10);
                f11 = (f13 * f10) - (((f14 * f10) * f10) / 2.0f);
                f12 = this.f1209b;
            } else {
                float f15 = this.f1210c;
                if ((-f13) / f15 < f10) {
                    f10 = (-f13) / f15;
                }
                MotionLayout.this.f1163f = (f15 * f10) + f13;
                f11 = (f13 * f10) + (((f15 * f10) * f10) / 2.0f);
                f12 = this.f1209b;
            }
            return f11 + f12;
        }
    }

    private class e {

        /* JADX INFO: renamed from: a */
        float[] f1212a;

        /* JADX INFO: renamed from: b */
        int[] f1213b;

        /* JADX INFO: renamed from: c */
        float[] f1214c;

        /* JADX INFO: renamed from: d */
        Path f1215d;

        /* JADX INFO: renamed from: e */
        Paint f1216e;

        /* JADX INFO: renamed from: f */
        Paint f1217f;

        /* JADX INFO: renamed from: g */
        Paint f1218g;

        /* JADX INFO: renamed from: h */
        Paint f1219h;

        /* JADX INFO: renamed from: i */
        Paint f1220i;

        /* JADX INFO: renamed from: j */
        private float[] f1221j;

        /* JADX INFO: renamed from: p */
        DashPathEffect f1227p;

        /* JADX INFO: renamed from: q */
        int f1228q;

        /* JADX INFO: renamed from: t */
        int f1231t;

        /* JADX INFO: renamed from: k */
        final int f1222k = -21965;

        /* JADX INFO: renamed from: l */
        final int f1223l = -2067046;

        /* JADX INFO: renamed from: m */
        final int f1224m = -13391360;

        /* JADX INFO: renamed from: n */
        final int f1225n = 1996488704;

        /* JADX INFO: renamed from: o */
        final int f1226o = 10;

        /* JADX INFO: renamed from: r */
        Rect f1229r = new Rect();

        /* JADX INFO: renamed from: s */
        boolean f1230s = false;

        e() {
            this.f1231t = 1;
            Paint paint = new Paint();
            this.f1216e = paint;
            paint.setAntiAlias(true);
            this.f1216e.setColor(-21965);
            this.f1216e.setStrokeWidth(2.0f);
            Paint paint2 = this.f1216e;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            Paint paint3 = new Paint();
            this.f1217f = paint3;
            paint3.setAntiAlias(true);
            this.f1217f.setColor(-2067046);
            this.f1217f.setStrokeWidth(2.0f);
            this.f1217f.setStyle(style);
            Paint paint4 = new Paint();
            this.f1218g = paint4;
            paint4.setAntiAlias(true);
            this.f1218g.setColor(-13391360);
            this.f1218g.setStrokeWidth(2.0f);
            this.f1218g.setStyle(style);
            Paint paint5 = new Paint();
            this.f1219h = paint5;
            paint5.setAntiAlias(true);
            this.f1219h.setColor(-13391360);
            this.f1219h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f1221j = new float[8];
            Paint paint6 = new Paint();
            this.f1220i = paint6;
            paint6.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.f1227p = dashPathEffect;
            this.f1218g.setPathEffect(dashPathEffect);
            this.f1214c = new float[100];
            this.f1213b = new int[50];
            if (this.f1230s) {
                this.f1216e.setStrokeWidth(8.0f);
                this.f1220i.setStrokeWidth(8.0f);
                this.f1217f.setStrokeWidth(8.0f);
                this.f1231t = 4;
            }
        }

        private void c(Canvas canvas) {
            canvas.drawLines(this.f1212a, this.f1216e);
        }

        private void d(Canvas canvas) {
            boolean z10 = false;
            boolean z11 = false;
            for (int i10 = 0; i10 < this.f1228q; i10++) {
                int i11 = this.f1213b[i10];
                if (i11 == 1) {
                    z10 = true;
                }
                if (i11 == 0) {
                    z11 = true;
                }
            }
            if (z10) {
                g(canvas);
            }
            if (z11) {
                e(canvas);
            }
        }

        private void e(Canvas canvas) {
            float[] fArr = this.f1212a;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f10, f12), Math.max(f11, f13), Math.max(f10, f12), Math.max(f11, f13), this.f1218g);
            canvas.drawLine(Math.min(f10, f12), Math.min(f11, f13), Math.min(f10, f12), Math.max(f11, f13), this.f1218g);
        }

        private void f(Canvas canvas, float f10, float f11) {
            float[] fArr = this.f1212a;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float fMin = Math.min(f12, f14);
            float fMax = Math.max(f13, f15);
            float fMin2 = f10 - Math.min(f12, f14);
            float fMax2 = Math.max(f13, f15) - f11;
            String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f14 - f12))) + 0.5d)) / 100.0f);
            l(str, this.f1219h);
            canvas.drawText(str, ((fMin2 / 2.0f) - (this.f1229r.width() / 2)) + fMin, f11 - 20.0f, this.f1219h);
            canvas.drawLine(f10, f11, Math.min(f12, f14), f11, this.f1218g);
            String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f15 - f13))) + 0.5d)) / 100.0f);
            l(str2, this.f1219h);
            canvas.drawText(str2, f10 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.f1229r.height() / 2)), this.f1219h);
            canvas.drawLine(f10, f11, f10, Math.max(f13, f15), this.f1218g);
        }

        private void g(Canvas canvas) {
            float[] fArr = this.f1212a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f1218g);
        }

        private void h(Canvas canvas, float f10, float f11) {
            float[] fArr = this.f1212a;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f12 - f14, f13 - f15);
            float f16 = f14 - f12;
            float f17 = f15 - f13;
            float f18 = (((f10 - f12) * f16) + ((f11 - f13) * f17)) / (fHypot * fHypot);
            float f19 = f12 + (f16 * f18);
            float f20 = f13 + (f18 * f17);
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f19, f20);
            float fHypot2 = (float) Math.hypot(f19 - f10, f20 - f11);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            l(str, this.f1219h);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.f1229r.width() / 2), -20.0f, this.f1219h);
            canvas.drawLine(f10, f11, f19, f20, this.f1218g);
        }

        private void i(Canvas canvas, float f10, float f11, int i10, int i11) {
            String str = "" + (((int) (((double) (((f10 - (i10 / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i10))) + 0.5d)) / 100.0f);
            l(str, this.f1219h);
            canvas.drawText(str, ((f10 / 2.0f) - (this.f1229r.width() / 2)) + 0.0f, f11 - 20.0f, this.f1219h);
            canvas.drawLine(f10, f11, Math.min(0.0f, 1.0f), f11, this.f1218g);
            String str2 = "" + (((int) (((double) (((f11 - (i11 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i11))) + 0.5d)) / 100.0f);
            l(str2, this.f1219h);
            canvas.drawText(str2, f10 + 5.0f, 0.0f - ((f11 / 2.0f) - (this.f1229r.height() / 2)), this.f1219h);
            canvas.drawLine(f10, f11, f10, Math.max(0.0f, 1.0f), this.f1218g);
        }

        private void j(Canvas canvas, m mVar) {
            this.f1215d.reset();
            for (int i10 = 0; i10 <= 50; i10++) {
                mVar.e(i10 / 50, this.f1221j, 0);
                Path path = this.f1215d;
                float[] fArr = this.f1221j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f1215d;
                float[] fArr2 = this.f1221j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f1215d;
                float[] fArr3 = this.f1221j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f1215d;
                float[] fArr4 = this.f1221j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f1215d.close();
            }
            this.f1216e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f1215d, this.f1216e);
            canvas.translate(-2.0f, -2.0f);
            this.f1216e.setColor(-65536);
            canvas.drawPath(this.f1215d, this.f1216e);
        }

        private void k(Canvas canvas, int i10, int i11, m mVar) {
            int width;
            int height;
            float f10;
            float f11;
            View view = mVar.f1383b;
            if (view != null) {
                width = view.getWidth();
                height = mVar.f1383b.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            for (int i12 = 1; i12 < i11 - 1; i12++) {
                if (i10 != 4 || this.f1213b[i12 - 1] != 0) {
                    float[] fArr = this.f1214c;
                    int i13 = i12 * 2;
                    float f12 = fArr[i13];
                    float f13 = fArr[i13 + 1];
                    this.f1215d.reset();
                    this.f1215d.moveTo(f12, f13 + 10.0f);
                    this.f1215d.lineTo(f12 + 10.0f, f13);
                    this.f1215d.lineTo(f12, f13 - 10.0f);
                    this.f1215d.lineTo(f12 - 10.0f, f13);
                    this.f1215d.close();
                    int i14 = i12 - 1;
                    mVar.q(i14);
                    if (i10 == 4) {
                        int i15 = this.f1213b[i14];
                        if (i15 == 1) {
                            h(canvas, f12 - 0.0f, f13 - 0.0f);
                        } else if (i15 == 0) {
                            f(canvas, f12 - 0.0f, f13 - 0.0f);
                        } else {
                            if (i15 == 2) {
                                f10 = f13;
                                f11 = f12;
                                i(canvas, f12 - 0.0f, f13 - 0.0f, width, height);
                            }
                            canvas.drawPath(this.f1215d, this.f1220i);
                        }
                        f10 = f13;
                        f11 = f12;
                        canvas.drawPath(this.f1215d, this.f1220i);
                    } else {
                        f10 = f13;
                        f11 = f12;
                    }
                    if (i10 == 2) {
                        h(canvas, f11 - 0.0f, f10 - 0.0f);
                    }
                    if (i10 == 3) {
                        f(canvas, f11 - 0.0f, f10 - 0.0f);
                    }
                    if (i10 == 6) {
                        i(canvas, f11 - 0.0f, f10 - 0.0f, width, height);
                    }
                    canvas.drawPath(this.f1215d, this.f1220i);
                }
            }
            float[] fArr2 = this.f1212a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f1217f);
                float[] fArr3 = this.f1212a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f1217f);
            }
        }

        public void a(Canvas canvas, HashMap map, int i10, int i11) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i11 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f1170j) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f1219h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f1216e);
            }
            for (m mVar : map.values()) {
                int iM = mVar.m();
                if (i11 > 0 && iM == 0) {
                    iM = 1;
                }
                if (iM != 0) {
                    this.f1228q = mVar.c(this.f1214c, this.f1213b);
                    if (iM >= 1) {
                        int i12 = i10 / 16;
                        float[] fArr = this.f1212a;
                        if (fArr == null || fArr.length != i12 * 2) {
                            this.f1212a = new float[i12 * 2];
                            this.f1215d = new Path();
                        }
                        int i13 = this.f1231t;
                        canvas.translate(i13, i13);
                        this.f1216e.setColor(1996488704);
                        this.f1220i.setColor(1996488704);
                        this.f1217f.setColor(1996488704);
                        this.f1218g.setColor(1996488704);
                        mVar.d(this.f1212a, i12);
                        b(canvas, iM, this.f1228q, mVar);
                        this.f1216e.setColor(-21965);
                        this.f1217f.setColor(-2067046);
                        this.f1220i.setColor(-2067046);
                        this.f1218g.setColor(-13391360);
                        int i14 = this.f1231t;
                        canvas.translate(-i14, -i14);
                        b(canvas, iM, this.f1228q, mVar);
                        if (iM == 5) {
                            j(canvas, mVar);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void b(Canvas canvas, int i10, int i11, m mVar) {
            if (i10 == 4) {
                d(canvas);
            }
            if (i10 == 2) {
                g(canvas);
            }
            if (i10 == 3) {
                e(canvas);
            }
            c(canvas);
            k(canvas, i10, i11, mVar);
        }

        void l(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.f1229r);
        }
    }

    class f {

        /* JADX INFO: renamed from: a */
        o.f f1233a = new o.f();

        /* JADX INFO: renamed from: b */
        o.f f1234b = new o.f();

        /* JADX INFO: renamed from: c */
        androidx.constraintlayout.widget.c f1235c = null;

        /* JADX INFO: renamed from: d */
        androidx.constraintlayout.widget.c f1236d = null;

        /* JADX INFO: renamed from: e */
        int f1237e;

        /* JADX INFO: renamed from: f */
        int f1238f;

        f() {
        }

        private void b(int i10, int i11) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.f1168i == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                o.f fVar = this.f1234b;
                androidx.constraintlayout.widget.c cVar = this.f1236d;
                motionLayout2.resolveSystem(fVar, optimizationLevel, (cVar == null || cVar.f1723e == 0) ? i10 : i11, (cVar == null || cVar.f1723e == 0) ? i11 : i10);
                androidx.constraintlayout.widget.c cVar2 = this.f1235c;
                if (cVar2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    o.f fVar2 = this.f1233a;
                    int i12 = cVar2.f1723e;
                    int i13 = i12 == 0 ? i10 : i11;
                    if (i12 == 0) {
                        i10 = i11;
                    }
                    motionLayout3.resolveSystem(fVar2, optimizationLevel, i13, i10);
                    return;
                }
                return;
            }
            androidx.constraintlayout.widget.c cVar3 = this.f1235c;
            if (cVar3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                o.f fVar3 = this.f1233a;
                int i14 = cVar3.f1723e;
                motionLayout4.resolveSystem(fVar3, optimizationLevel, i14 == 0 ? i10 : i11, i14 == 0 ? i11 : i10);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            o.f fVar4 = this.f1234b;
            androidx.constraintlayout.widget.c cVar4 = this.f1236d;
            int i15 = (cVar4 == null || cVar4.f1723e == 0) ? i10 : i11;
            if (cVar4 == null || cVar4.f1723e == 0) {
                i10 = i11;
            }
            motionLayout5.resolveSystem(fVar4, optimizationLevel, i15, i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void j(o.f fVar, androidx.constraintlayout.widget.c cVar) {
            SparseArray sparseArray = new SparseArray();
            Constraints.a aVar = new Constraints.a(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, fVar);
            sparseArray.put(MotionLayout.this.getId(), fVar);
            if (cVar != null && cVar.f1723e != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.f1234b, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), 1073741824), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), 1073741824));
            }
            for (o.e eVar : fVar.w1()) {
                eVar.E0(true);
                sparseArray.put(((View) eVar.u()).getId(), eVar);
            }
            for (o.e eVar2 : fVar.w1()) {
                View view = (View) eVar2.u();
                cVar.l(view.getId(), aVar);
                eVar2.p1(cVar.E(view.getId()));
                eVar2.Q0(cVar.z(view.getId()));
                if (view instanceof ConstraintHelper) {
                    cVar.j((ConstraintHelper) view, eVar2, aVar, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).w();
                    }
                }
                aVar.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, eVar2, aVar, sparseArray);
                if (cVar.D(view.getId()) == 1) {
                    eVar2.o1(view.getVisibility());
                } else {
                    eVar2.o1(cVar.C(view.getId()));
                }
            }
            for (o.e eVar3 : fVar.w1()) {
                if (eVar3 instanceof o.m) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) eVar3.u();
                    o.i iVar = (o.i) eVar3;
                    constraintHelper.v(fVar, iVar, sparseArray);
                    ((o.m) iVar).z1();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:72:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x013d A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a() {
            /*
                Method dump skipped, instruction units count: 360
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.f.a():void");
        }

        void c(o.f fVar, o.f fVar2) {
            ArrayList<o.e> arrayListW1 = fVar.w1();
            HashMap map = new HashMap();
            map.put(fVar, fVar2);
            fVar2.w1().clear();
            fVar2.n(fVar, map);
            for (o.e eVar : arrayListW1) {
                o.e aVar = eVar instanceof o.a ? new o.a() : eVar instanceof o.h ? new o.h() : eVar instanceof o.g ? new o.g() : eVar instanceof o.l ? new o.l() : eVar instanceof o.i ? new o.j() : new o.e();
                fVar2.b(aVar);
                map.put(eVar, aVar);
            }
            for (o.e eVar2 : arrayListW1) {
                ((o.e) map.get(eVar2)).n(eVar2, map);
            }
        }

        o.e d(o.f fVar, View view) {
            if (fVar.u() == view) {
                return fVar;
            }
            ArrayList arrayListW1 = fVar.w1();
            int size = arrayListW1.size();
            for (int i10 = 0; i10 < size; i10++) {
                o.e eVar = (o.e) arrayListW1.get(i10);
                if (eVar.u() == view) {
                    return eVar;
                }
            }
            return null;
        }

        void e(o.f fVar, androidx.constraintlayout.widget.c cVar, androidx.constraintlayout.widget.c cVar2) {
            this.f1235c = cVar;
            this.f1236d = cVar2;
            this.f1233a = new o.f();
            this.f1234b = new o.f();
            this.f1233a.b2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.O1());
            this.f1234b.b2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.O1());
            this.f1233a.z1();
            this.f1234b.z1();
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f1233a);
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f1234b);
            if (MotionLayout.this.f1186r > 0.5d) {
                if (cVar != null) {
                    j(this.f1233a, cVar);
                }
                j(this.f1234b, cVar2);
            } else {
                j(this.f1234b, cVar2);
                if (cVar != null) {
                    j(this.f1233a, cVar);
                }
            }
            this.f1233a.e2(MotionLayout.this.isRtl());
            this.f1233a.g2();
            this.f1234b.e2(MotionLayout.this.isRtl());
            this.f1234b.g2();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    o.f fVar2 = this.f1233a;
                    e.b bVar = e.b.WRAP_CONTENT;
                    fVar2.U0(bVar);
                    this.f1234b.U0(bVar);
                }
                if (layoutParams.height == -2) {
                    o.f fVar3 = this.f1233a;
                    e.b bVar2 = e.b.WRAP_CONTENT;
                    fVar3.l1(bVar2);
                    this.f1234b.l1(bVar2);
                }
            }
        }

        public boolean f(int i10, int i11) {
            return (i10 == this.f1237e && i11 == this.f1238f) ? false : true;
        }

        public void g(int i10, int i11) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.f1171j0 = mode;
            motionLayout.f1173k0 = mode2;
            b(i10, i11);
            if (!(MotionLayout.this.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
                b(i10, i11);
                MotionLayout.this.f1164f0 = this.f1233a.Y();
                MotionLayout.this.f1165g0 = this.f1233a.z();
                MotionLayout.this.f1167h0 = this.f1234b.Y();
                MotionLayout.this.f1169i0 = this.f1234b.z();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.f1162e0 = (motionLayout2.f1164f0 == motionLayout2.f1167h0 && motionLayout2.f1165g0 == motionLayout2.f1169i0) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i12 = motionLayout3.f1164f0;
            int i13 = motionLayout3.f1165g0;
            int i14 = motionLayout3.f1171j0;
            if (i14 == Integer.MIN_VALUE || i14 == 0) {
                i12 = (int) (i12 + (motionLayout3.f1175l0 * (motionLayout3.f1167h0 - i12)));
            }
            int i15 = i12;
            int i16 = motionLayout3.f1173k0;
            if (i16 == Integer.MIN_VALUE || i16 == 0) {
                i13 = (int) (i13 + (motionLayout3.f1175l0 * (motionLayout3.f1169i0 - i13)));
            }
            MotionLayout.this.resolveMeasuredDimension(i10, i11, i15, i13, this.f1233a.W1() || this.f1234b.W1(), this.f1233a.U1() || this.f1234b.U1());
        }

        public void h() {
            g(MotionLayout.this.f1172k, MotionLayout.this.f1174l);
            MotionLayout.this.g0();
        }

        public void i(int i10, int i11) {
            this.f1237e = i10;
            this.f1238f = i11;
        }
    }

    protected interface g {
        void a(MotionEvent motionEvent);

        float b();

        float c();

        void d();

        void e(int i10);
    }

    private static class h implements g {

        /* JADX INFO: renamed from: b */
        private static h f1240b = new h();

        /* JADX INFO: renamed from: a */
        VelocityTracker f1241a;

        private h() {
        }

        public static h f() {
            f1240b.f1241a = VelocityTracker.obtain();
            return f1240b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.g
        public void a(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f1241a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.g
        public float b() {
            VelocityTracker velocityTracker = this.f1241a;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.g
        public float c() {
            VelocityTracker velocityTracker = this.f1241a;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.g
        public void d() {
            VelocityTracker velocityTracker = this.f1241a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f1241a = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.g
        public void e(int i10) {
            VelocityTracker velocityTracker = this.f1241a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i10);
            }
        }
    }

    class i {

        /* JADX INFO: renamed from: a */
        float f1242a = Float.NaN;

        /* JADX INFO: renamed from: b */
        float f1243b = Float.NaN;

        /* JADX INFO: renamed from: c */
        int f1244c = -1;

        /* JADX INFO: renamed from: d */
        int f1245d = -1;

        /* JADX INFO: renamed from: e */
        final String f1246e = "motion.progress";

        /* JADX INFO: renamed from: f */
        final String f1247f = "motion.velocity";

        /* JADX INFO: renamed from: g */
        final String f1248g = "motion.StartState";

        /* JADX INFO: renamed from: h */
        final String f1249h = "motion.EndState";

        i() {
        }

        void a() {
            int i10 = this.f1244c;
            if (i10 != -1 || this.f1245d != -1) {
                if (i10 == -1) {
                    MotionLayout.this.m0(this.f1245d);
                } else {
                    int i11 = this.f1245d;
                    if (i11 == -1) {
                        MotionLayout.this.setState(i10, -1, -1);
                    } else {
                        MotionLayout.this.f0(i10, i11);
                    }
                }
                MotionLayout.this.setState(k.SETUP);
            }
            if (Float.isNaN(this.f1243b)) {
                if (Float.isNaN(this.f1242a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f1242a);
            } else {
                MotionLayout.this.e0(this.f1242a, this.f1243b);
                this.f1242a = Float.NaN;
                this.f1243b = Float.NaN;
                this.f1244c = -1;
                this.f1245d = -1;
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f1242a);
            bundle.putFloat("motion.velocity", this.f1243b);
            bundle.putInt("motion.StartState", this.f1244c);
            bundle.putInt("motion.EndState", this.f1245d);
            return bundle;
        }

        public void c() {
            this.f1245d = MotionLayout.this.f1170j;
            this.f1244c = MotionLayout.this.f1166h;
            this.f1243b = MotionLayout.this.getVelocity();
            this.f1242a = MotionLayout.this.getProgress();
        }

        public void d(int i10) {
            this.f1245d = i10;
        }

        public void e(float f10) {
            this.f1242a = f10;
        }

        public void f(int i10) {
            this.f1244c = i10;
        }

        public void g(Bundle bundle) {
            this.f1242a = bundle.getFloat("motion.progress");
            this.f1243b = bundle.getFloat("motion.velocity");
            this.f1244c = bundle.getInt("motion.StartState");
            this.f1245d = bundle.getInt("motion.EndState");
        }

        public void h(float f10) {
            this.f1243b = f10;
        }
    }

    public interface j {
        void a(MotionLayout motionLayout, int i10, int i11, float f10);

        void b(MotionLayout motionLayout, int i10, int i11);

        void c(MotionLayout motionLayout, int i10, boolean z10, float f10);

        void d(MotionLayout motionLayout, int i10);
    }

    enum k {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(Context context) {
        super(context);
        this.f1159c = null;
        this.f1163f = 0.0f;
        this.f1166h = -1;
        this.f1168i = -1;
        this.f1170j = -1;
        this.f1172k = 0;
        this.f1174l = 0;
        this.f1176m = true;
        this.f1178n = new HashMap();
        this.f1180o = 0L;
        this.f1182p = 1.0f;
        this.f1184q = 0.0f;
        this.f1186r = 0.0f;
        this.f1190t = 0.0f;
        this.f1194v = false;
        this.f1196w = false;
        this.A = 0;
        this.C = false;
        this.D = new q.b();
        this.E = new d();
        this.G = true;
        this.L = false;
        this.Q = false;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = 0;
        this.W = -1L;
        this.f1156a0 = 0.0f;
        this.f1158b0 = 0;
        this.f1160c0 = 0.0f;
        this.f1161d0 = false;
        this.f1162e0 = false;
        this.f1177m0 = new m.d();
        this.f1179n0 = false;
        this.f1183p0 = null;
        this.f1185q0 = null;
        this.f1187r0 = 0;
        this.f1189s0 = false;
        this.f1191t0 = 0;
        this.f1193u0 = new HashMap();
        this.f1201y0 = new Rect();
        this.f1203z0 = false;
        this.A0 = k.UNDEFINED;
        this.B0 = new f();
        this.C0 = false;
        this.D0 = new RectF();
        this.E0 = null;
        this.F0 = null;
        this.G0 = new ArrayList();
        Y(null);
    }

    private boolean G(View view, MotionEvent motionEvent, float f10, float f11) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f10, f11);
            boolean zOnTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f10, -f11);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f10, f11);
        if (this.F0 == null) {
            this.F0 = new Matrix();
        }
        matrix.invert(this.F0);
        motionEventObtain.transform(this.F0);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    private void H() {
        p pVar = this.f1155a;
        if (pVar == null) {
            Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int iF = pVar.F();
        p pVar2 = this.f1155a;
        I(iF, pVar2.l(pVar2.F()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        for (p.b bVar : this.f1155a.o()) {
            if (bVar == this.f1155a.f1431c) {
                Log.v("MotionLayout", "CHECK: CURRENT");
            }
            J(bVar);
            int iA = bVar.A();
            int iY = bVar.y();
            String strC = androidx.constraintlayout.motion.widget.a.c(getContext(), iA);
            String strC2 = androidx.constraintlayout.motion.widget.a.c(getContext(), iY);
            if (sparseIntArray.get(iA) == iY) {
                Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + strC + "->" + strC2);
            }
            if (sparseIntArray2.get(iY) == iA) {
                Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + strC + "->" + strC2);
            }
            sparseIntArray.put(iA, iY);
            sparseIntArray2.put(iY, iA);
            if (this.f1155a.l(iA) == null) {
                Log.e("MotionLayout", " no such constraintSetStart " + strC);
            }
            if (this.f1155a.l(iY) == null) {
                Log.e("MotionLayout", " no such constraintSetEnd " + strC);
            }
        }
    }

    private void I(int i10, androidx.constraintlayout.widget.c cVar) {
        String strC = androidx.constraintlayout.motion.widget.a.c(getContext(), i10);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int id = childAt.getId();
            if (id == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (cVar.y(id) == null) {
                Log.w("MotionLayout", "CHECK: " + strC + " NO CONSTRAINTS for " + androidx.constraintlayout.motion.widget.a.d(childAt));
            }
        }
        int[] iArrA = cVar.A();
        for (int i12 = 0; i12 < iArrA.length; i12++) {
            int i13 = iArrA[i12];
            String strC2 = androidx.constraintlayout.motion.widget.a.c(getContext(), i13);
            if (findViewById(iArrA[i12]) == null) {
                Log.w("MotionLayout", "CHECK: " + strC + " NO View matches id " + strC2);
            }
            if (cVar.z(i13) == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
            if (cVar.E(i13) == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    private void J(p.b bVar) {
        if (bVar.A() == bVar.y()) {
            Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
        }
    }

    private void K() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            m mVar = (m) this.f1178n.get(childAt);
            if (mVar != null) {
                mVar.E(childAt);
            }
        }
    }

    private void N() {
        boolean z10;
        float fSignum = Math.signum(this.f1190t - this.f1186r);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.f1157b;
        float interpolation = this.f1186r + (!(interpolator instanceof q.b) ? (((nanoTime - this.f1188s) * fSignum) * 1.0E-9f) / this.f1182p : 0.0f);
        if (this.f1192u) {
            interpolation = this.f1190t;
        }
        if ((fSignum <= 0.0f || interpolation < this.f1190t) && (fSignum > 0.0f || interpolation > this.f1190t)) {
            z10 = false;
        } else {
            interpolation = this.f1190t;
            z10 = true;
        }
        if (interpolator != null && !z10) {
            interpolation = this.C ? interpolator.getInterpolation((nanoTime - this.f1180o) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.f1190t) || (fSignum <= 0.0f && interpolation <= this.f1190t)) {
            interpolation = this.f1190t;
        }
        this.f1175l0 = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.f1159c;
        if (interpolator2 != null) {
            interpolation = interpolator2.getInterpolation(interpolation);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            m mVar = (m) this.f1178n.get(childAt);
            if (mVar != null) {
                mVar.x(childAt, interpolation, nanoTime2, this.f1177m0);
            }
        }
        if (this.f1162e0) {
            requestLayout();
        }
    }

    private void O() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if ((this.f1198x == null && ((copyOnWriteArrayList = this.U) == null || copyOnWriteArrayList.isEmpty())) || this.f1160c0 == this.f1184q) {
            return;
        }
        if (this.f1158b0 != -1) {
            Q();
            this.f1161d0 = true;
        }
        this.f1158b0 = -1;
        float f10 = this.f1184q;
        this.f1160c0 = f10;
        j jVar = this.f1198x;
        if (jVar != null) {
            jVar.a(this, this.f1166h, this.f1170j, f10);
        }
        CopyOnWriteArrayList copyOnWriteArrayList2 = this.U;
        if (copyOnWriteArrayList2 != null) {
            Iterator it = copyOnWriteArrayList2.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(this, this.f1166h, this.f1170j, this.f1184q);
            }
        }
        this.f1161d0 = true;
    }

    private void Q() {
        j jVar = this.f1198x;
        if (jVar != null) {
            jVar.b(this, this.f1166h, this.f1170j);
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.U;
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).b(this, this.f1166h, this.f1170j);
            }
        }
    }

    private boolean X(float f10, float f11, View view, MotionEvent motionEvent) {
        boolean z10;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (X((r3.getLeft() + f10) - view.getScrollX(), (r3.getTop() + f11) - view.getScrollY(), viewGroup.getChildAt(childCount), motionEvent)) {
                    z10 = true;
                    break;
                }
            }
            z10 = false;
        } else {
            z10 = false;
        }
        if (!z10) {
            this.D0.set(f10, f11, (view.getRight() + f10) - view.getLeft(), (view.getBottom() + f11) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.D0.contains(motionEvent.getX(), motionEvent.getY())) && G(view, motionEvent, -f10, -f11)) {
                return true;
            }
        }
        return z10;
    }

    private void Y(AttributeSet attributeSet) {
        p pVar;
        H0 = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z10 = true;
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionLayout_layoutDescription) {
                    this.f1155a = new p(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R$styleable.MotionLayout_currentState) {
                    this.f1168i = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R$styleable.MotionLayout_motionProgress) {
                    this.f1190t = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.f1194v = true;
                } else if (index == R$styleable.MotionLayout_applyMotionScene) {
                    z10 = typedArrayObtainStyledAttributes.getBoolean(index, z10);
                } else if (index == R$styleable.MotionLayout_showPaths) {
                    if (this.A == 0) {
                        this.A = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R$styleable.MotionLayout_motionDebug) {
                    this.A = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.f1155a == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z10) {
                this.f1155a = null;
            }
        }
        if (this.A != 0) {
            H();
        }
        if (this.f1168i != -1 || (pVar = this.f1155a) == null) {
            return;
        }
        this.f1168i = pVar.F();
        this.f1166h = this.f1155a.F();
        this.f1170j = this.f1155a.q();
    }

    private void c0() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if (this.f1198x == null && ((copyOnWriteArrayList = this.U) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.f1161d0 = false;
        for (Integer num : this.G0) {
            j jVar = this.f1198x;
            if (jVar != null) {
                jVar.d(this, num.intValue());
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = this.U;
            if (copyOnWriteArrayList2 != null) {
                Iterator it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    ((j) it.next()).d(this, num.intValue());
                }
            }
        }
        this.G0.clear();
    }

    public void g0() {
        int childCount = getChildCount();
        this.B0.a();
        this.f1194v = true;
        SparseArray sparseArray = new SparseArray();
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            sparseArray.put(childAt.getId(), (m) this.f1178n.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int iJ = this.f1155a.j();
        if (iJ != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                m mVar = (m) this.f1178n.get(getChildAt(i12));
                if (mVar != null) {
                    mVar.D(iJ);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.f1178n.size()];
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            m mVar2 = (m) this.f1178n.get(getChildAt(i14));
            if (mVar2.h() != -1) {
                sparseBooleanArray.put(mVar2.h(), true);
                iArr[i13] = mVar2.h();
                i13++;
            }
        }
        if (this.T != null) {
            for (int i15 = 0; i15 < i13; i15++) {
                m mVar3 = (m) this.f1178n.get(findViewById(iArr[i15]));
                if (mVar3 != null) {
                    this.f1155a.t(mVar3);
                }
            }
            Iterator it = this.T.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).D(this, this.f1178n);
            }
            for (int i16 = 0; i16 < i13; i16++) {
                m mVar4 = (m) this.f1178n.get(findViewById(iArr[i16]));
                if (mVar4 != null) {
                    mVar4.I(width, height, this.f1182p, getNanoTime());
                }
            }
        } else {
            for (int i17 = 0; i17 < i13; i17++) {
                m mVar5 = (m) this.f1178n.get(findViewById(iArr[i17]));
                if (mVar5 != null) {
                    this.f1155a.t(mVar5);
                    mVar5.I(width, height, this.f1182p, getNanoTime());
                }
            }
        }
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt2 = getChildAt(i18);
            m mVar6 = (m) this.f1178n.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && mVar6 != null) {
                this.f1155a.t(mVar6);
                mVar6.I(width, height, this.f1182p, getNanoTime());
            }
        }
        float fE = this.f1155a.E();
        if (fE != 0.0f) {
            boolean z10 = ((double) fE) < 0.0d;
            float fAbs = Math.abs(fE);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            float fMin2 = Float.MAX_VALUE;
            for (int i19 = 0; i19 < childCount; i19++) {
                m mVar7 = (m) this.f1178n.get(getChildAt(i19));
                if (!Float.isNaN(mVar7.f1394m)) {
                    for (int i20 = 0; i20 < childCount; i20++) {
                        m mVar8 = (m) this.f1178n.get(getChildAt(i20));
                        if (!Float.isNaN(mVar8.f1394m)) {
                            fMin = Math.min(fMin, mVar8.f1394m);
                            fMax = Math.max(fMax, mVar8.f1394m);
                        }
                    }
                    while (i10 < childCount) {
                        m mVar9 = (m) this.f1178n.get(getChildAt(i10));
                        if (!Float.isNaN(mVar9.f1394m)) {
                            mVar9.f1396o = 1.0f / (1.0f - fAbs);
                            if (z10) {
                                mVar9.f1395n = fAbs - (((fMax - mVar9.f1394m) / (fMax - fMin)) * fAbs);
                            } else {
                                mVar9.f1395n = fAbs - (((mVar9.f1394m - fMin) * fAbs) / (fMax - fMin));
                            }
                        }
                        i10++;
                    }
                    return;
                }
                float fN = mVar7.n();
                float fO = mVar7.o();
                float f10 = z10 ? fO - fN : fO + fN;
                fMin2 = Math.min(fMin2, f10);
                fMax2 = Math.max(fMax2, f10);
            }
            while (i10 < childCount) {
                m mVar10 = (m) this.f1178n.get(getChildAt(i10));
                float fN2 = mVar10.n();
                float fO2 = mVar10.o();
                float f11 = z10 ? fO2 - fN2 : fO2 + fN2;
                mVar10.f1396o = 1.0f / (1.0f - fAbs);
                mVar10.f1395n = fAbs - (((f11 - fMin2) * fAbs) / (fMax2 - fMin2));
                i10++;
            }
        }
    }

    public Rect h0(o.e eVar) {
        this.f1201y0.top = eVar.a0();
        this.f1201y0.left = eVar.Z();
        Rect rect = this.f1201y0;
        int iY = eVar.Y();
        Rect rect2 = this.f1201y0;
        rect.right = iY + rect2.left;
        int iZ = eVar.z();
        Rect rect3 = this.f1201y0;
        rect2.bottom = iZ + rect3.top;
        return rect3;
    }

    private static boolean s0(float f10, float f11, float f12) {
        if (f10 > 0.0f) {
            float f13 = f10 / f12;
            return f11 + ((f10 * f13) - (((f12 * f13) * f13) / 2.0f)) > 1.0f;
        }
        float f14 = (-f10) / f12;
        return f11 + ((f10 * f14) + (((f12 * f14) * f14) / 2.0f)) < 0.0f;
    }

    void E(float f10) {
        if (this.f1155a == null) {
            return;
        }
        float f11 = this.f1186r;
        float f12 = this.f1184q;
        if (f11 != f12 && this.f1192u) {
            this.f1186r = f12;
        }
        float f13 = this.f1186r;
        if (f13 == f10) {
            return;
        }
        this.C = false;
        this.f1190t = f10;
        this.f1182p = r0.p() / 1000.0f;
        setProgress(this.f1190t);
        this.f1157b = null;
        this.f1159c = this.f1155a.s();
        this.f1192u = false;
        this.f1180o = getNanoTime();
        this.f1194v = true;
        this.f1184q = f13;
        this.f1186r = f13;
        invalidate();
    }

    public boolean F(int i10, m mVar) {
        p pVar = this.f1155a;
        if (pVar != null) {
            return pVar.g(i10, mVar);
        }
        return false;
    }

    void L(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            m mVar = (m) this.f1178n.get(getChildAt(i10));
            if (mVar != null) {
                mVar.f(z10);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:243:0x00e2 A[PHI: r3
      0x00e2: PHI (r3v50 float) = (r3v49 float), (r3v51 float), (r3v51 float) binds: [B:228:0x00ab, B:239:0x00d6, B:241:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0222  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void M(boolean r23) {
        /*
            Method dump skipped, instruction units count: 630
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.M(boolean):void");
    }

    protected void P() {
        int iIntValue;
        CopyOnWriteArrayList copyOnWriteArrayList;
        if ((this.f1198x != null || ((copyOnWriteArrayList = this.U) != null && !copyOnWriteArrayList.isEmpty())) && this.f1158b0 == -1) {
            this.f1158b0 = this.f1168i;
            if (this.G0.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList arrayList = this.G0;
                iIntValue = ((Integer) arrayList.get(arrayList.size() - 1)).intValue();
            }
            int i10 = this.f1168i;
            if (iIntValue != i10 && i10 != -1) {
                this.G0.add(Integer.valueOf(i10));
            }
        }
        c0();
        Runnable runnable = this.f1183p0;
        if (runnable != null) {
            runnable.run();
            this.f1183p0 = null;
        }
        int[] iArr = this.f1185q0;
        if (iArr == null || this.f1187r0 <= 0) {
            return;
        }
        m0(iArr[0]);
        int[] iArr2 = this.f1185q0;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.f1187r0--;
    }

    public void R(int i10, boolean z10, float f10) {
        j jVar = this.f1198x;
        if (jVar != null) {
            jVar.c(this, i10, z10, f10);
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.U;
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).c(this, i10, z10, f10);
            }
        }
    }

    void S(int i10, float f10, float f11, float f12, float[] fArr) {
        String resourceName;
        HashMap map = this.f1178n;
        View viewById = getViewById(i10);
        m mVar = (m) map.get(viewById);
        if (mVar != null) {
            mVar.l(f10, f11, f12, fArr);
            float y10 = viewById.getY();
            this.f1200y = f10;
            this.f1202z = y10;
            return;
        }
        if (viewById == null) {
            resourceName = "" + i10;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(i10);
        }
        Log.w("MotionLayout", "WARNING could not find view id " + resourceName);
    }

    public androidx.constraintlayout.widget.c T(int i10) {
        p pVar = this.f1155a;
        if (pVar == null) {
            return null;
        }
        return pVar.l(i10);
    }

    m U(int i10) {
        return (m) this.f1178n.get(findViewById(i10));
    }

    public p.b V(int i10) {
        return this.f1155a.G(i10);
    }

    public void W(View view, float f10, float f11, float[] fArr, int i10) {
        float interpolation;
        float fA = this.f1163f;
        float f12 = this.f1186r;
        if (this.f1157b != null) {
            float fSignum = Math.signum(this.f1190t - f12);
            float interpolation2 = this.f1157b.getInterpolation(this.f1186r + 1.0E-5f);
            interpolation = this.f1157b.getInterpolation(this.f1186r);
            fA = (fSignum * ((interpolation2 - interpolation) / 1.0E-5f)) / this.f1182p;
        } else {
            interpolation = f12;
        }
        Interpolator interpolator = this.f1157b;
        if (interpolator instanceof n) {
            fA = ((n) interpolator).a();
        }
        m mVar = (m) this.f1178n.get(view);
        if ((i10 & 1) == 0) {
            mVar.r(interpolation, view.getWidth(), view.getHeight(), f10, f11, fArr);
        } else {
            mVar.l(interpolation, f10, f11, fArr);
        }
        if (i10 < 2) {
            fArr[0] = fArr[0] * fA;
            fArr[1] = fArr[1] * fA;
        }
    }

    public boolean Z() {
        return this.f1176m;
    }

    protected g a0() {
        return h.f();
    }

    void b0() {
        p pVar = this.f1155a;
        if (pVar == null) {
            return;
        }
        if (pVar.h(this, this.f1168i)) {
            requestLayout();
            return;
        }
        int i10 = this.f1168i;
        if (i10 != -1) {
            this.f1155a.f(this, i10);
        }
        if (this.f1155a.b0()) {
            this.f1155a.Z();
        }
    }

    public void d0() {
        this.B0.h();
        invalidate();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        t tVar;
        ArrayList arrayList = this.T;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).C(canvas);
            }
        }
        M(false);
        p pVar = this.f1155a;
        if (pVar != null && (tVar = pVar.f1446r) != null) {
            tVar.c();
        }
        super.dispatchDraw(canvas);
        if (this.f1155a == null) {
            return;
        }
        if ((this.A & 1) == 1 && !isInEditMode()) {
            this.V++;
            long nanoTime = getNanoTime();
            long j10 = this.W;
            if (j10 != -1) {
                if (nanoTime - j10 > 200000000) {
                    this.f1156a0 = ((int) ((this.V / (r5 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.V = 0;
                    this.W = nanoTime;
                }
            } else {
                this.W = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            String str = this.f1156a0 + " fps " + androidx.constraintlayout.motion.widget.a.e(this, this.f1166h) + " -> ";
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(androidx.constraintlayout.motion.widget.a.e(this, this.f1170j));
            sb.append(" (progress: ");
            sb.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sb.append(" ) state=");
            int i10 = this.f1168i;
            sb.append(i10 == -1 ? "undefined" : androidx.constraintlayout.motion.widget.a.e(this, i10));
            String string = sb.toString();
            paint.setColor(-16777216);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.A > 1) {
            if (this.B == null) {
                this.B = new e();
            }
            this.B.a(canvas, this.f1178n, this.f1155a.p(), this.A);
        }
        ArrayList arrayList2 = this.T;
        if (arrayList2 != null) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                ((MotionHelper) it2.next()).B(canvas);
            }
        }
    }

    public void e0(float f10, float f11) {
        if (!isAttachedToWindow()) {
            if (this.f1181o0 == null) {
                this.f1181o0 = new i();
            }
            this.f1181o0.e(f10);
            this.f1181o0.h(f11);
            return;
        }
        setProgress(f10);
        setState(k.MOVING);
        this.f1163f = f11;
        if (f11 != 0.0f) {
            E(f11 > 0.0f ? 1.0f : 0.0f);
        } else {
            if (f10 == 0.0f || f10 == 1.0f) {
                return;
            }
            E(f10 > 0.5f ? 1.0f : 0.0f);
        }
    }

    public void f0(int i10, int i11) {
        if (!isAttachedToWindow()) {
            if (this.f1181o0 == null) {
                this.f1181o0 = new i();
            }
            this.f1181o0.f(i10);
            this.f1181o0.d(i11);
            return;
        }
        p pVar = this.f1155a;
        if (pVar != null) {
            this.f1166h = i10;
            this.f1170j = i11;
            pVar.X(i10, i11);
            this.B0.e(this.mLayoutWidget, this.f1155a.l(i10), this.f1155a.l(i11));
            d0();
            this.f1186r = 0.0f;
            l0();
        }
    }

    public int[] getConstraintSetIds() {
        p pVar = this.f1155a;
        if (pVar == null) {
            return null;
        }
        return pVar.n();
    }

    public int getCurrentState() {
        return this.f1168i;
    }

    public ArrayList<p.b> getDefinedTransitions() {
        p pVar = this.f1155a;
        if (pVar == null) {
            return null;
        }
        return pVar.o();
    }

    public androidx.constraintlayout.motion.widget.b getDesignTool() {
        if (this.F == null) {
            this.F = new androidx.constraintlayout.motion.widget.b(this);
        }
        return this.F;
    }

    public int getEndState() {
        return this.f1170j;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f1186r;
    }

    public p getScene() {
        return this.f1155a;
    }

    public int getStartState() {
        return this.f1166h;
    }

    public float getTargetPosition() {
        return this.f1190t;
    }

    public Bundle getTransitionState() {
        if (this.f1181o0 == null) {
            this.f1181o0 = new i();
        }
        this.f1181o0.c();
        return this.f1181o0.b();
    }

    public long getTransitionTimeMs() {
        if (this.f1155a != null) {
            this.f1182p = r0.p() / 1000.0f;
        }
        return (long) (this.f1182p * 1000.0f);
    }

    public float getVelocity() {
        return this.f1163f;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void i0(int r10, float r11, float r12) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.i0(int, float, float):void");
    }

    public void j0() {
        E(1.0f);
        this.f1183p0 = null;
    }

    public void k0(Runnable runnable) {
        E(1.0f);
        this.f1183p0 = runnable;
    }

    public void l0() {
        E(0.0f);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i10) {
        p.b bVar;
        if (i10 == 0) {
            this.f1155a = null;
            return;
        }
        try {
            p pVar = new p(getContext(), this, i10);
            this.f1155a = pVar;
            if (this.f1168i == -1) {
                this.f1168i = pVar.F();
                this.f1166h = this.f1155a.F();
                this.f1170j = this.f1155a.q();
            }
            if (!isAttachedToWindow()) {
                this.f1155a = null;
                return;
            }
            try {
                Display display = getDisplay();
                this.f1199x0 = display == null ? 0 : display.getRotation();
                p pVar2 = this.f1155a;
                if (pVar2 != null) {
                    androidx.constraintlayout.widget.c cVarL = pVar2.l(this.f1168i);
                    this.f1155a.T(this);
                    ArrayList arrayList = this.T;
                    if (arrayList != null) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((MotionHelper) it.next()).A(this);
                        }
                    }
                    if (cVarL != null) {
                        cVarL.i(this);
                    }
                    this.f1166h = this.f1168i;
                }
                b0();
                i iVar = this.f1181o0;
                if (iVar != null) {
                    if (this.f1203z0) {
                        post(new a());
                        return;
                    } else {
                        iVar.a();
                        return;
                    }
                }
                p pVar3 = this.f1155a;
                if (pVar3 == null || (bVar = pVar3.f1431c) == null || bVar.x() != 4) {
                    return;
                }
                j0();
                setState(k.SETUP);
                setState(k.MOVING);
            } catch (Exception e10) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e10);
            }
        } catch (Exception e11) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e11);
        }
    }

    public void m0(int i10) {
        if (isAttachedToWindow()) {
            n0(i10, -1, -1);
            return;
        }
        if (this.f1181o0 == null) {
            this.f1181o0 = new i();
        }
        this.f1181o0.d(i10);
    }

    public void n0(int i10, int i11, int i12) {
        o0(i10, i11, i12, -1);
    }

    public void o0(int i10, int i11, int i12, int i13) {
        androidx.constraintlayout.widget.f fVar;
        int iA;
        p pVar = this.f1155a;
        if (pVar != null && (fVar = pVar.f1430b) != null && (iA = fVar.a(this.f1168i, i10, i11, i12)) != -1) {
            i10 = iA;
        }
        int i14 = this.f1168i;
        if (i14 == i10) {
            return;
        }
        if (this.f1166h == i10) {
            E(0.0f);
            if (i13 > 0) {
                this.f1182p = i13 / 1000.0f;
                return;
            }
            return;
        }
        if (this.f1170j == i10) {
            E(1.0f);
            if (i13 > 0) {
                this.f1182p = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.f1170j = i10;
        if (i14 != -1) {
            f0(i14, i10);
            E(1.0f);
            this.f1186r = 0.0f;
            j0();
            if (i13 > 0) {
                this.f1182p = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.C = false;
        this.f1190t = 1.0f;
        this.f1184q = 0.0f;
        this.f1186r = 0.0f;
        this.f1188s = getNanoTime();
        this.f1180o = getNanoTime();
        this.f1192u = false;
        this.f1157b = null;
        if (i13 == -1) {
            this.f1182p = this.f1155a.p() / 1000.0f;
        }
        this.f1166h = -1;
        this.f1155a.X(-1, this.f1170j);
        SparseArray sparseArray = new SparseArray();
        if (i13 == 0) {
            this.f1182p = this.f1155a.p() / 1000.0f;
        } else if (i13 > 0) {
            this.f1182p = i13 / 1000.0f;
        }
        int childCount = getChildCount();
        this.f1178n.clear();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            this.f1178n.put(childAt, new m(childAt));
            sparseArray.put(childAt.getId(), (m) this.f1178n.get(childAt));
        }
        this.f1194v = true;
        this.B0.e(this.mLayoutWidget, null, this.f1155a.l(i10));
        d0();
        this.B0.a();
        K();
        int width = getWidth();
        int height = getHeight();
        if (this.T != null) {
            for (int i16 = 0; i16 < childCount; i16++) {
                m mVar = (m) this.f1178n.get(getChildAt(i16));
                if (mVar != null) {
                    this.f1155a.t(mVar);
                }
            }
            Iterator it = this.T.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).D(this, this.f1178n);
            }
            for (int i17 = 0; i17 < childCount; i17++) {
                m mVar2 = (m) this.f1178n.get(getChildAt(i17));
                if (mVar2 != null) {
                    mVar2.I(width, height, this.f1182p, getNanoTime());
                }
            }
        } else {
            for (int i18 = 0; i18 < childCount; i18++) {
                m mVar3 = (m) this.f1178n.get(getChildAt(i18));
                if (mVar3 != null) {
                    this.f1155a.t(mVar3);
                    mVar3.I(width, height, this.f1182p, getNanoTime());
                }
            }
        }
        float fE = this.f1155a.E();
        if (fE != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i19 = 0; i19 < childCount; i19++) {
                m mVar4 = (m) this.f1178n.get(getChildAt(i19));
                float fO = mVar4.o() + mVar4.n();
                fMin = Math.min(fMin, fO);
                fMax = Math.max(fMax, fO);
            }
            for (int i20 = 0; i20 < childCount; i20++) {
                m mVar5 = (m) this.f1178n.get(getChildAt(i20));
                float fN = mVar5.n();
                float fO2 = mVar5.o();
                mVar5.f1396o = 1.0f / (1.0f - fE);
                mVar5.f1395n = fE - ((((fN + fO2) - fMin) * fE) / (fMax - fMin));
            }
        }
        this.f1184q = 0.0f;
        this.f1186r = 0.0f;
        this.f1194v = true;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        p.b bVar;
        int i10;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.f1199x0 = display.getRotation();
        }
        p pVar = this.f1155a;
        if (pVar != null && (i10 = this.f1168i) != -1) {
            androidx.constraintlayout.widget.c cVarL = pVar.l(i10);
            this.f1155a.T(this);
            ArrayList arrayList = this.T;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((MotionHelper) it.next()).A(this);
                }
            }
            if (cVarL != null) {
                cVarL.i(this);
            }
            this.f1166h = this.f1168i;
        }
        b0();
        i iVar = this.f1181o0;
        if (iVar != null) {
            if (this.f1203z0) {
                post(new c());
                return;
            } else {
                iVar.a();
                return;
            }
        }
        p pVar2 = this.f1155a;
        if (pVar2 == null || (bVar = pVar2.f1431c) == null || bVar.x() != 4) {
            return;
        }
        j0();
        setState(k.SETUP);
        setState(k.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        q qVarB;
        int iQ;
        RectF rectFP;
        p pVar = this.f1155a;
        if (pVar != null && this.f1176m) {
            t tVar = pVar.f1446r;
            if (tVar != null) {
                tVar.h(motionEvent);
            }
            p.b bVar = this.f1155a.f1431c;
            if (bVar != null && bVar.C() && (qVarB = bVar.B()) != null && ((motionEvent.getAction() != 0 || (rectFP = qVarB.p(this, new RectF())) == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) && (iQ = qVarB.q()) != -1)) {
                View view = this.E0;
                if (view == null || view.getId() != iQ) {
                    this.E0 = findViewById(iQ);
                }
                if (this.E0 != null) {
                    this.D0.set(r0.getLeft(), this.E0.getTop(), this.E0.getRight(), this.E0.getBottom());
                    if (this.D0.contains(motionEvent.getX(), motionEvent.getY()) && !X(this.E0.getLeft(), this.E0.getTop(), this.E0, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.f1179n0 = true;
        try {
            if (this.f1155a == null) {
                super.onLayout(z10, i10, i11, i12, i13);
                return;
            }
            int i14 = i12 - i10;
            int i15 = i13 - i11;
            if (this.J != i14 || this.K != i15) {
                d0();
                M(true);
            }
            this.J = i14;
            this.K = i15;
            this.H = i14;
            this.I = i15;
        } finally {
            this.f1179n0 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.f1155a == null) {
            super.onMeasure(i10, i11);
            return;
        }
        boolean z10 = false;
        boolean z11 = (this.f1172k == i10 && this.f1174l == i11) ? false : true;
        if (this.C0) {
            this.C0 = false;
            b0();
            c0();
            z11 = true;
        }
        if (this.mDirtyHierarchy) {
            z11 = true;
        }
        this.f1172k = i10;
        this.f1174l = i11;
        int iF = this.f1155a.F();
        int iQ = this.f1155a.q();
        if ((z11 || this.B0.f(iF, iQ)) && this.f1166h != -1) {
            super.onMeasure(i10, i11);
            this.B0.e(this.mLayoutWidget, this.f1155a.l(iF), this.f1155a.l(iQ));
            this.B0.h();
            this.B0.i(iF, iQ);
        } else {
            if (z11) {
                super.onMeasure(i10, i11);
            }
            z10 = true;
        }
        if (this.f1162e0 || z10) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int iY = this.mLayoutWidget.Y() + getPaddingLeft() + getPaddingRight();
            int iZ = this.mLayoutWidget.z() + paddingTop;
            int i12 = this.f1171j0;
            if (i12 == Integer.MIN_VALUE || i12 == 0) {
                iY = (int) (this.f1164f0 + (this.f1175l0 * (this.f1167h0 - r8)));
                requestLayout();
            }
            int i13 = this.f1173k0;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                iZ = (int) (this.f1165g0 + (this.f1175l0 * (this.f1169i0 - r8)));
                requestLayout();
            }
            setMeasuredDimension(iY, iZ);
        }
        N();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // androidx.core.view.x
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        p.b bVar;
        q qVarB;
        int iQ;
        p pVar = this.f1155a;
        if (pVar == null || (bVar = pVar.f1431c) == null || !bVar.C()) {
            return;
        }
        int i13 = -1;
        if (!bVar.C() || (qVarB = bVar.B()) == null || (iQ = qVarB.q()) == -1 || view.getId() == iQ) {
            if (pVar.w()) {
                q qVarB2 = bVar.B();
                if (qVarB2 != null && (qVarB2.e() & 4) != 0) {
                    i13 = i11;
                }
                float f10 = this.f1184q;
                if ((f10 == 1.0f || f10 == 0.0f) && view.canScrollVertically(i13)) {
                    return;
                }
            }
            if (bVar.B() != null && (bVar.B().e() & 1) != 0) {
                float fX = pVar.x(i10, i11);
                float f11 = this.f1186r;
                if ((f11 <= 0.0f && fX < 0.0f) || (f11 >= 1.0f && fX > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new b(view));
                    return;
                }
            }
            float f12 = this.f1184q;
            long nanoTime = getNanoTime();
            float f13 = i10;
            this.M = f13;
            float f14 = i11;
            this.N = f14;
            this.P = (float) ((nanoTime - this.O) * 1.0E-9d);
            this.O = nanoTime;
            pVar.P(f13, f14);
            if (f12 != this.f1184q) {
                iArr[0] = i10;
                iArr[1] = i11;
            }
            M(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.L = true;
        }
    }

    @Override // androidx.core.view.x
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
    }

    @Override // androidx.core.view.x
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        this.O = getNanoTime();
        this.P = 0.0f;
        this.M = 0.0f;
        this.N = 0.0f;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        p pVar = this.f1155a;
        if (pVar != null) {
            pVar.W(isRtl());
        }
    }

    @Override // androidx.core.view.x
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        p.b bVar;
        p pVar = this.f1155a;
        return (pVar == null || (bVar = pVar.f1431c) == null || bVar.B() == null || (this.f1155a.f1431c.B().e() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.x
    public void onStopNestedScroll(View view, int i10) {
        p pVar = this.f1155a;
        if (pVar != null) {
            float f10 = this.P;
            if (f10 == 0.0f) {
                return;
            }
            pVar.Q(this.M / f10, this.N / f10);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        p pVar = this.f1155a;
        if (pVar == null || !this.f1176m || !pVar.b0()) {
            return super.onTouchEvent(motionEvent);
        }
        p.b bVar = this.f1155a.f1431c;
        if (bVar != null && !bVar.C()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f1155a.R(motionEvent, getCurrentState(), this);
        if (this.f1155a.f1431c.D(4)) {
            return this.f1155a.f1431c.B().r();
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.U == null) {
                this.U = new CopyOnWriteArrayList();
            }
            this.U.add(motionHelper);
            if (motionHelper.z()) {
                if (this.R == null) {
                    this.R = new ArrayList();
                }
                this.R.add(motionHelper);
            }
            if (motionHelper.y()) {
                if (this.S == null) {
                    this.S = new ArrayList();
                }
                this.S.add(motionHelper);
            }
            if (motionHelper.x()) {
                if (this.T == null) {
                    this.T = new ArrayList();
                }
                this.T.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList arrayList = this.R;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList arrayList2 = this.S;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    public void p0() {
        this.B0.e(this.mLayoutWidget, this.f1155a.l(this.f1166h), this.f1155a.l(this.f1170j));
        d0();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int i10) {
        this.mConstraintLayoutSpec = null;
    }

    public void q0(int i10, androidx.constraintlayout.widget.c cVar) {
        p pVar = this.f1155a;
        if (pVar != null) {
            pVar.U(i10, cVar);
        }
        p0();
        if (this.f1168i == i10) {
            cVar.i(this);
        }
    }

    public void r0(int i10, View... viewArr) {
        p pVar = this.f1155a;
        if (pVar != null) {
            pVar.c0(i10, viewArr);
        } else {
            Log.e("MotionLayout", " no motionScene");
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        p pVar;
        p.b bVar;
        if (!this.f1162e0 && this.f1168i == -1 && (pVar = this.f1155a) != null && (bVar = pVar.f1431c) != null) {
            int iZ = bVar.z();
            if (iZ == 0) {
                return;
            }
            if (iZ == 2) {
                int childCount = getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    ((m) this.f1178n.get(getChildAt(i10))).z();
                }
                return;
            }
        }
        super.requestLayout();
    }

    public void setDebugMode(int i10) {
        this.A = i10;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z10) {
        this.f1203z0 = z10;
    }

    public void setInteractionEnabled(boolean z10) {
        this.f1176m = z10;
    }

    public void setInterpolatedProgress(float f10) {
        if (this.f1155a != null) {
            setState(k.MOVING);
            Interpolator interpolatorS = this.f1155a.s();
            if (interpolatorS != null) {
                setProgress(interpolatorS.getInterpolation(f10));
                return;
            }
        }
        setProgress(f10);
    }

    public void setOnHide(float f10) {
        ArrayList arrayList = this.S;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((MotionHelper) this.S.get(i10)).setProgress(f10);
            }
        }
    }

    public void setOnShow(float f10) {
        ArrayList arrayList = this.R;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((MotionHelper) this.R.get(i10)).setProgress(f10);
            }
        }
    }

    public void setProgress(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.f1181o0 == null) {
                this.f1181o0 = new i();
            }
            this.f1181o0.e(f10);
            return;
        }
        if (f10 <= 0.0f) {
            if (this.f1186r == 1.0f && this.f1168i == this.f1170j) {
                setState(k.MOVING);
            }
            this.f1168i = this.f1166h;
            if (this.f1186r == 0.0f) {
                setState(k.FINISHED);
            }
        } else if (f10 >= 1.0f) {
            if (this.f1186r == 0.0f && this.f1168i == this.f1166h) {
                setState(k.MOVING);
            }
            this.f1168i = this.f1170j;
            if (this.f1186r == 1.0f) {
                setState(k.FINISHED);
            }
        } else {
            this.f1168i = -1;
            setState(k.MOVING);
        }
        if (this.f1155a == null) {
            return;
        }
        this.f1192u = true;
        this.f1190t = f10;
        this.f1184q = f10;
        this.f1188s = -1L;
        this.f1180o = -1L;
        this.f1157b = null;
        this.f1194v = true;
        invalidate();
    }

    public void setScene(p pVar) {
        this.f1155a = pVar;
        pVar.W(isRtl());
        d0();
    }

    void setStartState(int i10) {
        if (isAttachedToWindow()) {
            this.f1168i = i10;
            return;
        }
        if (this.f1181o0 == null) {
            this.f1181o0 = new i();
        }
        this.f1181o0.f(i10);
        this.f1181o0.d(i10);
    }

    void setState(k kVar) {
        k kVar2 = k.FINISHED;
        if (kVar == kVar2 && this.f1168i == -1) {
            return;
        }
        k kVar3 = this.A0;
        this.A0 = kVar;
        k kVar4 = k.MOVING;
        if (kVar3 == kVar4 && kVar == kVar4) {
            O();
        }
        int iOrdinal = kVar3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && kVar == kVar2) {
                P();
                return;
            }
            return;
        }
        if (kVar == kVar4) {
            O();
        }
        if (kVar == kVar2) {
            P();
        }
    }

    public void setTransition(int i10) {
        if (this.f1155a != null) {
            p.b bVarV = V(i10);
            this.f1166h = bVarV.A();
            this.f1170j = bVarV.y();
            if (!isAttachedToWindow()) {
                if (this.f1181o0 == null) {
                    this.f1181o0 = new i();
                }
                this.f1181o0.f(this.f1166h);
                this.f1181o0.d(this.f1170j);
                return;
            }
            int i11 = this.f1168i;
            float f10 = i11 == this.f1166h ? 0.0f : i11 == this.f1170j ? 1.0f : Float.NaN;
            this.f1155a.Y(bVarV);
            this.B0.e(this.mLayoutWidget, this.f1155a.l(this.f1166h), this.f1155a.l(this.f1170j));
            d0();
            if (this.f1186r != f10) {
                if (f10 == 0.0f) {
                    L(true);
                    this.f1155a.l(this.f1166h).i(this);
                } else if (f10 == 1.0f) {
                    L(false);
                    this.f1155a.l(this.f1170j).i(this);
                }
            }
            this.f1186r = Float.isNaN(f10) ? 0.0f : f10;
            if (!Float.isNaN(f10)) {
                setProgress(f10);
                return;
            }
            Log.v("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + " transitionToStart ");
            l0();
        }
    }

    public void setTransitionDuration(int i10) {
        p pVar = this.f1155a;
        if (pVar == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else {
            pVar.V(i10);
        }
    }

    public void setTransitionListener(j jVar) {
        this.f1198x = jVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f1181o0 == null) {
            this.f1181o0 = new i();
        }
        this.f1181o0.g(bundle);
        if (isAttachedToWindow()) {
            this.f1181o0.a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return androidx.constraintlayout.motion.widget.a.c(context, this.f1166h) + "->" + androidx.constraintlayout.motion.widget.a.c(context, this.f1170j) + " (pos:" + this.f1186r + " Dpos/Dt:" + this.f1163f;
    }

    @Override // androidx.core.view.y
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (this.L || i10 != 0 || i11 != 0) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
        }
        this.L = false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i10, int i11, int i12) {
        setState(k.SETUP);
        this.f1168i = i10;
        this.f1166h = -1;
        this.f1170j = -1;
        androidx.constraintlayout.widget.b bVar = this.mConstraintLayoutSpec;
        if (bVar != null) {
            bVar.d(i10, i11, i12);
            return;
        }
        p pVar = this.f1155a;
        if (pVar != null) {
            pVar.l(i10).i(this);
        }
    }

    protected void setTransition(p.b bVar) {
        this.f1155a.Y(bVar);
        setState(k.SETUP);
        if (this.f1168i == this.f1155a.q()) {
            this.f1186r = 1.0f;
            this.f1184q = 1.0f;
            this.f1190t = 1.0f;
        } else {
            this.f1186r = 0.0f;
            this.f1184q = 0.0f;
            this.f1190t = 0.0f;
        }
        this.f1188s = bVar.D(1) ? -1L : getNanoTime();
        int iF = this.f1155a.F();
        int iQ = this.f1155a.q();
        if (iF == this.f1166h && iQ == this.f1170j) {
            return;
        }
        this.f1166h = iF;
        this.f1170j = iQ;
        this.f1155a.X(iF, iQ);
        this.B0.e(this.mLayoutWidget, this.f1155a.l(this.f1166h), this.f1155a.l(this.f1170j));
        this.B0.i(this.f1166h, this.f1170j);
        this.B0.h();
        d0();
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1159c = null;
        this.f1163f = 0.0f;
        this.f1166h = -1;
        this.f1168i = -1;
        this.f1170j = -1;
        this.f1172k = 0;
        this.f1174l = 0;
        this.f1176m = true;
        this.f1178n = new HashMap();
        this.f1180o = 0L;
        this.f1182p = 1.0f;
        this.f1184q = 0.0f;
        this.f1186r = 0.0f;
        this.f1190t = 0.0f;
        this.f1194v = false;
        this.f1196w = false;
        this.A = 0;
        this.C = false;
        this.D = new q.b();
        this.E = new d();
        this.G = true;
        this.L = false;
        this.Q = false;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = 0;
        this.W = -1L;
        this.f1156a0 = 0.0f;
        this.f1158b0 = 0;
        this.f1160c0 = 0.0f;
        this.f1161d0 = false;
        this.f1162e0 = false;
        this.f1177m0 = new m.d();
        this.f1179n0 = false;
        this.f1183p0 = null;
        this.f1185q0 = null;
        this.f1187r0 = 0;
        this.f1189s0 = false;
        this.f1191t0 = 0;
        this.f1193u0 = new HashMap();
        this.f1201y0 = new Rect();
        this.f1203z0 = false;
        this.A0 = k.UNDEFINED;
        this.B0 = new f();
        this.C0 = false;
        this.D0 = new RectF();
        this.E0 = null;
        this.F0 = null;
        this.G0 = new ArrayList();
        Y(attributeSet);
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1159c = null;
        this.f1163f = 0.0f;
        this.f1166h = -1;
        this.f1168i = -1;
        this.f1170j = -1;
        this.f1172k = 0;
        this.f1174l = 0;
        this.f1176m = true;
        this.f1178n = new HashMap();
        this.f1180o = 0L;
        this.f1182p = 1.0f;
        this.f1184q = 0.0f;
        this.f1186r = 0.0f;
        this.f1190t = 0.0f;
        this.f1194v = false;
        this.f1196w = false;
        this.A = 0;
        this.C = false;
        this.D = new q.b();
        this.E = new d();
        this.G = true;
        this.L = false;
        this.Q = false;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = 0;
        this.W = -1L;
        this.f1156a0 = 0.0f;
        this.f1158b0 = 0;
        this.f1160c0 = 0.0f;
        this.f1161d0 = false;
        this.f1162e0 = false;
        this.f1177m0 = new m.d();
        this.f1179n0 = false;
        this.f1183p0 = null;
        this.f1185q0 = null;
        this.f1187r0 = 0;
        this.f1189s0 = false;
        this.f1191t0 = 0;
        this.f1193u0 = new HashMap();
        this.f1201y0 = new Rect();
        this.f1203z0 = false;
        this.A0 = k.UNDEFINED;
        this.B0 = new f();
        this.C0 = false;
        this.D0 = new RectF();
        this.E0 = null;
        this.F0 = null;
        this.G0 = new ArrayList();
        Y(attributeSet);
    }
}
