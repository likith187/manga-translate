package com.coui.appcompat.poplist;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.COUIBackgroundBlurBuilder;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.graphics.OplusOutline;
import com.oplus.graphics.OplusOutlineAdapter;
import com.oplus.graphics.OplusPath;
import com.oplus.graphics.OplusPathAdapter;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;
import com.support.poplist.R$color;
import com.support.poplist.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class RoundFrameLayout extends FrameLayout {
    public static final int CANVAS_CLIP = 0;
    private static final int MAX_COLOR = 255;
    public static final int OUTLINE_CLIP = 1;
    private static final String TAG = "RoundFrameLayout";
    private boolean mAllowDispatchEvent;
    private COUIBackgroundBlurBuilder mBackgroundBlurBuilder;
    private int mClipMode;
    private Boolean mIsSupportSRCWhenBlur;
    private boolean mIsSupportSmoothRoundCorner;
    private OplusPathAdapter mOplusPathAdapter;
    private float mOutlineAlpha;
    private final Rect mOutlineRect;
    private final Rect mOverrideRect;
    private Paint mPaint;
    private Path mPath;
    private float mRadius;
    private RectF mRectF;
    private float mRoundCornerRadius;
    private float mRoundCornerWeight;

    public RoundFrameLayout(Context context) {
        this(context, null);
    }

    private void dispatchDraw27(Canvas canvas) {
        canvas.saveLayer(this.mRectF, null, 31);
        super.dispatchDraw(canvas);
        canvas.drawPath(genPath(), this.mPaint);
        canvas.restore();
    }

    private void dispatchDraw28(Canvas canvas) {
        canvas.save();
        canvas.clipPath(genPath());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean execute15SRC() {
        return isAdaptedOn15() || isAdaptedOn16();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean execute16SRC() {
        return RoundCornerUtil.getSmoothStyleType() == 1 && isSupportSRCWithBlur() && this.mRoundCornerRadius != 0.0f;
    }

    private Path genPath() {
        this.mPath.reset();
        if (execute16SRC()) {
            if (this.mOplusPathAdapter == null) {
                this.mOplusPathAdapter = new OplusPathAdapter(this.mPath, 1);
            }
            OplusPathAdapter oplusPathAdapter = this.mOplusPathAdapter;
            RectF rectF = this.mRectF;
            float f10 = this.mRoundCornerRadius;
            oplusPathAdapter.addSmoothRoundRect(rectF, f10, f10, Path.Direction.CCW);
        } else if (execute15SRC()) {
            new OplusPath(this.mPath).addSmoothRoundRect(this.mRectF, this.mRadius, this.mRoundCornerWeight, Path.Direction.CW);
        } else {
            float f11 = this.mRadius;
            if (f11 == 0.0f) {
                f11 = this.mRoundCornerRadius;
            }
            this.mPath.addRoundRect(this.mRectF, f11, f11, Path.Direction.CW);
        }
        return this.mPath;
    }

    private boolean isAdaptedOn15() {
        return RoundCornerUtil.getSmoothStyleType() == 0 && isSupportSRCWithBlur() && this.mRoundCornerWeight != 0.0f && this.mRadius != 0.0f;
    }

    private boolean isAdaptedOn16() {
        return RoundCornerUtil.getSmoothStyleType() == 1 && isSupportSRCWithBlur() && this.mRoundCornerRadius == 0.0f && this.mRoundCornerWeight != 0.0f && this.mRadius != 0.0f;
    }

    private boolean isSupportSRCWithBlur() {
        return !this.mBackgroundBlurBuilder.useBackgroundBlur() || this.mIsSupportSRCWhenBlur.booleanValue();
    }

    public void clearOverrideOutline() {
        this.mOverrideRect.setEmpty();
        this.mOutlineAlpha = 1.0f;
        invalidateOutline();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!this.mOverrideRect.isEmpty()) {
            getBackground().setBounds(this.mOverrideRect);
        }
        dispatchDraw28(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.mAllowDispatchEvent) {
            return false;
        }
        if (this.mOverrideRect.isEmpty() || this.mOverrideRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.mOverrideRect.isEmpty()) {
            getBackground().setBounds(this.mOverrideRect);
        }
        super.draw(canvas);
    }

    boolean getUseBackgroundBlur() {
        return this.mBackgroundBlurBuilder.useBackgroundBlur();
    }

    void initUseBackgroundBlur(boolean z10) {
        initUseBackgroundBlur(z10, UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isHardwareAccelerated()) {
            COUILog.e(TAG, "Hardware accelerate is disabled! Set background blur failed.");
            return;
        }
        if (this.mBackgroundBlurBuilder.useBackgroundBlur() && this.mBackgroundBlurBuilder.isMaterialBlurEnabled()) {
            this.mBackgroundBlurBuilder.setTargetView(this);
            if (this.mIsSupportSRCWhenBlur.booleanValue()) {
                COUILog.i(TAG, "current version support roundCorner when use blur");
                this.mBackgroundBlurBuilder.setSmoothWeight(COUIContextUtil.getAttrFloat(getContext(), R$attr.couiRoundCornerMWeight));
            }
            this.mBackgroundBlurBuilder.setCornerRadius(getContext().getResources().getDimensionPixelOffset(R$dimen.coui_round_corner_m_radius));
            this.mBackgroundBlurBuilder.applyBlurBackground();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mBackgroundBlurBuilder.release();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mRectF.set(getPaddingLeft(), getPaddingTop(), i10 - getPaddingRight(), i11 - getPaddingBottom());
    }

    public void setAllowDispatchEvent(boolean z10) {
        this.mAllowDispatchEvent = z10;
    }

    @Override // android.view.View
    public void setAlpha(float f10) {
        super.setAlpha(f10);
        if (!this.mBackgroundBlurBuilder.useBackgroundBlur() || getBackground() == null) {
            return;
        }
        getBackground().setAlpha((int) (f10 * 255.0f));
    }

    public void setClipMode(int i10) {
        this.mClipMode = i10;
        if (i10 == 0) {
            setClipToOutline(false);
            setElevation(0.0f);
            setBackgroundColor(0);
        } else if (i10 == 1) {
            setClipToOutline(true);
            if (ShadowUtils.checkOPlusViewElevationSDK()) {
                ShadowUtils.setElevationToView(this, 3);
            } else {
                setElevation(getContext().getResources().getDimensionPixelSize(R$dimen.support_shadow_size_level_five));
                setOutlineSpotShadowColor(r.a.c(getContext(), R$color.coui_popup_outline_spot_shadow_color));
            }
            setBackgroundColor(-1);
        }
    }

    public void setOverrideOutline(int i10, int i11, int i12, int i13, float f10) {
        this.mOutlineAlpha = f10;
        this.mOverrideRect.set(i10, i11, i12, i13);
        if (getBackground() != null) {
            getBackground().setBounds(this.mOverrideRect);
        }
        invalidateOutline();
    }

    public void setRadius(float f10) {
        this.mRadius = f10;
        postInvalidate();
    }

    public RoundFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    void initUseBackgroundBlur(boolean z10, AnimLevel animLevel) {
        this.mBackgroundBlurBuilder.setUseBackgroundBlur(z10, animLevel);
    }

    public RoundFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mOutlineRect = new Rect();
        this.mOverrideRect = new Rect();
        this.mOutlineAlpha = 1.0f;
        this.mAllowDispatchEvent = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoundFrameLayout);
        this.mRoundCornerRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundFrameLayout_couiRoundCornerRadius, 0.0f);
        this.mRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundFrameLayout_rfRadius, 0.0f);
        this.mClipMode = typedArrayObtainStyledAttributes.getInt(R$styleable.RoundFrameLayout_couiClipType, 0);
        this.mRoundCornerWeight = typedArrayObtainStyledAttributes.getFloat(R$styleable.RoundFrameLayout_couirfRoundCornerWeight, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.mPath = new Path();
        this.mPaint = new Paint(1);
        this.mRectF = new RectF();
        this.mIsSupportSmoothRoundCorner = RoundCornerUtil.isVersionSupport();
        this.mIsSupportSRCWhenBlur = Boolean.valueOf(RoundCornerUtil.isSupportRoundCornerWhenBlur());
        this.mPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.poplist.RoundFrameLayout.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (RoundFrameLayout.this.mOverrideRect.isEmpty()) {
                    RoundFrameLayout.this.mOutlineRect.set((int) RoundFrameLayout.this.mRectF.left, (int) RoundFrameLayout.this.mRectF.top, (int) RoundFrameLayout.this.mRectF.right, (int) RoundFrameLayout.this.mRectF.bottom);
                } else {
                    outline.setAlpha(RoundFrameLayout.this.mOutlineAlpha);
                    RoundFrameLayout.this.mOutlineRect.set(RoundFrameLayout.this.mOverrideRect);
                }
                if (RoundFrameLayout.this.execute16SRC()) {
                    new OplusOutlineAdapter(outline, 1).setSmoothRoundRect(RoundFrameLayout.this.mOutlineRect, RoundFrameLayout.this.mRoundCornerRadius);
                    return;
                }
                if (RoundFrameLayout.this.execute15SRC()) {
                    new OplusOutline(outline).setSmoothRoundRect(RoundFrameLayout.this.mOutlineRect, RoundFrameLayout.this.mRadius, RoundFrameLayout.this.mRoundCornerWeight);
                    return;
                }
                Rect rect = RoundFrameLayout.this.mOutlineRect;
                float f10 = RoundFrameLayout.this.mRadius;
                RoundFrameLayout roundFrameLayout = RoundFrameLayout.this;
                outline.setRoundRect(rect, f10 != 0.0f ? roundFrameLayout.mRadius : roundFrameLayout.mRoundCornerRadius);
            }
        });
        setClipMode(this.mClipMode);
        setDefaultFocusHighlightEnabled(false);
        COUIBackgroundBlurBuilder cOUIBackgroundBlurBuilder = new COUIBackgroundBlurBuilder(getContext());
        this.mBackgroundBlurBuilder = cOUIBackgroundBlurBuilder;
        cOUIBackgroundBlurBuilder.setMixColorLight(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), com.support.appcompat.R$color.coui_popup_list_mix_blur_light)));
        this.mBackgroundBlurBuilder.setMixColorDark(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), com.support.appcompat.R$color.coui_popup_list_mix_blur_dark)));
        this.mBackgroundBlurBuilder.setBlendColorLight(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), com.support.appcompat.R$color.coui_popup_list_blend_blur_light)));
        this.mBackgroundBlurBuilder.setBlendColorDark(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), com.support.appcompat.R$color.coui_popup_list_blend_blur_dark)));
    }
}
