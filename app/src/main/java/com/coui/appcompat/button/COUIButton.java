package com.coui.appcompat.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.m0;
import com.coui.appcompat.button.listener.OnSizeChangeListener;
import com.coui.appcompat.button.listener.OnTextChangeListener;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundRect.COUIRoundRectUtil;
import com.coui.appcompat.roundRect.COUIShapePath;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.state.COUIMaskEffectDrawable;
import com.coui.appcompat.state.COUIMaskRippleDrawable;
import com.coui.appcompat.state.COUIStateEffectDrawable;
import com.coui.appcompat.state.COUIStrokeDrawable;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;
import com.support.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIButton extends AppCompatButton {
    public static final int BORDERLESS_BUTTON_ANIM = 0;
    public static final int COMMON_ROUND = 1;
    private static final float DEFAULT_BRIGHTNESS_MAX_VALUE = 0.8f;
    public static final float DEFAULT_RADIUS = -1.0f;
    public static final int DIALOG_BORDERLESS_BUTTON_ANIM = 2;
    public static final int FILL_BUTTON_ANIM = 1;
    private static final float HALF_HEIGHT = 2.0f;
    private static final int MAX_COLOR_VALUE = 255;
    public static final int RADIUS_HALF_HEIGHT = -1;
    public static final int SMOOTH_ROUND = 0;
    private static String TAG = "COUIButton";
    private boolean isLimitHeight;
    private boolean mAnimEnable;
    private int mAnimType;
    private final Path mBackgroundPath;
    private int mButtonHeight;
    private int mButtonMaxHeight;
    private int mButtonMaxWidth;
    private int mButtonWidth;
    private float[] mColorHsl;
    private float mCurrentBrightness;
    private float mCurrentScale;
    private String mDescText;
    private int mDisabledColor;
    private int mDrawableColor;
    private final Paint mFillPaint;
    private float mFocusedStrokeRadius;
    private boolean mIsDescType;
    private boolean mIsNeedVibrate;
    private COUIMaskEffectDrawable mMaskDrawable;
    private float mMaxBrightness;
    private int mMaxSingleLargeWidth;
    private boolean mNeedLimitMaxWidth;
    private OnSizeChangeListener mOnSizeChangeListener;
    private OnTextChangeListener mOnTextChangeListener;
    private Rect mOplusOutLineRect;
    private OplusOutlineAdapter mOplusOutline;
    private int mPressColor;
    private float mRadius;
    private float mRadiusOffset;
    private COUIMaskRippleDrawable mRippleBackgroundDrawable;
    private int mRoundType;
    private boolean mScaleEnable;
    private COUIStateEffectDrawable mStateEffectBackground;
    private int mStrokeColor;
    private COUIStrokeDrawable mStrokeDrawable;
    private Path mStrokePath;
    private RectF mStrokeRectF;
    private float mStrokeWidth;
    private int mStyle;
    private String mText;
    private Rect mTmpRect;
    private RectF mTmpRectF;
    private float mWeight;

    public COUIButton(Context context) {
        this(context, null);
    }

    private void adapterDisableColor(TypedArray typedArray) {
        int attrId = COUIContextUtil.getAttrId(getContext(), R$attr.couiColorDisable, 0);
        int resourceId = typedArray.getResourceId(R$styleable.COUIButton_disabledColor, 0);
        if (attrId == 0 || attrId != resourceId) {
            this.mDisabledColor = typedArray.getColor(R$styleable.COUIButton_disabledColor, 0);
        } else {
            this.mDisabledColor = COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorDisable);
        }
    }

    private void drawButtonBackground(Canvas canvas) {
        if (this.mAnimEnable) {
            int iSave = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            this.mFillPaint.setStyle(Paint.Style.FILL);
            this.mFillPaint.setAntiAlias(true);
            if (this.mAnimType == 1) {
                this.mFillPaint.setColor(isEnabled() ? this.mDrawableColor : this.mDisabledColor);
            } else {
                this.mFillPaint.setColor(getStrokeButtonAnimatorColor(this.mDrawableColor));
            }
            if (this.mRoundType == 1) {
                float drawableRadius = getDrawableRadius();
                canvas.drawRoundRect(this.mTmpRectF, drawableRadius, drawableRadius, this.mFillPaint);
                if (this.mAnimType != 1) {
                    float drawableRadius2 = (getDrawableRadius(this.mStrokeRectF) + this.mRadiusOffset) - this.mStrokeWidth;
                    this.mFillPaint.setColor(isEnabled() ? this.mStrokeColor : this.mDisabledColor);
                    this.mFillPaint.setStrokeWidth(this.mStrokeWidth);
                    this.mFillPaint.setStyle(Paint.Style.STROKE);
                    canvas.drawRoundRect(this.mStrokeRectF, drawableRadius2, drawableRadius2, this.mFillPaint);
                }
            } else if (isOs16()) {
                canvas.drawRect(this.mTmpRect, this.mFillPaint);
                if (this.mAnimType == 0) {
                    canvas.save();
                    Path path = this.mStrokePath;
                    RectF rectF = this.mStrokeRectF;
                    COUIShapePath.getSmoothRoundRectPath(path, rectF, getDrawableRadius(rectF), this.mWeight);
                    canvas.clipOutPath(this.mStrokePath);
                    canvas.drawColor(isEnabled() ? this.mStrokeColor : this.mDisabledColor);
                    canvas.restore();
                }
            } else {
                canvas.drawPath(this.mBackgroundPath, this.mFillPaint);
                if (this.mAnimType != 1) {
                    this.mFillPaint.setColor(isEnabled() ? this.mStrokeColor : this.mDisabledColor);
                    this.mFillPaint.setStrokeWidth(this.mStrokeWidth);
                    this.mFillPaint.setStyle(Paint.Style.STROKE);
                    COUIRoundRectUtil cOUIRoundRectUtil = COUIRoundRectUtil.getInstance();
                    RectF rectF2 = this.mStrokeRectF;
                    canvas.drawPath(cOUIRoundRectUtil.getPath(rectF2, (getDrawableRadius(rectF2) + this.mRadiusOffset) - this.mStrokeWidth), this.mFillPaint);
                }
            }
            canvas.restoreToCount(iSave);
        }
    }

    private void drawMaskAndStroke(Canvas canvas) {
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        this.mMaskDrawable.draw(canvas);
        this.mStrokeDrawable.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    private int getAnimatorColor() {
        return !isEnabled() ? this.mDisabledColor : u.d.o(this.mMaskDrawable.getCompositeMaskColor(), this.mDrawableColor);
    }

    private SpannableString getDescTypeText(String str) {
        DescButtonTextSpan descButtonTextSpan = new DescButtonTextSpan(getContext(), str, this.mDescText, (this.mButtonMaxWidth - getPaddingStart()) - getPaddingRight(), (this.mButtonWidth - getPaddingStart()) - getPaddingRight(), (this.mButtonHeight - getPaddingBottom()) - getPaddingTop(), getCurrentTextColor(), getPaint(), isLayoutRTL());
        SpannableString spannableString = new SpannableString("  ");
        spannableString.setSpan(descButtonTextSpan, spannableString.length() - 1, spannableString.length(), 33);
        return spannableString;
    }

    private int getStrokeButtonAnimatorColor(int i10) {
        return 0;
    }

    private void initStatefulBackground(Context context) {
        this.mFocusedStrokeRadius = context.getResources().getDimension(R$dimen.default_focus_stroke_radius);
        Drawable background = getBackground();
        COUIMaskEffectDrawable cOUIMaskEffectDrawable = new COUIMaskEffectDrawable(context, 0);
        this.mMaskDrawable = cOUIMaskEffectDrawable;
        cOUIMaskEffectDrawable.setMaskPath(this.mBackgroundPath);
        this.mMaskDrawable.setCallback(this);
        COUIStrokeDrawable cOUIStrokeDrawable = new COUIStrokeDrawable(context);
        this.mStrokeDrawable = cOUIStrokeDrawable;
        cOUIStrokeDrawable.setStrokePath(this.mBackgroundPath);
        this.mStrokeDrawable.setCallback(this);
        COUIMaskRippleDrawable cOUIMaskRippleDrawable = new COUIMaskRippleDrawable(context);
        this.mRippleBackgroundDrawable = cOUIMaskRippleDrawable;
        cOUIMaskRippleDrawable.setCustomRippleMask();
        this.mRippleBackgroundDrawable.setMaskPath(this.mBackgroundPath);
        if (background == null) {
            background = new ColorDrawable(0);
        }
        this.mStateEffectBackground = new COUIStateEffectDrawable(new Drawable[]{background, this.mRippleBackgroundDrawable});
        setScaleEnable(this.mScaleEnable);
        super.setBackground(this.mStateEffectBackground);
        setAnimType(this.mAnimType);
    }

    private boolean isLayoutRTL() {
        return m0.v(this) == 1;
    }

    private boolean isOs16() {
        return RoundCornerUtil.getSmoothStyleType() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setText$0(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(getDescTypeText(charSequence.toString()), bufferType);
    }

    private int limitLargeButtonMaxWidth(int i10) {
        if (!this.mNeedLimitMaxWidth || i10 == 0 || getLayoutParams() == null) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int i11 = this.mButtonMaxWidth;
        int i12 = this.mMaxSingleLargeWidth;
        if (i11 <= i12) {
            return 0;
        }
        layoutParams.width = i12;
        return View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
    }

    private void performHapticFeedback() {
        if (this.mIsNeedVibrate) {
            performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        }
    }

    private void setIsDescTypeStyle() {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_btn_desc_padding_horizontal);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.coui_btn_desc_padding_vertical);
        setPaddingRelative(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2);
        setGravity(17);
        int dpG2Size = (int) COUIChangeTextUtil.getDpG2Size(getResources().getDimensionPixelSize(R$dimen.coui_btn_desc_height_min), getResources().getConfiguration().fontScale);
        setMinHeight(dpG2Size);
        setMinimumHeight(dpG2Size);
        setMinWidth(0);
        setMinimumWidth(0);
        requestLayout();
    }

    private void startAnimMode() {
        if (this.mAnimType == 1) {
            setBackgroundDrawable(null);
        }
    }

    private boolean supportAddOnSmoothRound() {
        return isOs16() && this.mRoundType == 0;
    }

    private void updateRoundRectPath() {
        COUIShapePath.getRoundRectPath(this.mBackgroundPath, this.mTmpRectF, getDrawableRadius());
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (isEnabled() && motionEvent.getActionMasked() == 9) {
            this.mMaskDrawable.setHoverEntered();
        }
        if (motionEvent.getActionMasked() == 10 && isHovered()) {
            this.mMaskDrawable.setHoverExited();
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        updateRoundRectPath();
        super.draw(canvas);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        COUIMaskEffectDrawable cOUIMaskEffectDrawable = this.mMaskDrawable;
        if (cOUIMaskEffectDrawable != null) {
            cOUIMaskEffectDrawable.setState(getDrawableState());
        }
        COUIStrokeDrawable cOUIStrokeDrawable = this.mStrokeDrawable;
        if (cOUIStrokeDrawable != null) {
            cOUIStrokeDrawable.setState(getDrawableState());
        }
    }

    public String getDescText() {
        return this.mDescText;
    }

    public int getDrawableColor() {
        return this.mDrawableColor;
    }

    public float getDrawableRadius() {
        return getDrawableRadius(this.mTmpRect);
    }

    public int getMeasureMaxHeight() {
        return this.mButtonMaxHeight;
    }

    public int getMeasureMaxWidth() {
        return this.mButtonMaxWidth;
    }

    public int getRoundType() {
        return this.mRoundType;
    }

    @Override // android.view.View
    public int getSolidColor() {
        return (this.mAnimEnable && this.mAnimType == 1) ? getAnimatorColor() : super.getSolidColor();
    }

    public float getStrokeWidth() {
        return this.mStrokeWidth;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        return isDescType() ? this.mText : super.getText();
    }

    @Override // android.widget.TextView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
        invalidate();
    }

    public boolean isDescType() {
        return (!this.mIsDescType || TextUtils.isEmpty(this.mText) || TextUtils.isEmpty(this.mDescText)) ? false : true;
    }

    public boolean isLimitHeight() {
        return this.isLimitHeight;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        drawButtonBackground(canvas);
        drawMaskAndStroke(canvas);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (z10) {
            this.mStrokeDrawable.setFocusEntered();
            this.mMaskDrawable.setFocusEntered();
        } else {
            this.mStrokeDrawable.setFocusExited();
            this.mMaskDrawable.setFocusExited();
        }
        ViewParent parent = getParent();
        if (this.mAnimType == 1 && (parent instanceof ViewGroup) && !((ViewGroup) parent).getClipChildren()) {
            COUILog.w(TAG, "Button parent view should set clip children false to make drawing focused stroke effect works.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.mTmpRect.right = getWidth();
        this.mTmpRect.bottom = getHeight();
        this.mTmpRectF.set(this.mTmpRect);
        if (supportAddOnSmoothRound()) {
            RectF rectF = this.mStrokeRectF;
            float f10 = this.mTmpRect.top;
            float f11 = this.mStrokeWidth;
            rectF.top = f10 + f11;
            rectF.left = r2.left + f11;
            rectF.right = r2.right - f11;
            rectF.bottom = r2.bottom - f11;
            return;
        }
        RectF rectF2 = this.mStrokeRectF;
        float f12 = this.mTmpRect.top;
        float f13 = this.mStrokeWidth;
        rectF2.top = f12 + (f13 / 2.0f);
        rectF2.left = r2.left + (f13 / 2.0f);
        rectF2.right = r2.right - (f13 / 2.0f);
        rectF2.bottom = r2.bottom - (f13 / 2.0f);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        this.mButtonMaxWidth = View.MeasureSpec.getSize(i10);
        this.mButtonMaxHeight = View.MeasureSpec.getSize(i11);
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i10);
        if (mode2 == 1073741824) {
            this.mButtonWidth = this.mButtonMaxWidth;
        } else {
            this.mButtonWidth = 0;
        }
        if (mode == 1073741824) {
            this.mButtonHeight = this.mButtonMaxHeight;
        } else {
            this.mButtonHeight = 0;
        }
        int iLimitLargeButtonMaxWidth = limitLargeButtonMaxWidth(mode2);
        if (iLimitLargeButtonMaxWidth != 0) {
            i10 = iLimitLargeButtonMaxWidth;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        OnSizeChangeListener onSizeChangeListener = this.mOnSizeChangeListener;
        if (onSizeChangeListener != null) {
            onSizeChangeListener.onSizeChanged(this, i10, i11, i12, i13);
        }
        if (isDescType()) {
            setText(this.mText);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        OnTextChangeListener onTextChangeListener = this.mOnTextChangeListener;
        if (onTextChangeListener != null) {
            onTextChangeListener.onTextChanged(this, charSequence, i10, i11, i12);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.mAnimEnable) {
            int action = motionEvent.getAction();
            if (action == 0) {
                performHapticFeedback();
                this.mMaskDrawable.setTouchEntered();
                this.mStateEffectBackground.setTouched(true);
            } else if (action == 1 || action == 3) {
                performHapticFeedback();
                this.mMaskDrawable.setTouchExited();
                this.mStateEffectBackground.setTouched(false);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIButton, this.mStyle, 0);
        } else if ("style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIButton, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            adapterDisableColor(typedArrayObtainStyledAttributes);
            this.mDrawableColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIButton_drawableColor, 0);
            this.mStrokeColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIButton_strokeColor, 0);
            setTextColor(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIButton_android_textColor));
            typedArrayObtainStyledAttributes.recycle();
        }
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable != null) {
            cOUIStateEffectDrawable.refresh(getContext());
        }
    }

    public void setAnimEnable(boolean z10) {
        this.mAnimEnable = z10;
    }

    public void setAnimType(int i10) {
        this.mAnimType = i10;
        if (i10 == 1 || i10 == 0) {
            this.mMaskDrawable.setDrawableEnabled(true);
            this.mMaskDrawable.setMaskType(0);
            this.mStrokeDrawable.setDrawableEnabled(true);
            this.mRippleBackgroundDrawable.setDrawableEnabled(false);
        } else if (i10 == 2) {
            this.mMaskDrawable.setDrawableEnabled(true);
            this.mMaskDrawable.setMaskType(1);
            this.mStrokeDrawable.setDrawableEnabled(false);
            this.mRippleBackgroundDrawable.setDrawableEnabled(false);
        }
        updateRoundRectPath();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable == null) {
            super.setBackground(drawable);
        } else if (drawable == null) {
            cOUIStateEffectDrawable.setViewBackground(new ColorDrawable(0));
        } else {
            cOUIStateEffectDrawable.setViewBackground(drawable);
        }
    }

    public void setDescText(String str) {
        this.mDescText = str;
        if (isDescType()) {
            setText(getText());
        }
    }

    public void setDescType(boolean z10, String str) {
        if (!z10 || TextUtils.isEmpty(getText()) || TextUtils.isEmpty(str)) {
            return;
        }
        this.mIsDescType = true;
        this.mDescText = str;
        setIsDescTypeStyle();
        setText(getText());
    }

    public void setDisabledColor(int i10) {
        this.mDisabledColor = i10;
    }

    public void setDrawableColor(int i10) {
        this.mDrawableColor = i10;
    }

    public void setDrawableRadius(int i10) {
        this.mRadius = i10;
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        if (z10 != isEnabled() && isDescType()) {
            setText(this.mText);
        }
        super.setEnabled(z10);
    }

    public void setIsNeedVibrate(boolean z10) {
        this.mIsNeedVibrate = z10;
    }

    public void setLimitHeight(boolean z10) {
        this.isLimitHeight = z10;
    }

    public void setMaxBrightness(int i10) {
        this.mMaxBrightness = i10;
    }

    @Override // android.widget.TextView
    public void setMinHeight(int i10) {
        int dimensionPixelSize;
        if (isDescType() && i10 < (dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_btn_large_height_min))) {
            i10 = dimensionPixelSize;
        }
        super.setMinHeight(i10);
    }

    public void setNeedLimitMaxWidth(boolean z10) {
        this.mNeedLimitMaxWidth = z10;
    }

    public void setOnSizeChangeListener(OnSizeChangeListener onSizeChangeListener) {
        this.mOnSizeChangeListener = onSizeChangeListener;
    }

    public void setOnTextChangeListener(OnTextChangeListener onTextChangeListener) {
        this.mOnTextChangeListener = onTextChangeListener;
    }

    public void setRoundType(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("Invalid roundType" + i10);
        }
        if (this.mRoundType != i10) {
            this.mRoundType = i10;
            invalidate();
        }
    }

    public void setScaleEnable(boolean z10) {
        this.mScaleEnable = z10;
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable != null) {
            if (z10) {
                cOUIStateEffectDrawable.enableScaleEffect(this, 2);
            } else {
                cOUIStateEffectDrawable.disableScaleEffect();
            }
        }
    }

    public void setStrokeColor(int i10) {
        this.mStrokeColor = i10;
    }

    public void setStrokeWidth(float f10) {
        this.mStrokeWidth = f10;
    }

    @Override // android.widget.TextView
    public void setText(final CharSequence charSequence, final TextView.BufferType bufferType) {
        if (!this.mIsDescType || TextUtils.isEmpty(charSequence) || TextUtils.isEmpty(this.mDescText)) {
            super.setText(charSequence, bufferType);
        } else {
            post(new Runnable() { // from class: com.coui.appcompat.button.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7256a.lambda$setText$0(charSequence, bufferType);
                }
            });
        }
        this.mText = charSequence == null ? null : charSequence.toString();
    }

    public COUIButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R$attr.buttonStyle);
    }

    private float getDrawableRadius(RectF rectF) {
        if (this.mRadius < 0.0f && supportAddOnSmoothRound()) {
            return rectF.height() / 2.0f;
        }
        float f10 = this.mRadius;
        return f10 < 0.0f ? (rectF.height() / 2.0f) - this.mRadiusOffset : f10;
    }

    public COUIButton(Context context, AttributeSet attributeSet, int i10) {
        boolean z10;
        super(context, attributeSet, i10);
        this.mBackgroundPath = new Path();
        this.mStrokePath = new Path();
        this.mScaleEnable = true;
        this.mFillPaint = new Paint(1);
        this.mRadius = 21.0f;
        this.mCurrentBrightness = 1.0f;
        this.mCurrentScale = 1.0f;
        this.mPressColor = 0;
        this.mTmpRect = new Rect();
        this.mTmpRectF = new RectF();
        this.mStrokeRectF = new RectF();
        this.mColorHsl = new float[3];
        this.isLimitHeight = true;
        this.mNeedLimitMaxWidth = false;
        this.mOplusOutLineRect = new Rect();
        if (attributeSet != null && attributeSet.getStyleAttribute() != 0) {
            this.mStyle = attributeSet.getStyleAttribute();
        } else {
            this.mStyle = i10;
        }
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIButton, i10, 0);
        this.mAnimEnable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIButton_animEnable, false);
        this.mAnimType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIButton_animType, 1);
        this.mRoundType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIButton_couiRoundType, 0);
        this.mIsNeedVibrate = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIButton_needVibrate, true);
        this.mScaleEnable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIButton_scaleEnable, this.mScaleEnable);
        if (this.mAnimEnable) {
            this.mMaxBrightness = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUIButton_brightness, DEFAULT_BRIGHTNESS_MAX_VALUE);
            this.mRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIButton_drawableRadius, -1.0f);
            adapterDisableColor(typedArrayObtainStyledAttributes);
            this.mDrawableColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIButton_drawableColor, 0);
            this.mStrokeColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIButton_strokeColor, 0);
            this.mPressColor = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIButton_pressColor, 0);
            z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIButton_closeLimitTextSize, false);
            startAnimMode();
        } else {
            z10 = false;
        }
        this.mStrokeWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIButton_strokeWidth, context.getResources().getDimension(R$dimen.coui_bordless_btn_stroke_width));
        this.mMaxSingleLargeWidth = getResources().getDimensionPixelSize(R$dimen.coui_single_larger_btn_width);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIButton_isDescType, false);
        this.mIsDescType = z11;
        if (z11 && !TextUtils.isEmpty(getText())) {
            this.mDescText = typedArrayObtainStyledAttributes.getString(R$styleable.COUIButton_descText);
            this.mText = getText().toString();
            if (isDescType()) {
                setDescType(this.mIsDescType, this.mDescText);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mRadiusOffset = getResources().getDimension(R$dimen.coui_button_radius_offset);
        if (!z10) {
            COUIChangeTextUtil.adaptFontSize(this, 4);
        }
        initStatefulBackground(context);
        if (supportAddOnSmoothRound()) {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.button.COUIButton.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    COUIButton.this.mOplusOutline = new OplusOutlineAdapter(outline, 1);
                    COUIButton.this.mOplusOutLineRect.left = (int) COUIButton.this.mTmpRectF.left;
                    COUIButton.this.mOplusOutLineRect.top = (int) COUIButton.this.mTmpRectF.top;
                    COUIButton.this.mOplusOutLineRect.right = (int) COUIButton.this.mTmpRectF.right;
                    COUIButton.this.mOplusOutLineRect.bottom = (int) COUIButton.this.mTmpRectF.bottom;
                    COUIButton.this.mOplusOutline.setSmoothRoundRect(COUIButton.this.mOplusOutLineRect, COUIButton.this.getDrawableRadius());
                }
            });
            setClipToOutline(true);
            ShadowUtils.clearShadow(this);
            this.mWeight = COUIContextUtil.getAttrFloat(getContext(), R$attr.couiRoundCornerXXLWeight);
        }
    }

    private float getDrawableRadius(Rect rect) {
        if (this.mRadius < 0.0f && supportAddOnSmoothRound()) {
            return rect.height() / 2.0f;
        }
        float f10 = this.mRadius;
        return f10 < 0.0f ? (rect.height() / 2.0f) - this.mRadiusOffset : f10;
    }
}
