package com.coui.appcompat.floatingactionbutton;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.coui.appcompat.animation.COUIAnimationListenerAdapter;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.floatingactionbutton.COUIFloatingButton;
import com.coui.appcompat.floatingactionbutton.COUIFloatingButtonItem;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.statelistutil.COUIStateListUtil;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.shape.n;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;
import com.support.floatingactionbutton.R$color;
import com.support.floatingactionbutton.R$id;
import com.support.floatingactionbutton.R$layout;
import com.support.floatingactionbutton.R$styleable;
import t.h;

/* JADX INFO: loaded from: classes.dex */
public class COUIFloatingButtonLabel extends LinearLayout {
    private static final int DEFAULT_ELEVATION_FLOATING_BUTTON = 24;
    private static final float DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE = 0.98f;
    private static final String TAG = "COUIFloatingButtonLabel";
    private int mButtonSize;
    private ShapeableImageView mChildFloatingButton;
    private COUIFloatingButtonItem mFloatingButtonItem;
    private int mFloatingButtonPixel;
    private boolean mIsLabelEnabled;
    private boolean mIsNeedVibrate;
    private CardView mLabelBackground;
    private float mLabelCardViewElevation;
    private TextView mLabelTextView;
    private COUIFloatingButton.OnActionSelectedListener mOnActionSelectedListener;
    private ValueAnimator mPressAnimationRecorder;
    private float mPressValue;
    private final COUIFloatingButtonSeamlessImpl mSeamlessImpl;
    private int mShadowColor;

    public COUIFloatingButtonLabel(Context context) {
        super(context);
        this.mSeamlessImpl = new COUIFloatingButtonSeamlessImpl();
        this.mIsNeedVibrate = true;
        this.mButtonSize = 0;
        this.mShadowColor = -1;
        init(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateNormal() {
        clearAnimation();
        cancelRecorder();
        ShapeableImageView shapeableImageView = this.mChildFloatingButton;
        shapeableImageView.startAnimation(COUIFABPressFeedbackUtil.generateResumeAnimation(shapeableImageView, this.mPressValue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animatePress() {
        performHapticFeedback();
        clearAnimation();
        cancelRecorder();
        COUIFloatingButtonTouchAnimation cOUIFloatingButtonTouchAnimationGeneratePressAnimation = COUIFABPressFeedbackUtil.generatePressAnimation(this.mChildFloatingButton);
        ValueAnimator valueAnimatorGeneratePressAnimationRecord = COUIFABPressFeedbackUtil.generatePressAnimationRecord();
        this.mPressAnimationRecorder = valueAnimatorGeneratePressAnimationRecord;
        valueAnimatorGeneratePressAnimationRecord.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonLabel.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUIFloatingButtonLabel.this.mPressValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (COUIFloatingButtonLabel.this.mPressValue >= COUIFloatingButtonLabel.DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE) {
                    COUIFloatingButtonLabel.this.mPressValue = COUIFloatingButtonLabel.DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE;
                }
            }
        });
        cOUIFloatingButtonTouchAnimationGeneratePressAnimation.setAnimationListener(new COUIAnimationListenerAdapter() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonLabel.7
            @Override // com.coui.appcompat.animation.COUIAnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                COUIFloatingButtonLabel.this.mPressAnimationRecorder.start();
            }
        });
        this.mChildFloatingButton.startAnimation(cOUIFloatingButtonTouchAnimationGeneratePressAnimation);
    }

