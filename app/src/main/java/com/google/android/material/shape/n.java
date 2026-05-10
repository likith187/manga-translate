package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: m */
    public static final d f10075m = new l(0.5f);

    /* JADX INFO: renamed from: a */
    e f10076a;

    /* JADX INFO: renamed from: b */
    e f10077b;

    /* JADX INFO: renamed from: c */
    e f10078c;

    /* JADX INFO: renamed from: d */
    e f10079d;

    /* JADX INFO: renamed from: e */
    d f10080e;

    /* JADX INFO: renamed from: f */
    d f10081f;

    /* JADX INFO: renamed from: g */
    d f10082g;

    /* JADX INFO: renamed from: h */
    d f10083h;

    /* JADX INFO: renamed from: i */
    g f10084i;

    /* JADX INFO: renamed from: j */
    g f10085j;

    /* JADX INFO: renamed from: k */
    g f10086k;

    /* JADX INFO: renamed from: l */
    g f10087l;

    public interface c {
        d a(d dVar);
    }

    /* synthetic */ n(b bVar, a aVar) {
        this(bVar);
    }

    public static b a() {
        return new b();
    }

    public static b b(Context context, int i10, int i11) {
        return c(context, i10, i11, 0);
    }

    private static b c(Context context, int i10, int i11, int i12) {
        return d(context, i10, i11, new com.google.android.material.shape.a(i12));
    }

    private static b d(Context context, int i10, int i11, d dVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
        if (i11 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i11);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamily, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopLeft, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopRight, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomRight, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomLeft, i12);
            d dVarM = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSize, dVar);
            d dVarM2 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopLeft, dVarM);
            d dVarM3 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopRight, dVarM);
            d dVarM4 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomRight, dVarM);
            return new b().F(i13, dVarM2).K(i14, dVarM3).z(i15, dVarM4).u(i16, m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomLeft, dVarM));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static b e(Context context, AttributeSet attributeSet, int i10, int i11) {
        return f(context, attributeSet, i10, i11, 0);
    }

    public static b f(Context context, AttributeSet attributeSet, int i10, int i11, int i12) {
        return g(context, attributeSet, i10, i11, new com.google.android.material.shape.a(i12));
    }

    public static b g(Context context, AttributeSet attributeSet, int i10, int i11, d dVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialShape, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, dVar);
    }

    private static d m(TypedArray typedArray, int i10, d dVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue == null) {
            return dVar;
        }
        int i11 = typedValuePeekValue.type;
        return i11 == 5 ? new com.google.android.material.shape.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i11 == 6 ? new l(typedValuePeekValue.getFraction(1.0f, 1.0f)) : dVar;
    }

    public g h() {
        return this.f10086k;
    }

    public e i() {
        return this.f10079d;
    }

    public d j() {
        return this.f10083h;
    }

    public e k() {
        return this.f10078c;
    }

    public d l() {
        return this.f10082g;
    }

    public g n() {
        return this.f10087l;
    }

    public g o() {
        return this.f10085j;
    }

    public g p() {
        return this.f10084i;
    }

    public e q() {
        return this.f10076a;
    }

    public d r() {
        return this.f10080e;
    }

    public e s() {
        return this.f10077b;
    }

    public d t() {
        return this.f10081f;
    }

    public boolean u(RectF rectF) {
        boolean z10 = this.f10087l.getClass().equals(g.class) && this.f10085j.getClass().equals(g.class) && this.f10084i.getClass().equals(g.class) && this.f10086k.getClass().equals(g.class);
        float fA = this.f10080e.a(rectF);
        return z10 && ((this.f10081f.a(rectF) > fA ? 1 : (this.f10081f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10083h.a(rectF) > fA ? 1 : (this.f10083h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10082g.a(rectF) > fA ? 1 : (this.f10082g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f10077b instanceof m) && (this.f10076a instanceof m) && (this.f10078c instanceof m) && (this.f10079d instanceof m));
    }

    public b v() {
        return new b(this);
    }

    public n w(float f10) {
        return v().o(f10).m();
    }

    public n x(d dVar) {
        return v().p(dVar).m();
    }

    public n y(c cVar) {
        return v().I(cVar.a(r())).N(cVar.a(t())).x(cVar.a(j())).C(cVar.a(l())).m();
    }

    private n(b bVar) {
        this.f10076a = bVar.f10088a;
        this.f10077b = bVar.f10089b;
        this.f10078c = bVar.f10090c;
        this.f10079d = bVar.f10091d;
        this.f10080e = bVar.f10092e;
        this.f10081f = bVar.f10093f;
        this.f10082g = bVar.f10094g;
        this.f10083h = bVar.f10095h;
        this.f10084i = bVar.f10096i;
        this.f10085j = bVar.f10097j;
        this.f10086k = bVar.f10098k;
        this.f10087l = bVar.f10099l;
    }

    public static final class b {

        /* JADX INFO: renamed from: a */
        private e f10088a;

        /* JADX INFO: renamed from: b */
        private e f10089b;

        /* JADX INFO: renamed from: c */
        private e f10090c;

        /* JADX INFO: renamed from: d */
        private e f10091d;

        /* JADX INFO: renamed from: e */
        private d f10092e;

        /* JADX INFO: renamed from: f */
        private d f10093f;

        /* JADX INFO: renamed from: g */
        private d f10094g;

        /* JADX INFO: renamed from: h */
        private d f10095h;

        /* JADX INFO: renamed from: i */
        private g f10096i;

        /* JADX INFO: renamed from: j */
        private g f10097j;

        /* JADX INFO: renamed from: k */
        private g f10098k;

        /* JADX INFO: renamed from: l */
        private g f10099l;

        public b() {
            this.f10088a = j.b();
            this.f10089b = j.b();
            this.f10090c = j.b();
            this.f10091d = j.b();
            this.f10092e = new com.google.android.material.shape.a(0.0f);
            this.f10093f = new com.google.android.material.shape.a(0.0f);
            this.f10094g = new com.google.android.material.shape.a(0.0f);
            this.f10095h = new com.google.android.material.shape.a(0.0f);
            this.f10096i = j.c();
            this.f10097j = j.c();
            this.f10098k = j.c();
            this.f10099l = j.c();
        }

        private static float n(e eVar) {
            if (eVar instanceof m) {
                return ((m) eVar).f10074a;
            }
            if (eVar instanceof f) {
                return ((f) eVar).f10044a;
            }
            return -1.0f;
        }

        public b A(e eVar) {
            this.f10090c = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                B(fN);
            }
            return this;
        }

        public b B(float f10) {
            this.f10094g = new com.google.android.material.shape.a(f10);
            return this;
        }

        public b C(d dVar) {
            this.f10094g = dVar;
            return this;
        }

        public b D(g gVar) {
            this.f10096i = gVar;
            return this;
        }

        public b E(int i10, float f10) {
            return G(j.a(i10)).H(f10);
        }

        public b F(int i10, d dVar) {
            return G(j.a(i10)).I(dVar);
        }

        public b G(e eVar) {
            this.f10088a = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                H(fN);
            }
            return this;
        }

        public b H(float f10) {
            this.f10092e = new com.google.android.material.shape.a(f10);
            return this;
        }

        public b I(d dVar) {
            this.f10092e = dVar;
            return this;
        }

        public b J(int i10, float f10) {
            return L(j.a(i10)).M(f10);
        }

        public b K(int i10, d dVar) {
            return L(j.a(i10)).N(dVar);
        }

        public b L(e eVar) {
            this.f10089b = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                M(fN);
            }
            return this;
        }

        public b M(float f10) {
            this.f10093f = new com.google.android.material.shape.a(f10);
            return this;
        }

        public b N(d dVar) {
            this.f10093f = dVar;
            return this;
        }

        public n m() {
            return new n(this);
        }

        public b o(float f10) {
            return H(f10).M(f10).B(f10).w(f10);
        }

        public b p(d dVar) {
            return I(dVar).N(dVar).C(dVar).x(dVar);
        }

        public b q(int i10, float f10) {
            return r(j.a(i10)).o(f10);
        }

        public b r(e eVar) {
            return G(eVar).L(eVar).A(eVar).v(eVar);
        }

        public b s(g gVar) {
            this.f10098k = gVar;
            return this;
        }

        public b t(int i10, float f10) {
            return v(j.a(i10)).w(f10);
        }

        public b u(int i10, d dVar) {
            return v(j.a(i10)).x(dVar);
        }

        public b v(e eVar) {
            this.f10091d = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                w(fN);
            }
            return this;
        }

        public b w(float f10) {
            this.f10095h = new com.google.android.material.shape.a(f10);
            return this;
        }

        public b x(d dVar) {
            this.f10095h = dVar;
            return this;
        }

        public b y(int i10, float f10) {
            return A(j.a(i10)).B(f10);
        }

        public b z(int i10, d dVar) {
            return A(j.a(i10)).C(dVar);
        }

        public b(n nVar) {
            this.f10088a = j.b();
            this.f10089b = j.b();
            this.f10090c = j.b();
            this.f10091d = j.b();
            this.f10092e = new com.google.android.material.shape.a(0.0f);
            this.f10093f = new com.google.android.material.shape.a(0.0f);
            this.f10094g = new com.google.android.material.shape.a(0.0f);
            this.f10095h = new com.google.android.material.shape.a(0.0f);
            this.f10096i = j.c();
            this.f10097j = j.c();
            this.f10098k = j.c();
            this.f10099l = j.c();
            this.f10088a = nVar.f10076a;
            this.f10089b = nVar.f10077b;
            this.f10090c = nVar.f10078c;
            this.f10091d = nVar.f10079d;
            this.f10092e = nVar.f10080e;
            this.f10093f = nVar.f10081f;
            this.f10094g = nVar.f10082g;
            this.f10095h = nVar.f10083h;
            this.f10096i = nVar.f10084i;
            this.f10097j = nVar.f10085j;
            this.f10098k = nVar.f10086k;
            this.f10099l = nVar.f10087l;
        }
    }

    public n() {
        this.f10076a = j.b();
        this.f10077b = j.b();
        this.f10078c = j.b();
        this.f10079d = j.b();
        this.f10080e = new com.google.android.material.shape.a(0.0f);
        this.f10081f = new com.google.android.material.shape.a(0.0f);
        this.f10082g = new com.google.android.material.shape.a(0.0f);
        this.f10083h = new com.google.android.material.shape.a(0.0f);
        this.f10084i = j.c();
        this.f10085j = j.c();
        this.f10086k = j.c();
        this.f10087l = j.c();
    }
}
