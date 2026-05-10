package com.coui.appcompat.progressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.log.COUILog;
import com.oplus.anim.EffectiveAnimationView;
import com.support.appcompat.R$attr;
import com.support.progressbar.R$dimen;
import com.support.progressbar.R$style;
import com.support.progressbar.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUICompProgressIndicator extends LinearLayout {
    public static final int LARGE_ANIMATION = 0;
    public static final int LARGE_ANIMATION_WITH_TEXT_VERTICAL = 3;
    public static final int SMALL_ANIMATION = 1;
    public static final int SMALL_ANIMATION_WITH_TEXT_HORIZONTAL = 2;
    public static final int SMALL_ANIMATION_WITH_TEXT_VERTICAL = 4;
    private static final String TAG = "COUICompProgressIndicator";
    private static final int TEXTSIZE_DP_VALUE = 12;
    private boolean mAutoPlay;
    private Context mContext;
    private int mCouiLargeLoadingTextviewTopMargin;
    private int mCouiLoadingTextviewBottomMargin;
    private int mCouiLoadingTextviewLeftMargin;
    private int mCouiLoadingType;
    private String mCouiLottieLoadingJsonName;
    private int mCouiLottieLoadingRawRes;
    private int mCouiLottieLoadingViewHeight;
    private int mCouiLottieLoadingViewHeightMax;
    private int mCouiLottieLoadingViewWidth;
    private int mCouiLottieLoadingViewWidthMax;
    private int mCouiSmallLoadingTextviewTopMargin;
    private int mCouiSmallLottieLoadingViewHeight;
    private int mCouiSmallLottieLoadingViewWidth;
    private int mDefaultType;
    private EffectiveAnimationView mEffectViewAnimationView;
    private String mLoadingTips;
    private boolean mNeedRePlay;
    private int mRepeatCount;
    private boolean mTextFix;
    private TextView mTipsTextView;

    public COUICompProgressIndicator(Context context) {
        this(context, null);
    }

    private void addEffectiveView(boolean z10) {
        EffectiveAnimationView effectiveAnimationView = new EffectiveAnimationView(this.mContext);
        this.mEffectViewAnimationView = effectiveAnimationView;
        effectiveAnimationView.setRepeatCount(this.mRepeatCount);
        LinearLayout.LayoutParams layoutParams = z10 ? new LinearLayout.LayoutParams(this.mCouiLottieLoadingViewWidth, this.mCouiLottieLoadingViewHeight) : new LinearLayout.LayoutParams(this.mCouiSmallLottieLoadingViewWidth, this.mCouiSmallLottieLoadingViewHeight);
        layoutParams.gravity = 17;
        this.mEffectViewAnimationView.setLayoutParams(layoutParams);
        if (!TextUtils.isEmpty(this.mCouiLottieLoadingJsonName)) {
            this.mEffectViewAnimationView.setAnimation(this.mCouiLottieLoadingJsonName);
        }
        int i10 = this.mCouiLottieLoadingRawRes;
        if (i10 != -1) {
            this.mEffectViewAnimationView.setAnimation(i10);
        }
        addView(this.mEffectViewAnimationView);
        if (this.mAutoPlay) {
            this.mEffectViewAnimationView.v();
        }
    }

    private void addSubView() {
        int i10 = this.mCouiLoadingType;
        if (i10 == 0) {
            addEffectiveView(true);
            return;
        }
        if (i10 == 1) {
            addEffectiveView(false);
            return;
        }
        if (i10 == 2) {
            setOrientation(0);
            addEffectiveView(false);
            addTipsTextView(false);
        } else if (i10 == 3) {
            addEffectiveView(true);
            addTipsTextView(true);
        } else {
            if (i10 != 4) {
                return;
            }
            addEffectiveView(false);
            addTipsTextView(true);
        }
    }

    private void addTipsTextView(boolean z10) {
        TextView textView = new TextView(new ContextThemeWrapper(this.mContext, z10 ? R$style.Widget_COUI_COUICompProgressIndicator_TipsTextView_Vertical : R$style.Widget_COUI_COUICompProgressIndicator_TipsTextView));
        this.mTipsTextView = textView;
        textView.setText(this.mLoadingTips);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i10 = this.mCouiLoadingType;
        if (i10 == 2) {
            layoutParams.setMarginStart(this.mCouiLoadingTextviewLeftMargin);
        } else if (i10 == 3) {
            layoutParams.setMargins(0, this.mCouiLargeLoadingTextviewTopMargin, 0, this.mCouiLoadingTextviewBottomMargin);
        } else if (i10 == 4) {
            layoutParams.setMargins(0, this.mCouiSmallLoadingTextviewTopMargin, 0, this.mCouiLoadingTextviewBottomMargin);
        }
        if (this.mTextFix) {
            this.mTipsTextView.setTextSize(1, 12.0f);
        }
        addView(this.mTipsTextView, layoutParams);
    }

    public EffectiveAnimationView getAnimationView() {
        return this.mEffectViewAnimationView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mEffectViewAnimationView == null) {
            addSubView();
        }
        EffectiveAnimationView effectiveAnimationView = this.mEffectViewAnimationView;
        if (effectiveAnimationView == null || !this.mNeedRePlay) {
            return;
        }
        effectiveAnimationView.w();
        this.mNeedRePlay = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EffectiveAnimationView effectiveAnimationView = this.mEffectViewAnimationView;
        if (effectiveAnimationView == null || !effectiveAnimationView.p()) {
            return;
        }
        this.mNeedRePlay = true;
        this.mEffectViewAnimationView.u();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        EffectiveAnimationView effectiveAnimationView = this.mEffectViewAnimationView;
        if (effectiveAnimationView != null) {
            if (i10 != 0) {
                if (effectiveAnimationView.p()) {
                    this.mNeedRePlay = true;
                    this.mEffectViewAnimationView.u();
                    return;
                }
                return;
            }
            if (this.mNeedRePlay) {
                effectiveAnimationView.w();
                this.mNeedRePlay = false;
            }
        }
    }

    public void setLoadingTips(String str) {
        this.mLoadingTips = str;
        TextView textView = this.mTipsTextView;
        if (textView != null) {
            textView.setText(str);
        } else {
            Log.e(TAG, "This method only takes effect when mCouiLoadingType is SMALL_ANIMATION_WITH_TEXT_HORIZONTAL 、LARGE_ANIMATION_WITH_TEXT_VERTICAL、SMALL_ANIMATION_WITH_TEXT_VERTICAL");
        }
    }

    public COUICompProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUICompProgressIndicator(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, 0, 0);
    }

    public COUICompProgressIndicator(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mDefaultType = 0;
        this.mTextFix = false;
        this.mCouiLottieLoadingRawRes = -1;
        this.mRepeatCount = -1;
        this.mAutoPlay = true;
        this.mNeedRePlay = false;
        this.mContext = context;
        this.mCouiLottieLoadingViewWidthMax = getResources().getDimensionPixelSize(R$dimen.coui_loading_max_large_width);
        this.mCouiLottieLoadingViewHeightMax = getResources().getDimensionPixelSize(R$dimen.coui_loading_max_large_height);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICompProgressIndicator, i10, 0);
        this.mCouiLoadingType = typedArrayObtainStyledAttributes.getInt(R$styleable.COUICompProgressIndicator_couiLoadingType, this.mDefaultType);
        this.mLoadingTips = typedArrayObtainStyledAttributes.getString(R$styleable.COUICompProgressIndicator_loadingTips);
        this.mCouiLottieLoadingJsonName = typedArrayObtainStyledAttributes.getString(R$styleable.COUICompProgressIndicator_couiLottieLoadingJsonName);
        this.mCouiLottieLoadingRawRes = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUICompProgressIndicator_couiLottieLoadingRawRes, -1);
        this.mRepeatCount = typedArrayObtainStyledAttributes.getInt(R$styleable.COUICompProgressIndicator_couiRepeatCount, this.mRepeatCount);
        this.mAutoPlay = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICompProgressIndicator_couiAutoPlay, this.mAutoPlay);
        this.mCouiLottieLoadingViewWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUICompProgressIndicator_couiLottieLoadingViewWidth, getResources().getDimensionPixelOffset(R$dimen.coui_loading_large_width));
        this.mCouiLottieLoadingViewHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUICompProgressIndicator_couiLottieLoadingViewHeight, getResources().getDimensionPixelOffset(R$dimen.coui_loading_large_height));
        this.mCouiSmallLottieLoadingViewWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUICompProgressIndicator_couiSmallLottieLoadingViewWidth, getResources().getDimensionPixelOffset(R$dimen.coui_loading_small_width));
        this.mCouiSmallLottieLoadingViewHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUICompProgressIndicator_couiSmallLottieLoadingViewHeight, getResources().getDimensionPixelOffset(R$dimen.coui_loading_small_height));
        int i12 = this.mCouiLottieLoadingViewWidth;
        int i13 = this.mCouiLottieLoadingViewWidthMax;
        if (i12 > i13) {
            this.mCouiLottieLoadingViewWidth = i13;
            COUILog.v(TAG, "couiLottieLoadingViewWidth Cannot be larger than 40 dp");
        }
        int i14 = this.mCouiLottieLoadingViewHeight;
        int i15 = this.mCouiLottieLoadingViewHeightMax;
        if (i14 > i15) {
            this.mCouiLottieLoadingViewHeight = i15;
            COUILog.v(TAG, "couiLottieLoadingViewHeight Cannot be larger than 40 dp");
        }
        int i16 = this.mCouiSmallLottieLoadingViewWidth;
        int i17 = this.mCouiLottieLoadingViewWidthMax;
        if (i16 > i17) {
            this.mCouiSmallLottieLoadingViewWidth = i17;
            COUILog.v(TAG, "couiSmallLottieLoadingViewWidth Cannot be larger than 40 dp");
        }
        int i18 = this.mCouiSmallLottieLoadingViewHeight;
        int i19 = this.mCouiLottieLoadingViewHeightMax;
        if (i18 > i19) {
            this.mCouiSmallLottieLoadingViewHeight = i19;
            COUILog.v(TAG, "couiSmallLottieLoadingViewHeight Cannot be larger than 40 dp");
        }
        if (TextUtils.isEmpty(this.mCouiLottieLoadingJsonName)) {
            this.mCouiLottieLoadingJsonName = COUIContextUtil.getAttrString(this.mContext, R$attr.couiRotatingSpinnerJsonName);
        }
        this.mTextFix = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICompProgressIndicator_couiTextFix, this.mTextFix);
        typedArrayObtainStyledAttributes.recycle();
        this.mCouiLoadingTextviewLeftMargin = context.getResources().getDimensionPixelSize(R$dimen.coui_loading_textview_left_margin);
        this.mCouiLargeLoadingTextviewTopMargin = context.getResources().getDimensionPixelSize(R$dimen.coui_loading_textview_top_margin);
        this.mCouiSmallLoadingTextviewTopMargin = context.getResources().getDimensionPixelSize(R$dimen.coui_loading_textview_top_margin_small);
        this.mCouiLoadingTextviewBottomMargin = context.getResources().getDimensionPixelSize(R$dimen.coui_loading_textview_bottom_margin);
        setGravity(17);
        setOrientation(1);
    }

    public void setLoadingTips(int i10) {
        setLoadingTips(this.mContext.getString(i10));
    }
}