    private void cancelRecorder() {
        ValueAnimator valueAnimator = this.mPressAnimationRecorder;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mPressAnimationRecorder.cancel();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void childFloatingButtonTouch() {
        this.mChildFloatingButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonLabel.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    COUIFloatingButtonLabel.this.mSeamlessImpl.setSeamlessBundle(COUIFloatingButtonLabel.this.mChildFloatingButton);
                    COUIFloatingButtonLabel.this.animatePress();
                    return false;
                }
                if (action != 1 && action != 3) {
                    return false;
                }
                COUIFloatingButtonLabel.this.animateNormal();
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnClickFloatingButton() {
        COUIFloatingButtonItem floatingButtonItem = getFloatingButtonItem();
        COUIFloatingButton.OnActionSelectedListener onActionSelectedListener = this.mOnActionSelectedListener;
        if (onActionSelectedListener == null || floatingButtonItem == null) {
            return;
        }
        onActionSelectedListener.onActionSelected(floatingButtonItem);
    }

    private void init(Context context, AttributeSet attributeSet) {
        View viewInflate = View.inflate(context, R$layout.coui_floating_button_item_label, this);
        this.mChildFloatingButton = (ShapeableImageView) viewInflate.findViewById(R$id.coui_floating_button_child_fab);
        this.mLabelTextView = (TextView) viewInflate.findViewById(R$id.coui_floating_button_label);
        this.mLabelBackground = (CardView) viewInflate.findViewById(R$id.coui_floating_button_label_container);
        ShadowUtils.setElevationToFloatingActionButton(this.mChildFloatingButton, getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_three), getResources().getColor(R$color.coui_floating_button_elevation_color), this.mShadowColor);
        this.mChildFloatingButton.setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonLabel.3
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setOval(0, 0, view.getWidth(), view.getHeight());
            }
        });
        this.mChildFloatingButton.setShapeAppearanceModel(n.a().p(n.f10075m).m());
        ShadowUtils.setElevationToFloatingActionButton(this.mLabelBackground, getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_three), getResources().getColor(R$color.coui_floating_button_elevation_color), this.mShadowColor);
        this.mLabelBackground.setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonLabel.4
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), COUIContextUtil.getAttrDimens(COUIFloatingButtonLabel.this.getContext(), R$attr.couiRoundCornerXS));
            }
        });
        setOrientation(0);
        setClipChildren(false);
        setClipToPadding(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIFloatingButtonLabel, 0, 0);
        try {
            try {
                this.mIsNeedVibrate = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIFloatingButtonLabel_fabLabelNeedVibrate, true);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIFloatingButtonLabel_srcCompat, Integer.MIN_VALUE);
                if (resourceId == Integer.MIN_VALUE) {
                    resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIFloatingButtonLabel_android_src, Integer.MIN_VALUE);
                }
                COUIFloatingButtonItem.Builder builder = new COUIFloatingButtonItem.Builder(getId(), resourceId);
                builder.setLabel(typedArrayObtainStyledAttributes.getString(R$styleable.COUIFloatingButtonLabel_fabLabel));
                builder.setFabBackgroundColor(ColorStateList.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.COUIFloatingButtonLabel_fabBackgroundColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimary, 0))));
                builder.setLabelColor(ColorStateList.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.COUIFloatingButtonLabel_fabLabelColor, Integer.MIN_VALUE)));
                builder.setLabelBackgroundColor(ColorStateList.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.COUIFloatingButtonLabel_fabLabelBackgroundColor, Integer.MIN_VALUE)));
                setFloatingButtonItem(builder.create());
            } catch (Exception e10) {
                Log.e(TAG, "Failure setting FabWithLabelView icon" + e10.getMessage());
            }
            typedArrayObtainStyledAttributes.recycle();
            setClipChildren(false);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void performHapticFeedback() {
        if (this.mIsNeedVibrate) {
            performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        }
    }

    private void setChildFloatingButtonSize() {
        LinearLayout.LayoutParams layoutParams;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(com.support.floatingactionbutton.R$dimen.coui_floating_button_fab_normal_size);
        getContext().getResources().getDimensionPixelSize(com.support.floatingactionbutton.R$dimen.coui_floating_button_fab_side_margin);
        getContext().getResources().getDimensionPixelSize(com.support.floatingactionbutton.R$dimen.coui_floating_button_item_normal_bottom_margin);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mChildFloatingButton.getLayoutParams();
        if (getOrientation() == 0) {
            layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 8388613;
        } else {
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(dimensionPixelSize, -2);
            layoutParams3.gravity = 16;
            layoutParams2.setMargins(0, 0, 0, 0);
            layoutParams = layoutParams3;
        }
        setLayoutParams(layoutParams);
        this.mChildFloatingButton.setLayoutParams(layoutParams2);
    }

    private void setFabBackgroundColor(ColorStateList colorStateList) {
        this.mChildFloatingButton.setBackgroundTintList(colorStateList);
    }

    private void setFabIcon(Drawable drawable) {
        this.mChildFloatingButton.setImageDrawable(drawable);
    }

    private void setLabel(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            setLabelEnabled(false);
        } else {
            this.mLabelTextView.setText(charSequence);
            setLabelEnabled(getOrientation() == 0);
        }
    }

    private void setLabelBackgroundColor(ColorStateList colorStateList) {
        if (colorStateList == ColorStateList.valueOf(Integer.MIN_VALUE)) {
            this.mLabelBackground.setCardBackgroundColor(0);
            this.mLabelCardViewElevation = this.mLabelBackground.getElevation();
            this.mLabelBackground.setElevation(0.0f);
        } else {
            this.mLabelBackground.setCardBackgroundColor(colorStateList);
            float f10 = this.mLabelCardViewElevation;
            if (f10 != 0.0f) {
                this.mLabelBackground.setElevation(f10);
                this.mLabelCardViewElevation = 0.0f;
            }
        }
    }

    private void setLabelEnabled(boolean z10) {
        this.mIsLabelEnabled = z10;
        this.mLabelBackground.setVisibility(z10 ? 0 : 8);
    }

    private void setLabelTextColor(ColorStateList colorStateList) {
        this.mLabelTextView.setTextColor(colorStateList);
    }

    private void setShadowColor(int i10) {
        this.mShadowColor = i10;
        ShadowUtils.setElevationToFloatingActionButton(this.mChildFloatingButton, getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_three), getResources().getColor(R$color.coui_floating_button_elevation_color), this.mShadowColor);
        ShadowUtils.setElevationToFloatingActionButton(this.mLabelBackground, getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_three), getResources().getColor(R$color.coui_floating_button_elevation_color), this.mShadowColor);
    }

    public ImageView getChildFloatingButton() {
        return this.mChildFloatingButton;
    }

    public PorterDuffColorFilter getDrawableFilter(int i10) {
        return new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_ATOP);
    }

    public COUIFloatingButtonItem getFloatingButtonItem() {
        COUIFloatingButtonItem cOUIFloatingButtonItem = this.mFloatingButtonItem;
        if (cOUIFloatingButtonItem != null) {
            return cOUIFloatingButtonItem;
        }
        throw new IllegalStateException("SpeedDialActionItem not set yet!");
    }

    public COUIFloatingButtonItem.Builder getFloatingButtonItemBuilder() {
        return new COUIFloatingButtonItem.Builder(getFloatingButtonItem());
    }

    public CardView getFloatingButtonLabelBackground() {
        return this.mLabelBackground;
    }

    public TextView getFloatingButtonLabelText() {
        return this.mLabelTextView;
    }

    public Bundle getSeamlessViewBundle() {
        return this.mSeamlessImpl.getSeamlessViewBundle();
    }

    public boolean isLabelEnabled() {
        return this.mIsLabelEnabled;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mButtonSize <= 0) {
            Context contextCreateConfigurationContext = getContext().createConfigurationContext(configuration);
            if (COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp)) {
                this.mFloatingButtonPixel = contextCreateConfigurationContext.getResources().getDimensionPixelOffset(com.support.floatingactionbutton.R$dimen.coui_floating_button_normal_size);
            } else {
                this.mFloatingButtonPixel = contextCreateConfigurationContext.getResources().getDimensionPixelOffset(com.support.floatingactionbutton.R$dimen.coui_floating_button_large_size);
            }
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mChildFloatingButton.getLayoutParams();
            int i10 = this.mFloatingButtonPixel;
            layoutParams.width = i10;
            layoutParams.height = i10;
            this.mChildFloatingButton.setLayoutParams(layoutParams);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.mLabelTextView.setEnabled(z10);
        this.mChildFloatingButton.setEnabled(z10);
        this.mLabelBackground.setEnabled(z10);
    }

    public void setFloatingButtonItem(COUIFloatingButtonItem cOUIFloatingButtonItem) {
        this.mFloatingButtonItem = cOUIFloatingButtonItem;
        setId(cOUIFloatingButtonItem.getFloatingButtonItemLocation());
        setLabel(cOUIFloatingButtonItem.getLabel(getContext()));
        setFabIcon(cOUIFloatingButtonItem.getFabImageDrawable(getContext()));
        ColorStateList fabBackgroundColor = cOUIFloatingButtonItem.getFabBackgroundColor();
        int color = getContext().getResources().getColor(com.support.appcompat.R$color.couiGreenTintControlNormal);
        int attrColor = COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimary, color);
        if (fabBackgroundColor == ColorStateList.valueOf(Integer.MIN_VALUE)) {
            fabBackgroundColor = COUIStateListUtil.createColorStateList(attrColor, color);
        } else {
            setShadowColor(fabBackgroundColor.getDefaultColor());
        }
        setFabBackgroundColor(fabBackgroundColor);
        ColorStateList labelColor = cOUIFloatingButtonItem.getLabelColor();
        if (labelColor == ColorStateList.valueOf(Integer.MIN_VALUE)) {
            labelColor = h.e(getResources(), R$color.coui_floating_button_label_text_color, getContext().getTheme());
        }
        setLabelTextColor(labelColor);
        ColorStateList labelBackgroundColor = cOUIFloatingButtonItem.getLabelBackgroundColor();
        if (labelBackgroundColor == ColorStateList.valueOf(Integer.MIN_VALUE)) {
            labelBackgroundColor = COUIStateListUtil.createColorStateList(attrColor, color);
        }
        setLabelBackgroundColor(labelBackgroundColor);
        if (cOUIFloatingButtonItem.isCOUIFloatingButtonExpandEnable()) {
            childFloatingButtonTouch();
        }
        getChildFloatingButton().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonLabel.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                COUIFloatingButtonLabel.this.handleOnClickFloatingButton();
            }
        });
    }

    protected void setMainButtonSize(int i10) {
        this.mButtonSize = i10;
        if (i10 > 0) {
            this.mFloatingButtonPixel = i10;
        } else {
            this.mFloatingButtonPixel = getResources().getDimensionPixelSize(com.support.floatingactionbutton.R$dimen.coui_floating_button_size);
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mChildFloatingButton.getLayoutParams();
        int i11 = this.mFloatingButtonPixel;
        layoutParams.width = i11;
        layoutParams.height = i11;
        this.mChildFloatingButton.setLayoutParams(layoutParams);
    }

    public void setOnActionSelectedListener(COUIFloatingButton.OnActionSelectedListener onActionSelectedListener) {
        this.mOnActionSelectedListener = onActionSelectedListener;
        if (onActionSelectedListener != null) {
            getFloatingButtonLabelBackground().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonLabel.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    COUIFloatingButtonItem floatingButtonItem = COUIFloatingButtonLabel.this.getFloatingButtonItem();
                    if (COUIFloatingButtonLabel.this.mOnActionSelectedListener == null || floatingButtonItem == null) {
                        return;
                    }
                    COUIFloatingButtonLabel.this.mOnActionSelectedListener.onActionSelected(floatingButtonItem);
                }
            });
        } else {
            getChildFloatingButton().setOnClickListener(null);
            getFloatingButtonLabelBackground().setOnClickListener(null);
        }
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        super.setOrientation(i10);
        setChildFloatingButtonSize();
        if (i10 == 1) {
            setLabelEnabled(false);
        } else {
            setLabel(this.mLabelTextView.getText().toString());
        }
    }

    @Override // android.view.View
    @SuppressLint({"RestrictedApi"})
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        getChildFloatingButton().setVisibility(i10);
        if (isLabelEnabled()) {
            getFloatingButtonLabelBackground().setVisibility(i10);
        }
    }

    public COUIFloatingButtonLabel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSeamlessImpl = new COUIFloatingButtonSeamlessImpl();
        this.mIsNeedVibrate = true;
        this.mButtonSize = 0;
        this.mShadowColor = -1;
        init(context, attributeSet);
    }

    public COUIFloatingButtonLabel(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mSeamlessImpl = new COUIFloatingButtonSeamlessImpl();
        this.mIsNeedVibrate = true;
        this.mButtonSize = 0;
        this.mShadowColor = -1;
        init(context, attributeSet);
    }
}
