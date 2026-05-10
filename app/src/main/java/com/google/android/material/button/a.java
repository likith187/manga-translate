package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import i4.c;
import j4.b;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final boolean f9117u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final boolean f9118v = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaterialButton f9119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n f9120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9122d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9123e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9124f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9125g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9126h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuff.Mode f9127i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f9128j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f9129k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f9130l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Drawable f9131m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f9135q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LayerDrawable f9137s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f9138t;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f9132n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f9133o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f9134p = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f9136r = true;

    a(MaterialButton materialButton, n nVar) {
        this.f9119a = materialButton;
        this.f9120b = nVar;
    }

    private void G(int i10, int i11) {
        int iA = m0.A(this.f9119a);
        int paddingTop = this.f9119a.getPaddingTop();
        int iZ = m0.z(this.f9119a);
        int paddingBottom = this.f9119a.getPaddingBottom();
        int i12 = this.f9123e;
        int i13 = this.f9124f;
        this.f9124f = i11;
        this.f9123e = i10;
        if (!this.f9133o) {
            H();
        }
        m0.z0(this.f9119a, iA, (paddingTop + i10) - i12, iZ, (paddingBottom + i11) - i13);
    }

    private void H() {
        this.f9119a.setInternalBackground(a());
        i iVarF = f();
        if (iVarF != null) {
            iVarF.setElevation(this.f9138t);
            iVarF.setState(this.f9119a.getDrawableState());
        }
    }

    private void I(n nVar) {
        if (f9118v && !this.f9133o) {
            int iA = m0.A(this.f9119a);
            int paddingTop = this.f9119a.getPaddingTop();
            int iZ = m0.z(this.f9119a);
            int paddingBottom = this.f9119a.getPaddingBottom();
            H();
            m0.z0(this.f9119a, iA, paddingTop, iZ, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(nVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(nVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(nVar);
        }
    }

    private void J() {
        i iVarF = f();
        i iVarN = n();
        if (iVarF != null) {
            iVarF.setStroke(this.f9126h, this.f9129k);
            if (iVarN != null) {
                iVarN.setStroke(this.f9126h, this.f9132n ? b4.a.d(this.f9119a, R$attr.colorSurface) : 0);
            }
        }
    }

    private InsetDrawable K(Drawable drawable) {
        return new InsetDrawable(drawable, this.f9121c, this.f9123e, this.f9122d, this.f9124f);
    }

    private Drawable a() {
        i iVar = new i(this.f9120b);
        iVar.initializeElevationOverlay(this.f9119a.getContext());
        v.a.o(iVar, this.f9128j);
        PorterDuff.Mode mode = this.f9127i;
        if (mode != null) {
            v.a.p(iVar, mode);
        }
        iVar.setStroke(this.f9126h, this.f9129k);
        i iVar2 = new i(this.f9120b);
        iVar2.setTint(0);
        iVar2.setStroke(this.f9126h, this.f9132n ? b4.a.d(this.f9119a, R$attr.colorSurface) : 0);
        if (f9117u) {
            i iVar3 = new i(this.f9120b);
            this.f9131m = iVar3;
            v.a.n(iVar3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(b.d(this.f9130l), K(new LayerDrawable(new Drawable[]{iVar2, iVar})), this.f9131m);
            this.f9137s = rippleDrawable;
            return rippleDrawable;
        }
        j4.a aVar = new j4.a(this.f9120b);
        this.f9131m = aVar;
        v.a.o(aVar, b.d(this.f9130l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{iVar2, iVar, this.f9131m});
        this.f9137s = layerDrawable;
        return K(layerDrawable);
    }

    private i g(boolean z10) {
        LayerDrawable layerDrawable = this.f9137s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f9117u ? (i) ((LayerDrawable) ((InsetDrawable) this.f9137s.getDrawable(0)).getDrawable()).getDrawable(!z10 ? 1 : 0) : (i) this.f9137s.getDrawable(!z10 ? 1 : 0);
    }

    private i n() {
        return g(true);
    }

    void A(boolean z10) {
        this.f9132n = z10;
        J();
    }

    void B(ColorStateList colorStateList) {
        if (this.f9129k != colorStateList) {
            this.f9129k = colorStateList;
            J();
        }
    }

    void C(int i10) {
        if (this.f9126h != i10) {
            this.f9126h = i10;
            J();
        }
    }

    void D(ColorStateList colorStateList) {
        if (this.f9128j != colorStateList) {
            this.f9128j = colorStateList;
            if (f() != null) {
                v.a.o(f(), this.f9128j);
            }
        }
    }

    void E(PorterDuff.Mode mode) {
        if (this.f9127i != mode) {
            this.f9127i = mode;
            if (f() == null || this.f9127i == null) {
                return;
            }
            v.a.p(f(), this.f9127i);
        }
    }

    void F(boolean z10) {
        this.f9136r = z10;
    }

    int b() {
        return this.f9125g;
    }

    public int c() {
        return this.f9124f;
    }

    public int d() {
        return this.f9123e;
    }

    public r e() {
        LayerDrawable layerDrawable = this.f9137s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f9137s.getNumberOfLayers() > 2 ? (r) this.f9137s.getDrawable(2) : (r) this.f9137s.getDrawable(1);
    }

    i f() {
        return g(false);
    }

    ColorStateList h() {
        return this.f9130l;
    }

    n i() {
        return this.f9120b;
    }

    ColorStateList j() {
        return this.f9129k;
    }

    int k() {
        return this.f9126h;
    }

    ColorStateList l() {
        return this.f9128j;
    }

    PorterDuff.Mode m() {
        return this.f9127i;
    }

    boolean o() {
        return this.f9133o;
    }

    boolean p() {
        return this.f9135q;
    }

    boolean q() {
        return this.f9136r;
    }

    void r(TypedArray typedArray) {
        this.f9121c = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetLeft, 0);
        this.f9122d = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetRight, 0);
        this.f9123e = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetTop, 0);
        this.f9124f = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(R$styleable.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_cornerRadius, -1);
            this.f9125g = dimensionPixelSize;
            z(this.f9120b.w(dimensionPixelSize));
            this.f9134p = true;
        }
        this.f9126h = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_strokeWidth, 0);
        this.f9127i = ViewUtils.parseTintMode(typedArray.getInt(R$styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f9128j = c.a(this.f9119a.getContext(), typedArray, R$styleable.MaterialButton_backgroundTint);
        this.f9129k = c.a(this.f9119a.getContext(), typedArray, R$styleable.MaterialButton_strokeColor);
        this.f9130l = c.a(this.f9119a.getContext(), typedArray, R$styleable.MaterialButton_rippleColor);
        this.f9135q = typedArray.getBoolean(R$styleable.MaterialButton_android_checkable, false);
        this.f9138t = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_elevation, 0);
        this.f9136r = typedArray.getBoolean(R$styleable.MaterialButton_toggleCheckedStateOnClick, true);
        int iA = m0.A(this.f9119a);
        int paddingTop = this.f9119a.getPaddingTop();
        int iZ = m0.z(this.f9119a);
        int paddingBottom = this.f9119a.getPaddingBottom();
        if (typedArray.hasValue(R$styleable.MaterialButton_android_background)) {
            t();
        } else {
            H();
        }
        m0.z0(this.f9119a, iA + this.f9121c, paddingTop + this.f9123e, iZ + this.f9122d, paddingBottom + this.f9124f);
    }

    void s(int i10) {
        if (f() != null) {
            f().setTint(i10);
        }
    }

    void t() {
        this.f9133o = true;
        this.f9119a.setSupportBackgroundTintList(this.f9128j);
        this.f9119a.setSupportBackgroundTintMode(this.f9127i);
    }

    void u(boolean z10) {
        this.f9135q = z10;
    }

    void v(int i10) {
        if (this.f9134p && this.f9125g == i10) {
            return;
        }
        this.f9125g = i10;
        this.f9134p = true;
        z(this.f9120b.w(i10));
    }

    public void w(int i10) {
        G(this.f9123e, i10);
    }

    public void x(int i10) {
        G(i10, this.f9124f);
    }

    void y(ColorStateList colorStateList) {
        if (this.f9130l != colorStateList) {
            this.f9130l = colorStateList;
            boolean z10 = f9117u;
            if (z10 && (this.f9119a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f9119a.getBackground()).setColor(b.d(colorStateList));
            } else {
                if (z10 || !(this.f9119a.getBackground() instanceof j4.a)) {
                    return;
                }
                ((j4.a) this.f9119a.getBackground()).setTintList(b.d(colorStateList));
            }
        }
    }

    void z(n nVar) {
        this.f9120b = nVar;
        I(nVar);
    }
}
