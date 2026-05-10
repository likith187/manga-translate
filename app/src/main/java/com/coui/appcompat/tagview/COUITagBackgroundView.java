package com.coui.appcompat.tagview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import com.coui.appcompat.theme.COUIThemeUtils;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;
import com.support.reddot.R$attr;
import com.support.reddot.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUITagBackgroundView extends LinearLayout {
    private boolean isChangedShapeModel;
    private int mCardBLCornerRadius;
    private int mCardBRCornerRadius;
    private int mCardCornerRadius;
    private int mCardTLCornerRadius;
    private int mCardTRCornerRadius;
    private final Path mClipPath;
    private final RectF mClipRectF;
    private ColorStateList mColorStateList;
    private i mMaterialShapeDrawable;
    private Paint mPaint;
    private n mShapeAppearanceModel;
    private int mStrokeColor;
    private ColorStateList mStrokeStateColor;
    private float mStrokeWidth;

    public COUITagBackgroundView(Context context) {
        this(context, null);
    }

    private void dispatchDrawInner(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.mClipPath);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    private void generateModel() {
        this.mShapeAppearanceModel = new n.b().J(0, this.mCardTRCornerRadius).y(0, this.mCardBRCornerRadius).E(0, this.mCardTLCornerRadius).t(0, this.mCardBLCornerRadius).m();
        this.isChangedShapeModel = true;
    }

    private void initDrawable() {
        i iVar = this.mMaterialShapeDrawable;
        if (iVar == null) {
            this.mMaterialShapeDrawable = new i(this.mShapeAppearanceModel);
        } else {
            iVar.setShapeAppearanceModel(this.mShapeAppearanceModel);
        }
        this.mMaterialShapeDrawable.setShadowCompatibilityMode(2);
        this.mMaterialShapeDrawable.initializeElevationOverlay(getContext());
        this.mMaterialShapeDrawable.setFillColor(this.mColorStateList);
        this.mMaterialShapeDrawable.setStroke(this.mStrokeWidth, this.mStrokeStateColor);
    }

    private void setupDrawable() {
        setBackground(this.mMaterialShapeDrawable);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.isChangedShapeModel) {
            this.mClipRectF.set(getBackground().getBounds());
            o.k().d(this.mShapeAppearanceModel, 1.0f, this.mClipRectF, this.mClipPath);
            this.isChangedShapeModel = false;
        }
        dispatchDrawInner(canvas);
    }

    public int getCardBLCornerRadius() {
        return this.mCardBLCornerRadius;
    }

    public int getCardBRCornerRadius() {
        return this.mCardBRCornerRadius;
    }

    public int getCardCornerRadius() {
        return this.mCardCornerRadius;
    }

    public int getCardTLCornerRadius() {
        return this.mCardTLCornerRadius;
    }

    public int getCardTRCornerRadius() {
        return this.mCardTRCornerRadius;
    }

    public ColorStateList getColorStateList() {
        return this.mColorStateList;
    }

    public i getMaterialShapeDrawable() {
        return this.mMaterialShapeDrawable;
    }

    public int getStrokeColor() {
        return this.mStrokeColor;
    }

    public ColorStateList getStrokeStateColor() {
        return this.mStrokeStateColor;
    }

    public float getStrokeWidth() {
        return this.mStrokeWidth;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent != null) {
            ((ViewGroup) parent).setClipChildren(false);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.isChangedShapeModel = true;
    }

    public void setCardBLCornerRadius(int i10) {
        this.mCardBLCornerRadius = i10;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public void setCardBRCornerRadius(int i10) {
        this.mCardBRCornerRadius = i10;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public void setCardCornerRadius(int i10) {
        this.mCardCornerRadius = i10;
        this.mCardBLCornerRadius = i10;
        this.mCardBRCornerRadius = i10;
        this.mCardTLCornerRadius = i10;
        this.mCardTRCornerRadius = i10;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public void setCardTLCornerRadius(int i10) {
        this.mCardTLCornerRadius = i10;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public void setCardTRCornerRadius(int i10) {
        this.mCardTRCornerRadius = i10;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public void setColorStateList(ColorStateList colorStateList) {
        this.mColorStateList = colorStateList;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public void setStrokeColor(int i10) {
        this.mStrokeColor = i10;
        setStrokeStateColor(ColorStateList.valueOf(i10));
    }

    public void setStrokeStateColor(ColorStateList colorStateList) {
        this.mStrokeStateColor = colorStateList;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public void setStrokeWidth(float f10) {
        this.mStrokeWidth = f10;
        generateModel();
        initDrawable();
        setupDrawable();
    }

    public COUITagBackgroundView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUITagBackgroundView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mStrokeWidth = 0.0f;
        this.mStrokeColor = 0;
        this.mStrokeStateColor = ColorStateList.valueOf(0);
        this.mClipPath = new Path();
        this.mClipRectF = new RectF();
        this.isChangedShapeModel = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUITagBackgroundView);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITagBackgroundView_couiTagCornerRadius, 0);
        this.mCardCornerRadius = dimensionPixelSize;
        this.mCardTLCornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITagBackgroundView_couiTagTLCornerRadius, dimensionPixelSize);
        this.mCardTRCornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITagBackgroundView_couiTagTRCornerRadius, this.mCardCornerRadius);
        this.mCardBLCornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITagBackgroundView_couiTagBLCornerRadius, this.mCardCornerRadius);
        this.mCardBRCornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITagBackgroundView_couiTagBRCornerRadius, this.mCardCornerRadius);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUITagBackgroundView_couiTagBackgroundColor);
        this.mColorStateList = colorStateList;
        if (colorStateList == null) {
            this.mColorStateList = ColorStateList.valueOf(COUIThemeUtils.getThemeAttrColor(context, R$attr.couiColorBackgroundWithTag));
        }
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUITagBackgroundView_couiTagStrokeColor);
        this.mStrokeStateColor = colorStateList2;
        if (colorStateList2 == null) {
            this.mStrokeStateColor = ColorStateList.valueOf(0);
        }
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        this.mStrokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITagBackgroundView_couiTagStrokeWidth, 0);
        generateModel();
        initDrawable();
        setupDrawable();
        typedArrayObtainStyledAttributes.recycle();
    }
}
