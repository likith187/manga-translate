package com.google.android.material.card;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.shape.e;
import com.google.android.material.shape.f;
import com.google.android.material.shape.i;
import com.google.android.material.shape.m;
import com.google.android.material.shape.n;
import i4.c;

/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaterialCardView f9149a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f9151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f9152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9155g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Drawable f9157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Drawable f9158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f9159k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f9160l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private n f9161m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ColorStateList f9162n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Drawable f9163o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LayerDrawable f9164p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private i f9165q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private i f9166r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f9168t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ValueAnimator f9169u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final TimeInterpolator f9170v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f9171w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f9172x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final double f9148z = Math.cos(Math.toRadians(45.0d));
    private static final Drawable A = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f9150b = new Rect();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f9167s = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f9173y = 0.0f;

    class a extends InsetDrawable {
        a(Drawable drawable, int i10, int i11, int i12, int i13) {
            super(drawable, i10, i11, i12, i13);
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    public b(MaterialCardView materialCardView, AttributeSet attributeSet, int i10, int i11) {
        this.f9149a = materialCardView;
        i iVar = new i(materialCardView.getContext(), attributeSet, i10, i11);
        this.f9151c = iVar;
        iVar.initializeElevationOverlay(materialCardView.getContext());
        iVar.setShadowColor(-12303292);
        n.b bVarV = iVar.getShapeAppearanceModel().v();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.CardView, i10, R$style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardCornerRadius)) {
            bVarV.o(typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f));
        }
        this.f9152d = new i();
        Z(bVarV.m());
        this.f9170v = g4.i.g(materialCardView.getContext(), R$attr.motionEasingLinearInterpolator, x3.a.f16368a);
        this.f9171w = g4.i.f(materialCardView.getContext(), R$attr.motionDurationShort2, 300);
        this.f9172x = g4.i.f(materialCardView.getContext(), R$attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    private Drawable D(Drawable drawable) {
        int iCeil;
        int iCeil2;
        if (this.f9149a.getUseCompatPadding()) {
            iCeil2 = (int) Math.ceil(f());
            iCeil = (int) Math.ceil(e());
        } else {
            iCeil = 0;
            iCeil2 = 0;
        }
        return new a(drawable, iCeil, iCeil2, iCeil, iCeil2);
    }

    private boolean G() {
        return (this.f9155g & 80) == 80;
    }

    private boolean H() {
        return (this.f9155g & 8388613) == 8388613;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f9158j.setAlpha((int) (255.0f * fFloatValue));
        this.f9173y = fFloatValue;
    }

    private float c() {
        return Math.max(Math.max(d(this.f9161m.q(), this.f9151c.getTopLeftCornerResolvedSize()), d(this.f9161m.s(), this.f9151c.getTopRightCornerResolvedSize())), Math.max(d(this.f9161m.k(), this.f9151c.getBottomRightCornerResolvedSize()), d(this.f9161m.i(), this.f9151c.getBottomLeftCornerResolvedSize())));
    }

    private float d(e eVar, float f10) {
        if (eVar instanceof m) {
            return (float) ((1.0d - f9148z) * ((double) f10));
        }
        if (eVar instanceof f) {
            return f10 / 2.0f;
        }
        return 0.0f;
    }

    private boolean d0() {
        return this.f9149a.getPreventCornerOverlap() && !g();
    }

    private float e() {
        return this.f9149a.getMaxCardElevation() + (e0() ? c() : 0.0f);
    }

    private boolean e0() {
        return this.f9149a.getPreventCornerOverlap() && g() && this.f9149a.getUseCompatPadding();
    }

    private float f() {
        return (this.f9149a.getMaxCardElevation() * 1.5f) + (e0() ? c() : 0.0f);
    }

    private boolean f0() {
        if (this.f9149a.isClickable()) {
            return true;
        }
        View view = this.f9149a;
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    private boolean g() {
        return this.f9151c.isRoundRect();
    }

    private Drawable h() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        i iVarJ = j();
        this.f9165q = iVarJ;
        iVarJ.setFillColor(this.f9159k);
        stateListDrawable.addState(new int[]{16842919}, this.f9165q);
        return stateListDrawable;
    }

    private Drawable i() {
        if (!j4.b.f12752a) {
            return h();
        }
        this.f9166r = j();
        return new RippleDrawable(this.f9159k, null, this.f9166r);
    }

    private i j() {
        return new i(this.f9161m);
    }

    private void j0(Drawable drawable) {
        if (this.f9149a.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.f9149a.getForeground()).setDrawable(drawable);
        } else {
            this.f9149a.setForeground(D(drawable));
        }
    }

    private void l0() {
        Drawable drawable;
        if (j4.b.f12752a && (drawable = this.f9163o) != null) {
            ((RippleDrawable) drawable).setColor(this.f9159k);
            return;
        }
        i iVar = this.f9165q;
        if (iVar != null) {
            iVar.setFillColor(this.f9159k);
        }
    }

    private Drawable t() {
        if (this.f9163o == null) {
            this.f9163o = i();
        }
        if (this.f9164p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f9163o, this.f9152d, this.f9158j});
            this.f9164p = layerDrawable;
            layerDrawable.setId(2, R$id.mtrl_card_checked_layer_id);
        }
        return this.f9164p;
    }

    private float v() {
        if (this.f9149a.getPreventCornerOverlap() && this.f9149a.getUseCompatPadding()) {
            return (float) ((1.0d - f9148z) * ((double) this.f9149a.getCardViewRadius()));
        }
        return 0.0f;
    }

    ColorStateList A() {
        return this.f9162n;
    }

    int B() {
        return this.f9156h;
    }

    Rect C() {
        return this.f9150b;
    }

    boolean E() {
        return this.f9167s;
    }

    boolean F() {
        return this.f9168t;
    }

    void J(TypedArray typedArray) {
        ColorStateList colorStateListA = c.a(this.f9149a.getContext(), typedArray, R$styleable.MaterialCardView_strokeColor);
        this.f9162n = colorStateListA;
        if (colorStateListA == null) {
            this.f9162n = ColorStateList.valueOf(-1);
        }
        this.f9156h = typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_strokeWidth, 0);
        boolean z10 = typedArray.getBoolean(R$styleable.MaterialCardView_android_checkable, false);
        this.f9168t = z10;
        this.f9149a.setLongClickable(z10);
        this.f9160l = c.a(this.f9149a.getContext(), typedArray, R$styleable.MaterialCardView_checkedIconTint);
        R(c.e(this.f9149a.getContext(), typedArray, R$styleable.MaterialCardView_checkedIcon));
        U(typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconSize, 0));
        T(typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconMargin, 0));
        this.f9155g = typedArray.getInteger(R$styleable.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList colorStateListA2 = c.a(this.f9149a.getContext(), typedArray, R$styleable.MaterialCardView_rippleColor);
        this.f9159k = colorStateListA2;
        if (colorStateListA2 == null) {
            this.f9159k = ColorStateList.valueOf(b4.a.d(this.f9149a, R$attr.colorControlHighlight));
        }
        N(c.a(this.f9149a.getContext(), typedArray, R$styleable.MaterialCardView_cardForegroundColor));
        l0();
        i0();
        m0();
        this.f9149a.setBackgroundInternal(D(this.f9151c));
        Drawable drawableT = f0() ? t() : this.f9152d;
        this.f9157i = drawableT;
        this.f9149a.setForeground(D(drawableT));
    }

    void K(int i10, int i11) {
        int iCeil;
        int iCeil2;
        int i12;
        int i13;
        if (this.f9164p != null) {
            if (this.f9149a.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(f() * 2.0f);
                iCeil2 = (int) Math.ceil(e() * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i14 = H() ? ((i10 - this.f9153e) - this.f9154f) - iCeil2 : this.f9153e;
            int i15 = G() ? this.f9153e : ((i11 - this.f9153e) - this.f9154f) - iCeil;
            int i16 = H() ? this.f9153e : ((i10 - this.f9153e) - this.f9154f) - iCeil2;
            int i17 = G() ? ((i11 - this.f9153e) - this.f9154f) - iCeil : this.f9153e;
            if (m0.v(this.f9149a) == 1) {
                i13 = i16;
                i12 = i14;
            } else {
                i12 = i16;
                i13 = i14;
            }
            this.f9164p.setLayerInset(2, i13, i17, i12, i15);
        }
    }

    void L(boolean z10) {
        this.f9167s = z10;
    }

    void M(ColorStateList colorStateList) {
        this.f9151c.setFillColor(colorStateList);
    }

    void N(ColorStateList colorStateList) {
        i iVar = this.f9152d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        iVar.setFillColor(colorStateList);
    }

    void O(boolean z10) {
        this.f9168t = z10;
    }

    public void P(boolean z10) {
        Q(z10, false);
    }

    public void Q(boolean z10, boolean z11) {
        Drawable drawable = this.f9158j;
        if (drawable != null) {
            if (z11) {
                b(z10);
            } else {
                drawable.setAlpha(z10 ? 255 : 0);
                this.f9173y = z10 ? 1.0f : 0.0f;
            }
        }
    }

    void R(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = v.a.r(drawable).mutate();
            this.f9158j = drawableMutate;
            v.a.o(drawableMutate, this.f9160l);
            P(this.f9149a.isChecked());
        } else {
            this.f9158j = A;
        }
        LayerDrawable layerDrawable = this.f9164p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R$id.mtrl_card_checked_layer_id, this.f9158j);
        }
    }

    void S(int i10) {
        this.f9155g = i10;
        K(this.f9149a.getMeasuredWidth(), this.f9149a.getMeasuredHeight());
    }

    void T(int i10) {
        this.f9153e = i10;
    }

    void U(int i10) {
        this.f9154f = i10;
    }

    void V(ColorStateList colorStateList) {
        this.f9160l = colorStateList;
        Drawable drawable = this.f9158j;
        if (drawable != null) {
            v.a.o(drawable, colorStateList);
        }
    }

    void W(float f10) {
        Z(this.f9161m.w(f10));
        this.f9157i.invalidateSelf();
        if (e0() || d0()) {
            h0();
        }
        if (e0()) {
            k0();
        }
    }

    void X(float f10) {
        this.f9151c.setInterpolation(f10);
        i iVar = this.f9152d;
        if (iVar != null) {
            iVar.setInterpolation(f10);
        }
        i iVar2 = this.f9166r;
        if (iVar2 != null) {
            iVar2.setInterpolation(f10);
        }
    }

    void Y(ColorStateList colorStateList) {
        this.f9159k = colorStateList;
        l0();
    }

    void Z(n nVar) {
        this.f9161m = nVar;
        this.f9151c.setShapeAppearanceModel(nVar);
        this.f9151c.setShadowBitmapDrawingEnable(!r0.isRoundRect());
        i iVar = this.f9152d;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
        i iVar2 = this.f9166r;
        if (iVar2 != null) {
            iVar2.setShapeAppearanceModel(nVar);
        }
        i iVar3 = this.f9165q;
        if (iVar3 != null) {
            iVar3.setShapeAppearanceModel(nVar);
        }
    }

    void a0(ColorStateList colorStateList) {
        if (this.f9162n == colorStateList) {
            return;
        }
        this.f9162n = colorStateList;
        m0();
    }

    public void b(boolean z10) {
        float f10 = z10 ? 1.0f : 0.0f;
        float f11 = z10 ? 1.0f - this.f9173y : this.f9173y;
        ValueAnimator valueAnimator = this.f9169u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f9169u = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f9173y, f10);
        this.f9169u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.card.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f9147a.I(valueAnimator2);
            }
        });
        this.f9169u.setInterpolator(this.f9170v);
        this.f9169u.setDuration((long) ((z10 ? this.f9171w : this.f9172x) * f11));
        this.f9169u.start();
    }

    void b0(int i10) {
        if (i10 == this.f9156h) {
            return;
        }
        this.f9156h = i10;
        m0();
    }

    void c0(int i10, int i11, int i12, int i13) {
        this.f9150b.set(i10, i11, i12, i13);
        h0();
    }

    void g0() {
        Drawable drawable = this.f9157i;
        Drawable drawableT = f0() ? t() : this.f9152d;
        this.f9157i = drawableT;
        if (drawable != drawableT) {
            j0(drawableT);
        }
    }

    void h0() {
        int iC = (int) (((d0() || e0()) ? c() : 0.0f) - v());
        MaterialCardView materialCardView = this.f9149a;
        Rect rect = this.f9150b;
        materialCardView.k(rect.left + iC, rect.top + iC, rect.right + iC, rect.bottom + iC);
    }

    void i0() {
        this.f9151c.setElevation(this.f9149a.getCardElevation());
    }

    void k() {
        Drawable drawable = this.f9163o;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i10 = bounds.bottom;
            this.f9163o.setBounds(bounds.left, bounds.top, bounds.right, i10 - 1);
            this.f9163o.setBounds(bounds.left, bounds.top, bounds.right, i10);
        }
    }

    void k0() {
        if (!E()) {
            this.f9149a.setBackgroundInternal(D(this.f9151c));
        }
        this.f9149a.setForeground(D(this.f9157i));
    }

    i l() {
        return this.f9151c;
    }

    ColorStateList m() {
        return this.f9151c.getFillColor();
    }

    void m0() {
        this.f9152d.setStroke(this.f9156h, this.f9162n);
    }

    ColorStateList n() {
        return this.f9152d.getFillColor();
    }

    Drawable o() {
        return this.f9158j;
    }

    int p() {
        return this.f9155g;
    }

    int q() {
        return this.f9153e;
    }

    int r() {
        return this.f9154f;
    }

    ColorStateList s() {
        return this.f9160l;
    }

    float u() {
        return this.f9151c.getTopLeftCornerResolvedSize();
    }

    float w() {
        return this.f9151c.getInterpolation();
    }

    ColorStateList x() {
        return this.f9159k;
    }

    n y() {
        return this.f9161m;
    }

    int z() {
        ColorStateList colorStateList = this.f9162n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }
}
