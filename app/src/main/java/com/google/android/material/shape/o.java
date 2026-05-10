package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a */
    private final p[] f10100a = new p[4];

    /* JADX INFO: renamed from: b */
    private final Matrix[] f10101b = new Matrix[4];

    /* JADX INFO: renamed from: c */
    private final Matrix[] f10102c = new Matrix[4];

    /* JADX INFO: renamed from: d */
    private final PointF f10103d = new PointF();

    /* JADX INFO: renamed from: e */
    private final Path f10104e = new Path();

    /* JADX INFO: renamed from: f */
    private final Path f10105f = new Path();

    /* JADX INFO: renamed from: g */
    private final p f10106g = new p();

    /* JADX INFO: renamed from: h */
    private final float[] f10107h = new float[2];

    /* JADX INFO: renamed from: i */
    private final float[] f10108i = new float[2];

    /* JADX INFO: renamed from: j */
    private final Path f10109j = new Path();

    /* JADX INFO: renamed from: k */
    private final Path f10110k = new Path();

    /* JADX INFO: renamed from: l */
    private boolean f10111l = true;

    private static class a {

        /* JADX INFO: renamed from: a */
        static final o f10112a = new o();
    }

    public interface b {
        void a(p pVar, Matrix matrix, int i10);

        void b(p pVar, Matrix matrix, int i10);
    }

    static final class c {

        /* JADX INFO: renamed from: a */
        public final n f10113a;

        /* JADX INFO: renamed from: b */
        public final Path f10114b;

        /* JADX INFO: renamed from: c */
        public final RectF f10115c;

        /* JADX INFO: renamed from: d */
        public final b f10116d;

        /* JADX INFO: renamed from: e */
        public final float f10117e;

        c(n nVar, float f10, RectF rectF, b bVar, Path path) {
            this.f10116d = bVar;
            this.f10113a = nVar;
            this.f10117e = f10;
            this.f10115c = rectF;
            this.f10114b = path;
        }
    }

    public o() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.f10100a[i10] = new p();
            this.f10101b[i10] = new Matrix();
            this.f10102c[i10] = new Matrix();
        }
    }

    private float a(int i10) {
        return ((i10 + 1) % 4) * 90;
    }

    private void b(c cVar, int i10) {
        this.f10107h[0] = this.f10100a[i10].k();
        this.f10107h[1] = this.f10100a[i10].l();
        this.f10101b[i10].mapPoints(this.f10107h);
        if (i10 == 0) {
            Path path = cVar.f10114b;
            float[] fArr = this.f10107h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f10114b;
            float[] fArr2 = this.f10107h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f10100a[i10].d(this.f10101b[i10], cVar.f10114b);
        b bVar = cVar.f10116d;
        if (bVar != null) {
            bVar.b(this.f10100a[i10], this.f10101b[i10], i10);
        }
    }

    private void c(c cVar, int i10) {
        int i11 = (i10 + 1) % 4;
        this.f10107h[0] = this.f10100a[i10].i();
        this.f10107h[1] = this.f10100a[i10].j();
        this.f10101b[i10].mapPoints(this.f10107h);
        this.f10108i[0] = this.f10100a[i11].k();
        this.f10108i[1] = this.f10100a[i11].l();
        this.f10101b[i11].mapPoints(this.f10108i);
        float f10 = this.f10107h[0];
        float[] fArr = this.f10108i;
        float fMax = Math.max(((float) Math.hypot(f10 - fArr[0], r1[1] - fArr[1])) - 0.001f, 0.0f);
        float fI = i(cVar.f10115c, i10);
        this.f10106g.n(0.0f, 0.0f);
        g gVarJ = j(i10, cVar.f10113a);
        gVarJ.b(fMax, fI, cVar.f10117e, this.f10106g);
        this.f10109j.reset();
        this.f10106g.d(this.f10102c[i10], this.f10109j);
        if (this.f10111l && (gVarJ.a() || l(this.f10109j, i10) || l(this.f10109j, i11))) {
            Path path = this.f10109j;
            path.op(path, this.f10105f, Path.Op.DIFFERENCE);
            this.f10107h[0] = this.f10106g.k();
            this.f10107h[1] = this.f10106g.l();
            this.f10102c[i10].mapPoints(this.f10107h);
            Path path2 = this.f10104e;
            float[] fArr2 = this.f10107h;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.f10106g.d(this.f10102c[i10], this.f10104e);
        } else {
            this.f10106g.d(this.f10102c[i10], cVar.f10114b);
        }
        b bVar = cVar.f10116d;
        if (bVar != null) {
            bVar.a(this.f10106g, this.f10102c[i10], i10);
        }
    }

    private void f(int i10, RectF rectF, PointF pointF) {
        if (i10 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i10 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i10 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private d g(int i10, n nVar) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? nVar.t() : nVar.r() : nVar.j() : nVar.l();
    }

    private e h(int i10, n nVar) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? nVar.s() : nVar.q() : nVar.i() : nVar.k();
    }

    private float i(RectF rectF, int i10) {
        float[] fArr = this.f10107h;
        p pVar = this.f10100a[i10];
        fArr[0] = pVar.f10120c;
        fArr[1] = pVar.f10121d;
        this.f10101b[i10].mapPoints(fArr);
        return (i10 == 1 || i10 == 3) ? Math.abs(rectF.centerX() - this.f10107h[0]) : Math.abs(rectF.centerY() - this.f10107h[1]);
    }

    private g j(int i10, n nVar) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? nVar.o() : nVar.p() : nVar.n() : nVar.h();
    }

    public static o k() {
        return a.f10112a;
    }

    private boolean l(Path path, int i10) {
        this.f10110k.reset();
        this.f10100a[i10].d(this.f10101b[i10], this.f10110k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f10110k.computeBounds(rectF, true);
        path.op(this.f10110k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(c cVar, int i10) {
        h(i10, cVar.f10113a).b(this.f10100a[i10], 90.0f, cVar.f10117e, cVar.f10115c, g(i10, cVar.f10113a));
        float fA = a(i10);
        this.f10101b[i10].reset();
        f(i10, cVar.f10115c, this.f10103d);
        Matrix matrix = this.f10101b[i10];
        PointF pointF = this.f10103d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f10101b[i10].preRotate(fA);
    }

    private void o(int i10) {
        this.f10107h[0] = this.f10100a[i10].i();
        this.f10107h[1] = this.f10100a[i10].j();
        this.f10101b[i10].mapPoints(this.f10107h);
        float fA = a(i10);
        this.f10102c[i10].reset();
        Matrix matrix = this.f10102c[i10];
        float[] fArr = this.f10107h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f10102c[i10].preRotate(fA);
    }

    public void d(n nVar, float f10, RectF rectF, Path path) {
        e(nVar, f10, rectF, null, path);
    }

    public void e(n nVar, float f10, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.f10104e.rewind();
        this.f10105f.rewind();
        this.f10105f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(nVar, f10, rectF, bVar, path);
        for (int i10 = 0; i10 < 4; i10++) {
            m(cVar, i10);
            o(i10);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            b(cVar, i11);
            c(cVar, i11);
        }
        path.close();
        this.f10104e.close();
        if (this.f10104e.isEmpty()) {
            return;
        }
        path.op(this.f10104e, Path.Op.UNION);
    }

    void n(boolean z10) {
        this.f10111l = z10;
    }
}
