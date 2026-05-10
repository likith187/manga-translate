package com.coui.appcompat.edittext;

import android.R;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.view.m0;
import com.coui.appcompat.animation.COUIInEaseInterpolator;
import com.coui.appcompat.animation.COUILinearInterpolator;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.edittext.COUICutoutDrawable;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;
import com.support.appcompat.R$string;
import com.support.appcompat.R$style;
import com.support.appcompat.R$styleable;
import d0.h;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class COUIEditText extends AppCompatEditText {
    private static final int ALPHA_VALUE = 255;
    private static final int BACKGROUND_ANIMATION_DURATION = 250;
    private static final int LABEL_SCALE_ANIMATION_DURATION = 200;
    private static final boolean LOG_DBG = false;
    public static final int MODE_BACKGROUND_LINE = 1;
    public static final int MODE_BACKGROUND_NONE = 0;
    public static final int MODE_BACKGROUND_NO_LINE = 3;
    public static final int MODE_BACKGROUND_RECT = 2;
    private static final double POINT_FIVE = 0.5d;
    private static final String TAG = "COUIEditText";
    private static final double TWO = 2.0d;
    private ValueAnimator mAnimator;
    private ValueAnimator mAnimator1;
    private ValueAnimator mAnimator2;
    private GradientDrawable mBoxBackground;
    private int mBoxBackgroundMode;
    private float mBoxCornerRadiusBottomEnd;
    private float mBoxCornerRadiusBottomStart;
    private float mBoxCornerRadiusTopEnd;
    private float mBoxCornerRadiusTopStart;
    private int mBoxStrokeColor;
    private final COUICutoutDrawable.COUICollapseTextHelper mCOUICollapseTextHelper;
    private COUITextWatcher mCOUITextWatcher;
    private Runnable mCancelDeleteIcon;
    private int mClickSelectionPosition;
    private Context mContext;
    private View.OnTouchListener mCustomEditTextTouchListener;
    private ColorStateList mDefaultHintTextColor;
    private int mDefaultStrokeColor;
    private boolean mDeletable;
    private String mDeleteButton;
    private int mDeleteIconHeight;
    private int mDeleteIconWidth;
    private Drawable mDeleteNormal;
    private Drawable mDeletePressed;
    private int mDisabledColor;
    private Paint mDisabledPaint;
    private float mDrawXProgress;
    private int mDrawableSizeRight;
    private View.OnFocusChangeListener mEditFocusChangeListener;
    private Paint mEmptyTextPaint;
    private int mErrorColor;
    private boolean mErrorState;
    private COUIErrorEditTextHelper mErrorStateHelper;
    private int mFocusedAlpha;
    private Paint mFocusedPaint;
    private int mFocusedStrokeColor;
    private ColorStateList mFocusedTextColor;
    private boolean mForceFinishDetach;
    private CharSequence mHint;
    private boolean mHintAnimationEnabled;
    private boolean mHintEnabled;
    private boolean mHintExpanded;
    private boolean mInDrawableStateChanged;
    private InputConnectionListener mInputConnectionListener;
    private String mInputText;
    private boolean mIsEllipsis;
    private boolean mIsEllipsisEnabled;
    private boolean mIsProvidingHint;
    private boolean mJustShowFocusLine;
    private int mLabelCutoutPadding;
    private boolean mLineExpanded;
    private int mLineModePaddingMiddle;
    private int mLineModePaddingTop;
    private int mLinePadding;
    private Paint mNormalPaint;
    private CharSequence mOriginalHint;
    private OnPasswordDeletedListener mPasswordDeleteListener;
    private Interpolator mPathInterpolator1;
    private Interpolator mPathInterpolator2;
    private boolean mQuickDelete;
    private int mRectModePaddingTop;
    private int mRefreshStyle;
    private Runnable mSetDeleteIcon;
    private boolean mShouldHandleDelete;
    private boolean mShowDeleteIcon;
    private int mStrokeWidth;
    private int mStrokeWidthFocused;
    private OnTextDeletedListener mTextDeleteListener;
    private TextPaint mTextPaint;
    private RectF mTmpRectF;
    private AccessibilityTouchHelper mTouchHelper;

    public class AccessibilityTouchHelper extends androidx.customview.widget.a implements View.OnClickListener {
        private View mHostView;
        private Rect mUninstallRect;
        private Rect mViewRect;

        public AccessibilityTouchHelper(View view) {
            super(view);
            this.mUninstallRect = null;
            this.mViewRect = null;
            this.mHostView = view;
        }

        private Rect getItemBounds(int i10) {
            if (i10 != 0) {
                return new Rect();
            }
            if (this.mUninstallRect == null) {
                initUninstallRect();
            }
            return this.mUninstallRect;
        }

        private void initUninstallRect() {
            Rect rect = new Rect();
            this.mUninstallRect = rect;
            rect.left = COUIEditText.this.getDeleteButtonLeft();
            this.mUninstallRect.right = COUIEditText.this.getWidth();
            Rect rect2 = this.mUninstallRect;
            rect2.top = 0;
            rect2.bottom = COUIEditText.this.getHeight();
        }

        private void initViewRect() {
            Rect rect = new Rect();
            this.mViewRect = rect;
            rect.left = 0;
            rect.right = COUIEditText.this.getWidth();
            Rect rect2 = this.mViewRect;
            rect2.top = 0;
            rect2.bottom = COUIEditText.this.getHeight();
        }

        @Override // androidx.customview.widget.a
        protected int getVirtualViewAt(float f10, float f11) {
            if (this.mUninstallRect == null) {
                initUninstallRect();
            }
            Rect rect = this.mUninstallRect;
            return (f10 < ((float) rect.left) || f10 > ((float) rect.right) || f11 < ((float) rect.top) || f11 > ((float) rect.bottom) || !COUIEditText.this.isDeleteButtonExist()) ? Integer.MIN_VALUE : 0;
        }

        @Override // androidx.customview.widget.a
        protected void getVisibleVirtualViews(List<Integer> list) {
            if (COUIEditText.this.isDeleteButtonExist()) {
                list.add(0);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }

        @Override // androidx.customview.widget.a
        protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 != 0 || !COUIEditText.this.isDeleteButtonExist()) {
                return true;
            }
            COUIEditText.this.onFastDelete();
            return true;
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateEventForVirtualView(int i10, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setContentDescription(COUIEditText.this.mDeleteButton);
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateNodeForVirtualView(int i10, h hVar) {
            if (i10 == 0) {
                hVar.l0(COUIEditText.this.mDeleteButton);
                hVar.h0(Button.class.getName());
                hVar.a(16);
            }
            hVar.c0(getItemBounds(i10));
        }
    }

    public static class COUISavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<COUISavedState> CREATOR = new Parcelable.Creator<COUISavedState>() { // from class: com.coui.appcompat.edittext.COUIEditText.COUISavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public COUISavedState createFromParcel(Parcel parcel) {
                return new COUISavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public COUISavedState[] newArray(int i10) {
                return new COUISavedState[i10];
            }
        };
        String mText;

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.mText = parcel.readString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.mText);
        }

        COUISavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private COUISavedState(Parcel parcel) {
            super(parcel);
            this.mText = parcel.readString();
        }
    }

    private class COUITextWatcher implements TextWatcher {
        private COUITextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            COUIEditText cOUIEditText = COUIEditText.this;
            cOUIEditText.updateDeletableStatus(cOUIEditText.hasFocus());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public interface InputConnectionListener {
        void onCreateInputConnection();
    }

    public interface OnErrorStateChangedListener {
        void onErrorStateChangeAnimationEnd(boolean z10);

        void onErrorStateChanged(boolean z10);
    }

    public interface OnPasswordDeletedListener {
        boolean onPasswordDeleted();
    }

    public interface OnTextDeletedListener {
        boolean onTextDeleted();
    }

    public COUIEditText(Context context) {
        this(context, null);
    }

    private void animateToExpansionFraction(float f10) {
        if (this.mCOUICollapseTextHelper.getExpansionFraction() == f10) {
            return;
        }
        if (this.mAnimator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.mAnimator = valueAnimator;
            valueAnimator.setInterpolator(this.mPathInterpolator1);
            this.mAnimator.setDuration(200L);
            this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.edittext.COUIEditText.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    COUIEditText.this.mCOUICollapseTextHelper.setExpansionFraction(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
        }
        this.mAnimator.setFloatValues(this.mCOUICollapseTextHelper.getExpansionFraction(), f10);
        this.mAnimator.start();
    }

    private void animateToHideBackground() {
        if (this.mAnimator2 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.mAnimator2 = valueAnimator;
            valueAnimator.setInterpolator(this.mPathInterpolator2);
            this.mAnimator2.setDuration(250L);
            this.mAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.edittext.COUIEditText.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    COUIEditText.this.mFocusedAlpha = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    COUIEditText.this.invalidate();
                }
            });
        }
        this.mAnimator2.setIntValues(255, 0);
        this.mAnimator2.start();
        this.mLineExpanded = false;
    }

    private void animateToShowBackground() {
        if (this.mAnimator1 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.mAnimator1 = valueAnimator;
            valueAnimator.setInterpolator(this.mPathInterpolator2);
            this.mAnimator1.setDuration(250L);
            this.mAnimator1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.edittext.COUIEditText.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    COUIEditText.this.mDrawXProgress = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    COUIEditText.this.invalidate();
                }
            });
        }
        this.mFocusedAlpha = 255;
        this.mAnimator1.setFloatValues(0.0f, 1.0f);
        ValueAnimator valueAnimator2 = this.mAnimator2;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.mAnimator2.cancel();
        }
        this.mAnimator1.start();
        this.mLineExpanded = true;
    }

    private void applyBoxAttributes() {
        int i10;
        if (this.mBoxBackground == null) {
            return;
        }
        setBoxAttributes();
        int i11 = this.mStrokeWidth;
        if (i11 > -1 && (i10 = this.mBoxStrokeColor) != 0) {
            this.mBoxBackground.setStroke(i11, i10);
        }
        this.mBoxBackground.setCornerRadii(getCornerRadiiAsArray());
        invalidate();
    }

    private void applyCutoutPadding(RectF rectF) {
        float f10 = rectF.left;
        int i10 = this.mLabelCutoutPadding;
        rectF.left = f10 - i10;
        rectF.top -= i10;
        rectF.right += i10;
        rectF.bottom += i10;
    }

    private void assignBoxBackgroundByMode() {
        int i10 = this.mBoxBackgroundMode;
        if (i10 == 0) {
            this.mBoxBackground = null;
            return;
        }
        if (i10 == 2 && this.mHintEnabled && !(this.mBoxBackground instanceof COUICutoutDrawable)) {
            this.mBoxBackground = new COUICutoutDrawable();
        } else if (this.mBoxBackground == null) {
            this.mBoxBackground = new GradientDrawable();
        }
    }

    private int calculateCollapsedTextTopBounds() {
        int i10 = this.mBoxBackgroundMode;
        if (i10 == 1) {
            if (getBoxBackground() != null) {
                return getBoxBackground().getBounds().top;
            }
            return 0;
        }
        if (i10 != 2 && i10 != 3) {
            return getPaddingTop();
        }
        if (getBoxBackground() != null) {
            return getBoxBackground().getBounds().top - getLabelMarginTop();
        }
        return 0;
    }

    private void closeCutout() {
        if (cutoutEnabled()) {
            ((COUICutoutDrawable) this.mBoxBackground).removeCutout();
        }
    }

    private void collapseHint(boolean z10) {
        ValueAnimator valueAnimator = this.mAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mAnimator.cancel();
        }
        if (z10 && this.mHintAnimationEnabled) {
            animateToExpansionFraction(1.0f);
        } else {
            this.mCOUICollapseTextHelper.setExpansionFraction(1.0f);
        }
        this.mHintExpanded = false;
        if (cutoutEnabled()) {
            openCutout();
        }
    }

    private boolean cutoutEnabled() {
        return this.mHintEnabled && !TextUtils.isEmpty(this.mHint) && (this.mBoxBackground instanceof COUICutoutDrawable);
    }

    private void expandHint(boolean z10) {
        if (this.mBoxBackground != null) {
            Log.d(TAG, "mBoxBackground: " + this.mBoxBackground.getBounds());
        }
        ValueAnimator valueAnimator = this.mAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mAnimator.cancel();
        }
        if (z10 && this.mHintAnimationEnabled) {
            animateToExpansionFraction(0.0f);
        } else {
            this.mCOUICollapseTextHelper.setExpansionFraction(0.0f);
        }
        if (cutoutEnabled() && ((COUICutoutDrawable) this.mBoxBackground).hasCutout()) {
            closeCutout();
        }
        this.mHintExpanded = true;
    }

    private int getBoundsTop() {
        int i10 = this.mBoxBackgroundMode;
        if (i10 == 1) {
            return this.mLineModePaddingTop;
        }
        if (i10 == 2 || i10 == 3) {
            return (int) (this.mCOUICollapseTextHelper.getCollapsedTextHeight() / 2.0f);
        }
        return 0;
    }

    private Drawable getBoxBackground() {
        int i10 = this.mBoxBackgroundMode;
        if (i10 == 1 || i10 == 2) {
            return this.mBoxBackground;
        }
        return null;
    }

    private boolean getContentRect(Rect rect) {
        int compoundPaddingLeft = isRtlMode() ? (getCompoundPaddingLeft() - this.mDeleteIconWidth) - getCompoundDrawablePadding() : (getWidth() - getCompoundPaddingRight()) + getCompoundDrawablePadding();
        int i10 = this.mDeleteIconWidth + compoundPaddingLeft;
        int height = ((((getHeight() - getCompoundPaddingTop()) - getCompoundPaddingBottom()) - this.mDeleteIconWidth) / 2) + getCompoundPaddingTop();
        rect.set(compoundPaddingLeft, height, i10, this.mDeleteIconWidth + height);
        return true;
    }

    private float[] getCornerRadiiAsArray() {
        float f10 = this.mBoxCornerRadiusTopEnd;
        float f11 = this.mBoxCornerRadiusTopStart;
        float f12 = this.mBoxCornerRadiusBottomStart;
        float f13 = this.mBoxCornerRadiusBottomEnd;
        return new float[]{f10, f10, f11, f11, f12, f12, f13, f13};
    }

    private int getModePaddingTop() {
        int hintHeight;
        int collapsedTextHeight;
        int i10 = this.mBoxBackgroundMode;
        if (i10 == 1) {
            hintHeight = this.mLineModePaddingTop + ((int) this.mCOUICollapseTextHelper.getHintHeight());
            collapsedTextHeight = this.mLineModePaddingMiddle;
        } else {
            if (i10 != 2 && i10 != 3) {
                return 0;
            }
            hintHeight = this.mRectModePaddingTop;
            collapsedTextHeight = (int) (this.mCOUICollapseTextHelper.getCollapsedTextHeight() / 2.0f);
        }
        return hintHeight + collapsedTextHeight;
    }

    private void initHintMode(Context context, AttributeSet attributeSet, int i10) {
        this.mCOUICollapseTextHelper.setTextSizeInterpolator(new COUILinearInterpolator());
        this.mCOUICollapseTextHelper.setPositionInterpolator(new COUILinearInterpolator());
        this.mCOUICollapseTextHelper.setCollapsedTextGravity(8388659);
        this.mPathInterpolator1 = new COUIMoveEaseInterpolator();
        this.mPathInterpolator2 = new COUIInEaseInterpolator();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIEditText, i10, R$style.Widget_COUI_EditText_HintAnim_Line);
        this.mHintEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIEditText_couiHintEnabled, false);
        setTopHint(typedArrayObtainStyledAttributes.getText(R$styleable.COUIEditText_android_hint));
        if (this.mHintEnabled) {
            this.mHintAnimationEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIEditText_couiHintAnimationEnabled, true);
        }
        this.mRectModePaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUIEditText_rectModePaddingTop, 0);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIEditText_cornerRadius, 0.0f);
        this.mBoxCornerRadiusTopStart = dimension;
        this.mBoxCornerRadiusTopEnd = dimension;
        this.mBoxCornerRadiusBottomEnd = dimension;
        this.mBoxCornerRadiusBottomStart = dimension;
        this.mFocusedStrokeColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiStrokeColor, COUIContextUtil.getAttrColor(context, R$attr.couiColorPrimary, 0));
        this.mStrokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIEditText_couiStrokeWidth, 0);
        this.mStrokeWidthFocused = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIEditText_couiFocusStrokeWidth, this.mStrokeWidthFocused);
        this.mLinePadding = context.getResources().getDimensionPixelOffset(R$dimen.coui_textinput_line_padding);
        if (this.mHintEnabled) {
            this.mLabelCutoutPadding = context.getResources().getDimensionPixelOffset(R$dimen.coui_textinput_label_cutout_padding);
            this.mLineModePaddingTop = context.getResources().getDimensionPixelOffset(R$dimen.coui_textinput_line_padding_top);
            this.mLineModePaddingMiddle = context.getResources().getDimensionPixelOffset(R$dimen.coui_textinput_line_padding_middle);
        }
        int i11 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIEditText_couiBackgroundMode, 0);
        setBoxBackgroundMode(i11);
        if (this.mBoxBackgroundMode != 0) {
            setBackgroundDrawable(null);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.COUIEditText_android_textColorHint)) {
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIEditText_android_textColorHint);
            this.mDefaultHintTextColor = colorStateList;
            this.mFocusedTextColor = colorStateList;
        }
        this.mDefaultStrokeColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiDefaultStrokeColor, 0);
        this.mDisabledColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiDisabledStrokeColor, 0);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.COUIEditText_couiEditTextNoEllipsisText);
        this.mInputText = string;
        setText(string);
        setCollapsedTextAppearance(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIEditText_collapsedTextSize, 0), typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIEditText_collapsedTextColor));
        if (i11 == 2) {
            this.mCOUICollapseTextHelper.setTypefaces(Typeface.create(COUIChangeTextUtil.MEDIUM_FONT, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mEmptyTextPaint = new Paint();
        TextPaint textPaint = new TextPaint();
        this.mTextPaint = textPaint;
        textPaint.setTextSize(getTextSize());
        Paint paint = new Paint();
        this.mNormalPaint = paint;
        paint.setColor(this.mDefaultStrokeColor);
        Paint paint2 = new Paint();
        this.mDisabledPaint = paint2;
        paint2.setColor(this.mDisabledColor);
        Paint paint3 = new Paint();
        this.mFocusedPaint = paint3;
        paint3.setColor(this.mFocusedStrokeColor);
        setEditText();
    }

    private boolean isEmpty(String str) {
        if (str == null) {
            return false;
        }
        return TextUtils.isEmpty(str);
    }

    private boolean isGravityCenterHorizontal() {
        return (getGravity() & 7) == 1;
    }

    private boolean isRtlMode() {
        return getLayoutDirection() == 1;
    }

    private void onApplyBoxBackgroundMode() {
        assignBoxBackgroundByMode();
        updateTextInputBoxBounds();
    }

    private void openCutout() {
        if (cutoutEnabled()) {
            RectF rectF = this.mTmpRectF;
            this.mCOUICollapseTextHelper.getCollapsedTextActualBounds(rectF);
            applyCutoutPadding(rectF);
            ((COUICutoutDrawable) this.mBoxBackground).setCutout(rectF);
        }
    }

    private void setBoxAttributes() {
        if (this.mBoxBackgroundMode == 2 && this.mFocusedStrokeColor == 0) {
            this.mFocusedStrokeColor = this.mFocusedTextColor.getColorForState(getDrawableState(), this.mFocusedTextColor.getDefaultColor());
        }
    }

    private void setEditText() {
        onApplyBoxBackgroundMode();
        this.mCOUICollapseTextHelper.setExpandedTextSize(getTextSize());
        int gravity = getGravity();
        this.mCOUICollapseTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
        this.mCOUICollapseTextHelper.setExpandedTextGravity(gravity);
        if (this.mDefaultHintTextColor == null) {
            this.mDefaultHintTextColor = getHintTextColors();
        }
        setHint(this.mHintEnabled ? null : "");
        if (TextUtils.isEmpty(this.mHint)) {
            CharSequence hint = getHint();
            this.mOriginalHint = hint;
            setTopHint(hint);
            setHint(this.mHintEnabled ? null : "");
        }
        this.mIsProvidingHint = true;
        updateLabelState(false, true);
        if (this.mHintEnabled) {
            updateModePadding();
        }
    }

    private void setEllipsize() {
        if (isFocused()) {
            if (this.mIsEllipsis) {
                setText(this.mInputText);
                setSelection(this.mClickSelectionPosition >= getSelectionEnd() ? getSelectionEnd() : this.mClickSelectionPosition);
            }
            this.mIsEllipsis = false;
            return;
        }
        if (this.mTextPaint.measureText(String.valueOf(getText())) <= getWidth() || this.mIsEllipsis) {
            return;
        }
        this.mInputText = String.valueOf(getText());
        this.mIsEllipsis = true;
        setText(TextUtils.ellipsize(getText(), this.mTextPaint, getWidth(), TextUtils.TruncateAt.END));
        if (this.mErrorState) {
            setErrorState(true);
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mHint)) {
            return;
        }
        this.mHint = charSequence;
        this.mCOUICollapseTextHelper.setText(charSequence);
        if (!this.mHintExpanded) {
            openCutout();
        }
        COUIErrorEditTextHelper cOUIErrorEditTextHelper = this.mErrorStateHelper;
        if (cOUIErrorEditTextHelper != null) {
            cOUIErrorEditTextHelper.setHintInternal(this.mCOUICollapseTextHelper);
        }
        setContentDescription(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDeletableStatus(boolean z10) {
        if (TextUtils.isEmpty(getText().toString())) {
            if (isGravityCenterHorizontal()) {
                setPaddingRelative(0, getPaddingTop(), getPaddingEnd(), getPaddingBottom());
            }
            if (this.mDeletable) {
                setCompoundDrawables(null, null, null, null);
            } else {
                post(this.mCancelDeleteIcon);
            }
            this.mDeletable = false;
            return;
        }
        if (!z10) {
            if (this.mDeletable) {
                if (isGravityCenterHorizontal()) {
                    setPaddingRelative(0, getPaddingTop(), getPaddingEnd(), getPaddingBottom());
                }
                post(this.mCancelDeleteIcon);
                this.mDeletable = false;
                return;
            }
            return;
        }
        if (this.mDeleteNormal == null || this.mDeletable) {
            return;
        }
        if (isGravityCenterHorizontal()) {
            setPaddingRelative(this.mDeleteIconWidth + getCompoundDrawablePadding(), getPaddingTop(), getPaddingEnd(), getPaddingBottom());
        }
        if (isFastDeletable() && this.mShowDeleteIcon) {
            post(this.mSetDeleteIcon);
        }
        this.mDeletable = true;
    }

    private void updateLineModeBackground() {
        if (this.mBoxBackgroundMode != 1) {
            return;
        }
        if (!isEnabled()) {
            this.mDrawXProgress = 0.0f;
            return;
        }
        if (hasFocus()) {
            if (this.mLineExpanded) {
                return;
            }
            animateToShowBackground();
        } else if (this.mLineExpanded) {
            animateToHideBackground();
        }
    }

    private void updateModePadding() {
        m0.z0(this, isRtlMode() ? getPaddingRight() : getPaddingLeft(), getModePaddingTop(), isRtlMode() ? getPaddingLeft() : getPaddingRight(), getPaddingBottom());
    }

    private void updateTextInputBoxBounds() {
        if (this.mBoxBackgroundMode == 0 || this.mBoxBackground == null || getRight() == 0) {
            return;
        }
        this.mBoxBackground.setBounds(0, getBoundsTop(), getWidth(), getHeight());
        applyBoxAttributes();
    }

    private void updateTextInputBoxState() {
        int i10;
        if (this.mBoxBackground == null || (i10 = this.mBoxBackgroundMode) == 0 || i10 != 2) {
            return;
        }
        if (!isEnabled()) {
            this.mBoxStrokeColor = this.mDisabledColor;
        } else if (hasFocus()) {
            this.mBoxStrokeColor = this.mFocusedStrokeColor;
        } else {
            this.mBoxStrokeColor = this.mDefaultStrokeColor;
        }
        applyBoxAttributes();
    }

    public void addOnErrorStateChangedListener(OnErrorStateChangedListener onErrorStateChangedListener) {
        this.mErrorStateHelper.addOnErrorStateChangedListener(onErrorStateChangedListener);
    }

    public boolean cutoutIsOpen() {
        return cutoutEnabled() && ((COUICutoutDrawable) this.mBoxBackground).hasCutout();
    }

    public void destroyAnimators() {
        ValueAnimator valueAnimator = this.mAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mAnimator.removeAllListeners();
            this.mAnimator.removeAllUpdateListeners();
            this.mAnimator = null;
        }
        ValueAnimator valueAnimator2 = this.mAnimator1;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.mAnimator1.removeAllListeners();
            this.mAnimator1.removeAllUpdateListeners();
            this.mAnimator1 = null;
        }
        ValueAnimator valueAnimator3 = this.mAnimator2;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.mAnimator2.removeAllListeners();
            this.mAnimator2.removeAllUpdateListeners();
            this.mAnimator2 = null;
        }
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        AccessibilityTouchHelper accessibilityTouchHelper;
        if (isDeleteButtonExist() && (accessibilityTouchHelper = this.mTouchHelper) != null && accessibilityTouchHelper.dispatchHoverEvent(motionEvent)) {
            return true;
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void dispatchStartTemporaryDetach() {
        super.dispatchStartTemporaryDetach();
        if (this.mForceFinishDetach) {
            onStartTemporaryDetach();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (getMaxLines() < 2 && this.mIsEllipsisEnabled) {
            setEllipsize();
        }
        if (getHintTextColors() != this.mDefaultHintTextColor) {
            updateLabelState(false);
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.mHintEnabled || getText().length() == 0) {
            this.mCOUICollapseTextHelper.draw(canvas);
        } else {
            canvas.drawText(" ", 0.0f, 0.0f, this.mEmptyTextPaint);
        }
        if (this.mBoxBackground != null && this.mBoxBackgroundMode == 2) {
            if (getScrollX() != 0) {
                updateTextInputBoxBounds();
            }
            if (this.mErrorStateHelper.isErrorState()) {
                this.mErrorStateHelper.drawModeBackgroundRect(canvas, this.mBoxBackground, this.mBoxStrokeColor);
            } else {
                this.mBoxBackground.draw(canvas);
            }
        }
        if (this.mBoxBackgroundMode == 1) {
            int height = getHeight();
            this.mFocusedPaint.setAlpha(this.mFocusedAlpha);
            if (isEnabled()) {
                if (this.mErrorStateHelper.isErrorState()) {
                    this.mErrorStateHelper.drawModeBackgroundLine(canvas, height, getWidth(), (int) (this.mDrawXProgress * getWidth()), this.mNormalPaint, this.mFocusedPaint);
                } else {
                    if (!this.mJustShowFocusLine) {
                        canvas.drawRect(0.0f, height - this.mStrokeWidth, getWidth(), height, this.mNormalPaint);
                    }
                    if (hasFocus()) {
                        canvas.drawRect(0.0f, height - this.mStrokeWidthFocused, this.mDrawXProgress * getWidth(), height, this.mFocusedPaint);
                    }
                }
            } else if (!this.mJustShowFocusLine) {
                canvas.drawRect(0.0f, height - this.mStrokeWidth, getWidth(), height, this.mDisabledPaint);
            }
        }
        canvas.restoreToCount(iSave);
        super.draw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void drawableStateChanged() {
        /*
            r4 = this;
            boolean r0 = r4.mInDrawableStateChanged
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r4.mInDrawableStateChanged = r0
            super.drawableStateChanged()
            int[] r1 = r4.getDrawableState()
            boolean r2 = r4.mHintEnabled
            r3 = 0
            if (r2 == 0) goto L26
            boolean r2 = androidx.core.view.m0.O(r4)
            if (r2 == 0) goto L21
            boolean r2 = r4.isEnabled()
            if (r2 == 0) goto L21
            goto L22
        L21:
            r0 = r3
        L22:
            r4.updateLabelState(r0)
            goto L29
        L26:
            r4.updateLabelState(r3)
        L29:
            r4.updateLineModeBackground()
            boolean r0 = r4.mHintEnabled
            if (r0 == 0) goto L44
            r4.updateTextInputBoxBounds()
            r4.updateTextInputBoxState()
            com.coui.appcompat.edittext.COUICutoutDrawable$COUICollapseTextHelper r0 = r4.mCOUICollapseTextHelper
            if (r0 == 0) goto L44
            boolean r0 = r0.setState(r1)
            com.coui.appcompat.edittext.COUIErrorEditTextHelper r2 = r4.mErrorStateHelper
            r2.drawableStateChanged(r1)
            goto L45
        L44:
            r0 = r3
        L45:
            if (r0 == 0) goto L4a
            r4.invalidate()
        L4a:
            r4.mInDrawableStateChanged = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.edittext.COUIEditText.drawableStateChanged():void");
    }

    public void forceFinishDetach() {
        this.mForceFinishDetach = true;
    }

    public Rect getBackgroundRect() {
        int i10 = this.mBoxBackgroundMode;
        if ((i10 == 1 || i10 == 2 || i10 == 3) && getBoxBackground() != null) {
            getBoxBackground().getBounds();
        }
        return null;
    }

    public int getBoxStrokeColor() {
        return this.mFocusedStrokeColor;
    }

    public String getCouiEditTexttNoEllipsisText() {
        return this.mIsEllipsis ? this.mInputText : String.valueOf(getText());
    }

    public int getDeleteButtonLeft() {
        Drawable drawable = this.mDeleteNormal;
        return ((getRight() - getLeft()) - getPaddingRight()) - (drawable != null ? drawable.getIntrinsicWidth() : 0);
    }

    public int getDeleteIconWidth() {
        return this.mDeleteIconWidth;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        if (this.mHintEnabled) {
            return this.mHint;
        }
        return null;
    }

    public int getLabelMarginTop() {
        if (this.mHintEnabled) {
            return (int) (this.mCOUICollapseTextHelper.getCollapsedTextHeight() / 2.0f);
        }
        return 0;
    }

    OnTextDeletedListener getTextDeleteListener() {
        return this.mTextDeleteListener;
    }

    public boolean isDeleteButtonExist() {
        return this.mQuickDelete && !isEmpty(getText().toString()) && hasFocus();
    }

    public boolean isEllipsisEnabled() {
        return this.mIsEllipsisEnabled;
    }

    public boolean isErrorState() {
        return this.mErrorStateHelper.isErrorState();
    }

    public boolean isFastDeletable() {
        return this.mQuickDelete;
    }

    public boolean isHintEnabled() {
        return this.mHintEnabled;
    }

    public boolean isProvidingHint() {
        return this.mIsProvidingHint;
    }

    public boolean isShowDeleteIcon() {
        return this.mShowDeleteIcon;
    }

    public boolean ismHintAnimationEnabled() {
        return this.mHintAnimationEnabled;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnectionListener inputConnectionListener = this.mInputConnectionListener;
        if (inputConnectionListener != null) {
            inputConnectionListener.onCreateInputConnection();
        }
        return super.onCreateInputConnection(editorInfo);
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mInputConnectionListener != null) {
            this.mInputConnectionListener = null;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mErrorStateHelper.onDraw(canvas);
    }

    public void onFastDelete() {
        Editable text = getText();
        text.delete(0, text.length());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (this.mQuickDelete) {
            updateDeletableStatus(z10);
        }
        View.OnFocusChangeListener onFocusChangeListener = this.mEditFocusChangeListener;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(this, z10);
        }
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!this.mQuickDelete || i10 != 67) {
            return super.onKeyDown(i10, keyEvent);
        }
        super.onKeyDown(i10, keyEvent);
        OnPasswordDeletedListener onPasswordDeletedListener = this.mPasswordDeleteListener;
        if (onPasswordDeletedListener == null) {
            return true;
        }
        onPasswordDeletedListener.onPasswordDeleted();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.mBoxBackground != null) {
            updateTextInputBoxBounds();
        }
        if (this.mHintEnabled) {
            updateModePadding();
        }
        int compoundPaddingLeft = getCompoundPaddingLeft();
        int width = getWidth() - getCompoundPaddingRight();
        int iCalculateCollapsedTextTopBounds = calculateCollapsedTextTopBounds();
        this.mCOUICollapseTextHelper.setExpandedBounds(compoundPaddingLeft, getCompoundPaddingTop(), width, getHeight() - getCompoundPaddingBottom());
        this.mCOUICollapseTextHelper.setCollapsedBounds(compoundPaddingLeft, iCalculateCollapsedTextTopBounds, width, getHeight() - getCompoundPaddingBottom());
        this.mCOUICollapseTextHelper.recalculate();
        if (cutoutEnabled() && !this.mHintExpanded) {
            openCutout();
        }
        this.mErrorStateHelper.onLayout(this.mCOUICollapseTextHelper);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        String str;
        if (getMaxLines() < 2 && this.mIsEllipsisEnabled && (parcelable instanceof COUISavedState) && (str = ((COUISavedState) parcelable).mText) != null) {
            setText(str);
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (getMaxLines() >= 2 || !this.mIsEllipsisEnabled || isFocused()) {
            return parcelableOnSaveInstanceState;
        }
        COUISavedState cOUISavedState = new COUISavedState(parcelableOnSaveInstanceState);
        cOUISavedState.mText = getCouiEditTexttNoEllipsisText();
        return cOUISavedState;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mShowDeleteIcon && this.mQuickDelete && !TextUtils.isEmpty(getText()) && hasFocus()) {
            Rect rect = new Rect();
            boolean z10 = getContentRect(rect) && rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
            if (this.mDeletable && z10) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.mShouldHandleDelete = true;
                    return true;
                }
                if (action != 1) {
                    if (action == 2 && this.mShouldHandleDelete) {
                        return true;
                    }
                } else if (this.mShouldHandleDelete) {
                    OnTextDeletedListener onTextDeletedListener = this.mTextDeleteListener;
                    if (onTextDeletedListener != null && onTextDeletedListener.onTextDeleted()) {
                        return true;
                    }
                    onFastDelete();
                    this.mShouldHandleDelete = false;
                    return true;
                }
            }
        }
        View.OnTouchListener onTouchListener = this.mCustomEditTextTouchListener;
        if (onTouchListener != null) {
            onTouchListener.onTouch(this, motionEvent);
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        this.mClickSelectionPosition = getSelectionEnd();
        return zOnTouchEvent;
    }

    public void refresh() {
        TypedArray typedArrayObtainStyledAttributes;
        Drawable drawable;
        String resourceTypeName = getResources().getResourceTypeName(this.mRefreshStyle);
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIEditText, this.mRefreshStyle, 0);
        } else if (!"style".equals(resourceTypeName)) {
            return;
        } else {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIEditText, 0, this.mRefreshStyle);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.COUIEditText_android_textColorHint)) {
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIEditText_android_textColorHint);
            this.mDefaultHintTextColor = colorStateList;
            this.mFocusedTextColor = colorStateList;
            if (colorStateList == null) {
                this.mDefaultHintTextColor = getHintTextColors();
            }
        }
        this.mErrorColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiEditTextErrorColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorErrorTextBg));
        this.mFocusedStrokeColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiStrokeColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimary, 0));
        this.mDefaultStrokeColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiDefaultStrokeColor, 0);
        this.mDisabledColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiDisabledStrokeColor, 0);
        this.mErrorStateHelper.setErrorColor(this.mErrorColor);
        this.mNormalPaint.setColor(this.mDefaultStrokeColor);
        this.mDisabledPaint.setColor(this.mDisabledColor);
        this.mFocusedPaint.setColor(this.mFocusedStrokeColor);
        this.mDeleteNormal = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIEditText_couiEditTextDeleteIconNormal);
        this.mDeletePressed = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIEditText_couiEditTextDeleteIconPressed);
        Drawable drawable2 = this.mDeleteNormal;
        if (drawable2 != null) {
            this.mDeleteIconWidth = drawable2.getIntrinsicWidth();
            int intrinsicHeight = this.mDeleteNormal.getIntrinsicHeight();
            this.mDeleteIconHeight = intrinsicHeight;
            this.mDeleteNormal.setBounds(0, 0, this.mDeleteIconWidth, intrinsicHeight);
        }
        Drawable drawable3 = this.mDeletePressed;
        if (drawable3 != null) {
            drawable3.setBounds(0, 0, this.mDeleteIconWidth, this.mDeleteIconHeight);
        }
        if (this.mQuickDelete && this.mShowDeleteIcon && !TextUtils.isEmpty(getText()) && hasFocus() && this.mDeletable && (drawable = this.mDeleteNormal) != null) {
            setCompoundDrawables(null, null, drawable, null);
        }
        updateTextInputBoxState();
        typedArrayObtainStyledAttributes.recycle();
        invalidate();
    }

    public void removeOnErrorStateChangedListener(OnErrorStateChangedListener onErrorStateChangedListener) {
        this.mErrorStateHelper.removeOnErrorStateChangedListener(onErrorStateChangedListener);
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.mBoxBackgroundMode) {
            return;
        }
        this.mBoxBackgroundMode = i10;
        onApplyBoxBackgroundMode();
    }

    public void setBoxStrokeColor(int i10) {
        if (this.mFocusedStrokeColor != i10) {
            this.mFocusedStrokeColor = i10;
            this.mFocusedPaint.setColor(i10);
            updateTextInputBoxState();
        }
    }

    public void setCollapsedTextAppearance(int i10, ColorStateList colorStateList) {
        this.mCOUICollapseTextHelper.setCollapsedTextAppearance(i10, colorStateList);
        this.mFocusedTextColor = this.mCOUICollapseTextHelper.getCollapsedTextColor();
        updateLabelState(false);
        this.mErrorStateHelper.setCollapsedTextAppearance(i10, colorStateList);
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        if (drawable3 != null) {
            this.mDrawableSizeRight = drawable3.getBounds().width();
        } else {
            this.mDrawableSizeRight = 0;
        }
    }

    public void setCouiEditTexttNoEllipsisText(String str) {
        this.mInputText = str;
        setText(str);
    }

    public void setCustomEditTextOnTouchListener(View.OnTouchListener onTouchListener) {
        this.mCustomEditTextTouchListener = onTouchListener;
    }

    public void setDefaultStrokeColor(int i10) {
        if (this.mDefaultStrokeColor != i10) {
            this.mDefaultStrokeColor = i10;
            this.mNormalPaint.setColor(i10);
            updateTextInputBoxState();
        }
    }

    public void setDisabledStrokeColor(int i10) {
        if (this.mDisabledColor != i10) {
            this.mDisabledColor = i10;
            this.mDisabledPaint.setColor(i10);
            updateTextInputBoxState();
        }
    }

    public void setEditFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mEditFocusChangeListener = onFocusChangeListener;
    }

    public void setEditTextColor(int i10) {
        setTextColor(i10);
        this.mErrorStateHelper.setOriginalTextColors(getTextColors());
    }

    public void setEditTextDeleteIconNormal(Drawable drawable) {
        if (drawable != null) {
            this.mDeleteNormal = drawable;
            this.mDeleteIconWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = this.mDeleteNormal.getIntrinsicHeight();
            this.mDeleteIconHeight = intrinsicHeight;
            this.mDeleteNormal.setBounds(0, 0, this.mDeleteIconWidth, intrinsicHeight);
            invalidate();
        }
    }

    public void setEditTextDeleteIconPressed(Drawable drawable) {
        if (drawable != null) {
            this.mDeletePressed = drawable;
            drawable.setBounds(0, 0, this.mDeleteIconWidth, this.mDeleteIconHeight);
            invalidate();
        }
    }

    public void setEditTextErrorColor(int i10) {
        if (i10 != this.mErrorColor) {
            this.mErrorColor = i10;
            this.mErrorStateHelper.setErrorColor(i10);
            invalidate();
        }
    }

    public void setErrorState(boolean z10) {
        this.mErrorState = z10;
        this.mErrorStateHelper.setErrorState(z10);
    }

    public void setFastDeletable(boolean z10) {
        if (this.mQuickDelete != z10) {
            this.mQuickDelete = z10;
            if (z10 && this.mCOUITextWatcher == null) {
                COUITextWatcher cOUITextWatcher = new COUITextWatcher();
                this.mCOUITextWatcher = cOUITextWatcher;
                addTextChangedListener(cOUITextWatcher);
            }
        }
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.mHintEnabled) {
            this.mHintEnabled = z10;
            if (!z10) {
                this.mIsProvidingHint = false;
                if (!TextUtils.isEmpty(this.mHint) && TextUtils.isEmpty(getHint())) {
                    setHint(this.mHint);
                }
                setHintInternal(null);
                return;
            }
            CharSequence hint = getHint();
            if (!TextUtils.isEmpty(hint)) {
                if (TextUtils.isEmpty(this.mHint)) {
                    setTopHint(hint);
                }
                setHint((CharSequence) null);
            }
            this.mIsProvidingHint = true;
        }
    }

    public void setInputConnectionListener(InputConnectionListener inputConnectionListener) {
        this.mInputConnectionListener = inputConnectionListener;
    }

    public void setIsEllipsisEnabled(boolean z10) {
        this.mIsEllipsisEnabled = z10;
    }

    public void setJustShowFocusLine(boolean z10) {
        this.mJustShowFocusLine = z10;
    }

    public void setOnTextDeletedListener(OnTextDeletedListener onTextDeletedListener) {
        this.mTextDeleteListener = onTextDeletedListener;
    }

    public void setShowDeleteIcon(boolean z10) {
        this.mShowDeleteIcon = z10;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        Selection.setSelection(getText(), length());
    }

    public void setTextDeletedListener(OnPasswordDeletedListener onPasswordDeletedListener) {
        this.mPasswordDeleteListener = onPasswordDeletedListener;
    }

    public void setTopHint(CharSequence charSequence) {
        setHintInternal(charSequence);
    }

    public void setmHintAnimationEnabled(boolean z10) {
        this.mHintAnimationEnabled = z10;
    }

    public void updateLabelState(boolean z10) {
        updateLabelState(z10, false);
    }

    public COUIEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    private void updateLabelState(boolean z10, boolean z11) {
        COUICutoutDrawable.COUICollapseTextHelper cOUICollapseTextHelper;
        ColorStateList colorStateList;
        boolean zIsEnabled = isEnabled();
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (this.mDefaultHintTextColor != null) {
            this.mDefaultHintTextColor = getHintTextColors();
            COUICutoutDrawable.COUICollapseTextHelper cOUICollapseTextHelper2 = this.mCOUICollapseTextHelper;
            if (cOUICollapseTextHelper2 != null) {
                cOUICollapseTextHelper2.setCollapsedTextColor(this.mFocusedTextColor);
                this.mCOUICollapseTextHelper.setExpandedTextColor(this.mDefaultHintTextColor);
            }
        }
        COUICutoutDrawable.COUICollapseTextHelper cOUICollapseTextHelper3 = this.mCOUICollapseTextHelper;
        if (cOUICollapseTextHelper3 != null) {
            if (!zIsEnabled) {
                cOUICollapseTextHelper3.setCollapsedTextColor(ColorStateList.valueOf(this.mDisabledColor));
                this.mCOUICollapseTextHelper.setExpandedTextColor(ColorStateList.valueOf(this.mDisabledColor));
            } else if (hasFocus() && (colorStateList = this.mFocusedTextColor) != null) {
                this.mCOUICollapseTextHelper.setCollapsedTextColor(colorStateList);
            }
        }
        if (!zIsEmpty || (isEnabled() && hasFocus())) {
            if (z11 || this.mHintExpanded) {
                collapseHint(z10);
            }
        } else if ((z11 || !this.mHintExpanded) && isHintEnabled()) {
            expandHint(z10);
        }
        COUIErrorEditTextHelper cOUIErrorEditTextHelper = this.mErrorStateHelper;
        if (cOUIErrorEditTextHelper == null || (cOUICollapseTextHelper = this.mCOUICollapseTextHelper) == null) {
            return;
        }
        cOUIErrorEditTextHelper.updateLabelState(cOUICollapseTextHelper);
    }

    @SuppressLint({"WrongConstant"})
    public COUIEditText(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        COUICutoutDrawable.COUICollapseTextHelper cOUICollapseTextHelper = new COUICutoutDrawable.COUICollapseTextHelper(this);
        this.mCOUICollapseTextHelper = cOUICollapseTextHelper;
        this.mShouldHandleDelete = false;
        this.mQuickDelete = false;
        this.mDeletable = false;
        this.mTextDeleteListener = null;
        this.mPasswordDeleteListener = null;
        this.mForceFinishDetach = false;
        this.mDeleteButton = null;
        this.mCOUITextWatcher = null;
        this.mStrokeWidth = 1;
        this.mStrokeWidthFocused = 3;
        this.mTmpRectF = new RectF();
        this.mIsEllipsis = false;
        this.mIsEllipsisEnabled = false;
        this.mInputText = "";
        this.mClickSelectionPosition = 0;
        this.mShowDeleteIcon = true;
        this.mJustShowFocusLine = false;
        this.mCancelDeleteIcon = new Runnable() { // from class: com.coui.appcompat.edittext.COUIEditText.1
            @Override // java.lang.Runnable
            public void run() {
                COUIEditText.this.setCompoundDrawables(null, null, null, null);
            }
        };
        this.mSetDeleteIcon = new Runnable() { // from class: com.coui.appcompat.edittext.COUIEditText.2
            @Override // java.lang.Runnable
            public void run() {
                COUIEditText cOUIEditText = COUIEditText.this;
                cOUIEditText.setCompoundDrawables(null, null, cOUIEditText.mDeleteNormal, null);
            }
        };
        if (attributeSet != null) {
            this.mRefreshStyle = attributeSet.getStyleAttribute();
        }
        if (this.mRefreshStyle == 0) {
            this.mRefreshStyle = i10;
        }
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIEditText, i10, 0);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIEditText_quickDelete, false);
        this.mErrorColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIEditText_couiEditTextErrorColor, COUIContextUtil.getAttrColor(context, R$attr.couiColorErrorTextBg));
        this.mDeleteNormal = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIEditText_couiEditTextDeleteIconNormal);
        this.mDeletePressed = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIEditText_couiEditTextDeleteIconPressed);
        this.mIsEllipsisEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIEditText_couiEditTextIsEllipsis, true);
        int i11 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIEditText_couiEditTextHintLines, 1);
        cOUICollapseTextHelper.setHintLines(i11);
        typedArrayObtainStyledAttributes.recycle();
        setFastDeletable(z10);
        Drawable drawable = this.mDeleteNormal;
        if (drawable != null) {
            this.mDeleteIconWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = this.mDeleteNormal.getIntrinsicHeight();
            this.mDeleteIconHeight = intrinsicHeight;
            this.mDeleteNormal.setBounds(0, 0, this.mDeleteIconWidth, intrinsicHeight);
        }
        Drawable drawable2 = this.mDeletePressed;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, this.mDeleteIconWidth, this.mDeleteIconHeight);
        }
        cOUICollapseTextHelper.setHintPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_edit_text_hint_start_padding));
        AccessibilityTouchHelper accessibilityTouchHelper = new AccessibilityTouchHelper(this);
        this.mTouchHelper = accessibilityTouchHelper;
        m0.j0(this, accessibilityTouchHelper);
        m0.t0(this, 1);
        this.mDeleteButton = this.mContext.getString(R$string.coui_slide_delete);
        this.mTouchHelper.invalidateRoot();
        this.mErrorStateHelper = new COUIErrorEditTextHelper(this, i11);
        initHintMode(context, attributeSet, i10);
        this.mErrorStateHelper.init(this.mErrorColor, this.mStrokeWidthFocused, this.mBoxBackgroundMode, getCornerRadiiAsArray(), cOUICollapseTextHelper);
    }
}
