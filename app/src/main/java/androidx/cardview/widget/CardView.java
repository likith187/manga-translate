package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.cardview.R$attr;
import androidx.cardview.R$color;
import androidx.cardview.R$style;
import androidx.cardview.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f1013k = {R.attr.colorBackground};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final c f1014l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1017c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1018f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Rect f1019h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Rect f1020i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f1021j;

    class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable f1022a;

        a() {
        }

        @Override // androidx.cardview.widget.b
        public Drawable getCardBackground() {
            return this.f1022a;
        }

        @Override // androidx.cardview.widget.b
        public View getCardView() {
            return CardView.this;
        }

        @Override // androidx.cardview.widget.b
        public boolean getPreventCornerOverlap() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // androidx.cardview.widget.b
        public boolean getUseCompatPadding() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.b
        public void setCardBackground(Drawable drawable) {
            this.f1022a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // androidx.cardview.widget.b
        public void setShadowPadding(int i10, int i11, int i12, int i13) {
            CardView.this.f1020i.set(i10, i11, i12, i13);
            CardView cardView = CardView.this;
            Rect rect = cardView.f1019h;
            CardView.super.setPadding(i10 + rect.left, i11 + rect.top, i12 + rect.right, i13 + rect.bottom);
        }
    }

    static {
        androidx.cardview.widget.a aVar = new androidx.cardview.widget.a();
        f1014l = aVar;
        aVar.initStatic();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public void f(int i10, int i11, int i12, int i13) {
        this.f1019h.set(i10, i11, i12, i13);
        f1014l.f(this.f1021j);
    }

    public ColorStateList getCardBackgroundColor() {
        return f1014l.b(this.f1021j);
    }

    public float getCardElevation() {
        return f1014l.e(this.f1021j);
    }

    public int getContentPaddingBottom() {
        return this.f1019h.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1019h.left;
    }

    public int getContentPaddingRight() {
        return this.f1019h.right;
    }

    public int getContentPaddingTop() {
        return this.f1019h.top;
    }

    public float getMaxCardElevation() {
        return f1014l.a(this.f1021j);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1016b;
    }

    public float getRadius() {
        return f1014l.g(this.f1021j);
    }

    public boolean getUseCompatPadding() {
        return this.f1015a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (f1014l instanceof androidx.cardview.widget.a) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.i(this.f1021j)), View.MeasureSpec.getSize(i10)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.h(this.f1021j)), View.MeasureSpec.getSize(i11)), mode2);
        }
        super.onMeasure(i10, i11);
    }

    public void setCardBackgroundColor(int i10) {
        f1014l.m(this.f1021j, ColorStateList.valueOf(i10));
    }

    public void setCardElevation(float f10) {
        f1014l.k(this.f1021j, f10);
    }

    public void setMaxCardElevation(float f10) {
        f1014l.n(this.f1021j, f10);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i10) {
        this.f1018f = i10;
        super.setMinimumHeight(i10);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i10) {
        this.f1017c = i10;
        super.setMinimumWidth(i10);
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
    }

    public void setPreventCornerOverlap(boolean z10) {
        if (z10 != this.f1016b) {
            this.f1016b = z10;
            f1014l.l(this.f1021j);
        }
    }

    public void setRadius(float f10) {
        f1014l.d(this.f1021j, f10);
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f1015a != z10) {
            this.f1015a = z10;
            f1014l.j(this.f1021j);
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.cardViewStyle);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f1014l.m(this.f1021j, colorStateList);
    }

    public CardView(Context context, AttributeSet attributeSet, int i10) {
        int color;
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i10);
        Rect rect = new Rect();
        this.f1019h = rect;
        this.f1020i = new Rect();
        a aVar = new a();
        this.f1021j = aVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CardView, i10, R$style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardBackgroundColor)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f1013k);
            int color2 = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(R$color.cardview_light_background);
            } else {
                color = getResources().getColor(R$color.cardview_dark_background);
            }
            colorStateListValueOf = ColorStateList.valueOf(color);
        }
        ColorStateList colorStateList = colorStateListValueOf;
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardElevation, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardMaxElevation, 0.0f);
        this.f1015a = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardUseCompatPadding, false);
        this.f1016b = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPadding, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        float f10 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1017c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minWidth, 0);
        this.f1018f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        f1014l.c(aVar, context, colorStateList, dimension, dimension2, f10);
    }
}
