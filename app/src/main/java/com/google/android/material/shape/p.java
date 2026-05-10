package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f10118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f10119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f10120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f10121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f10122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f10123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f10124g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f10125h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f10126i;

    class a extends g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f10127c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Matrix f10128d;

        a(List list, Matrix matrix) {
            this.f10127c = list;
            this.f10128d = matrix;
        }

        @Override // com.google.android.material.shape.p.g
        public void a(Matrix matrix, k4.a aVar, int i10, Canvas canvas) {
            Iterator it = this.f10127c.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.f10128d, aVar, i10, canvas);
            }
        }
    }

    static class b extends g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d f10130c;

        public b(d dVar) {
            this.f10130c = dVar;
        }

        @Override // com.google.android.material.shape.p.g
        public void a(Matrix matrix, k4.a aVar, int i10, Canvas canvas) {
            aVar.a(canvas, matrix, new RectF(this.f10130c.k(), this.f10130c.o(), this.f10130c.l(), this.f10130c.j()), i10, this.f10130c.m(), this.f10130c.n());
        }
    }

    static class c extends g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final e f10131c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f10132d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f10133e;

        public c(e eVar, float f10, float f11) {
            this.f10131c = eVar;
            this.f10132d = f10;
            this.f10133e = f11;
        }

        @Override // com.google.android.material.shape.p.g
        public void a(Matrix matrix, k4.a aVar, int i10, Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f10131c.f10142c - this.f10133e, this.f10131c.f10141b - this.f10132d), 0.0f);
            this.f10145a.set(matrix);
            this.f10145a.preTranslate(this.f10132d, this.f10133e);
            this.f10145a.preRotate(c());
            aVar.b(canvas, this.f10145a, rectF, i10);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f10131c.f10142c - this.f10133e) / (this.f10131c.f10141b - this.f10132d)));
        }
    }

    public static class d extends f {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final RectF f10134h = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f10135b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f10136c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f10137d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f10138e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f10139f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f10140g;

        public d(float f10, float f11, float f12, float f13) {
            q(f10);
            u(f11);
            r(f12);
            p(f13);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.f10138e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.f10135b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.f10137d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.f10139f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.f10140g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.f10136c;
        }

        private void p(float f10) {
            this.f10138e = f10;
        }

        private void q(float f10) {
            this.f10135b = f10;
        }

        private void r(float f10) {
            this.f10137d = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f10) {
            this.f10139f = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f10) {
            this.f10140g = f10;
        }

        private void u(float f10) {
            this.f10136c = f10;
        }

        @Override // com.google.android.material.shape.p.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f10143a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f10134h;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }
    }

    public static class e extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f10141b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f10142c;

        @Override // com.google.android.material.shape.p.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f10143a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f10141b, this.f10142c);
            path.transform(matrix);
        }
    }

    public static abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Matrix f10143a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    static abstract class g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final Matrix f10144b = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Matrix f10145a = new Matrix();

        g() {
        }

        public abstract void a(Matrix matrix, k4.a aVar, int i10, Canvas canvas);

        public final void b(k4.a aVar, int i10, Canvas canvas) {
            a(f10144b, aVar, i10, canvas);
        }
    }

    public p() {
        n(0.0f, 0.0f);
    }

    private void b(float f10) {
        if (g() == f10) {
            return;
        }
        float fG = ((f10 - g()) + 360.0f) % 360.0f;
        if (fG > 180.0f) {
            return;
        }
        d dVar = new d(i(), j(), i(), j());
        dVar.s(g());
        dVar.t(fG);
        this.f10125h.add(new b(dVar));
        p(f10);
    }

    private void c(g gVar, float f10, float f11) {
        b(f10);
        this.f10125h.add(gVar);
        p(f11);
    }

    private float g() {
        return this.f10122e;
    }

    private float h() {
        return this.f10123f;
    }

    private void p(float f10) {
        this.f10122e = f10;
    }

    private void q(float f10) {
        this.f10123f = f10;
    }

    private void r(float f10) {
        this.f10120c = f10;
    }

    private void s(float f10) {
        this.f10121d = f10;
    }

    private void t(float f10) {
        this.f10118a = f10;
    }

    private void u(float f10) {
        this.f10119b = f10;
    }

    public void a(float f10, float f11, float f12, float f13, float f14, float f15) {
        d dVar = new d(f10, f11, f12, f13);
        dVar.s(f14);
        dVar.t(f15);
        this.f10124g.add(dVar);
        b bVar = new b(dVar);
        float f16 = f14 + f15;
        boolean z10 = f15 < 0.0f;
        if (z10) {
            f14 = (f14 + 180.0f) % 360.0f;
        }
        c(bVar, f14, z10 ? (180.0f + f16) % 360.0f : f16);
        double d10 = f16;
        r(((f10 + f12) * 0.5f) + (((f12 - f10) / 2.0f) * ((float) Math.cos(Math.toRadians(d10)))));
        s(((f11 + f13) * 0.5f) + (((f13 - f11) / 2.0f) * ((float) Math.sin(Math.toRadians(d10)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f10124g.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((f) this.f10124g.get(i10)).a(matrix, path);
        }
    }

    boolean e() {
        return this.f10126i;
    }

    g f(Matrix matrix) {
        b(h());
        return new a(new ArrayList(this.f10125h), new Matrix(matrix));
    }

    float i() {
        return this.f10120c;
    }

    float j() {
        return this.f10121d;
    }

    float k() {
        return this.f10118a;
    }

    float l() {
        return this.f10119b;
    }

    public void m(float f10, float f11) {
        e eVar = new e();
        eVar.f10141b = f10;
        eVar.f10142c = f11;
        this.f10124g.add(eVar);
        c cVar = new c(eVar, i(), j());
        c(cVar, cVar.c() + 270.0f, cVar.c() + 270.0f);
        r(f10);
        s(f11);
    }

    public void n(float f10, float f11) {
        o(f10, f11, 270.0f, 0.0f);
    }

    public void o(float f10, float f11, float f12, float f13) {
        t(f10);
        u(f11);
        r(f10);
        s(f11);
        p(f12);
        q((f12 + f13) % 360.0f);
        this.f10124g.clear();
        this.f10125h.clear();
        this.f10126i = false;
    }
}
