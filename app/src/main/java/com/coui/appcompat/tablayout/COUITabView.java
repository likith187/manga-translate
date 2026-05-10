package com.coui.appcompat.tablayout;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.core.view.m0;
import androidx.core.widget.j;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.reddot.COUIHintRedDot;
import com.coui.appcompat.reddot.COUIHintRedDotMemento;
import com.coui.appcompat.state.COUIMaskEffectDrawable;
import com.coui.appcompat.state.COUIStateEffectDrawable;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.support.appcompat.R$string;
import com.support.tablayout.R$layout;
import t.h;

/* JADX INFO: loaded from: classes.dex */
public class COUITabView extends LinearLayout {
    private COUITabLayout mCOUITabLayout;
    private ImageView mCustomIconView;
    private TextView mCustomTextView;
    protected View mCustomView;
    private int mDefaultMaxLines;
    private COUIHintRedDot mHintRedDot;
    private ImageView mIconView;
    private COUIMaskEffectDrawable mMaskEffectDrawable;
    private boolean mSelectedByClick;
    private COUIStateEffectDrawable mStateEffectBackground;
    private COUITab mTab;
    private final RectF mTabRect;
    private TextView mTextFrame;

    public COUITabView(Context context, COUITabLayout cOUITabLayout) {
        super(context);
        this.mTabRect = new RectF();
        this.mDefaultMaxLines = 1;
        this.mCOUITabLayout = cOUITabLayout;
        if (cOUITabLayout.mTabBackgroundResId != 0) {
            m0.n0(this, h.f(context.getResources(), this.mCOUITabLayout.mTabBackgroundResId, getContext().getTheme()));
        }
        m0.z0(this, this.mCOUITabLayout.getTabPaddingStart(), this.mCOUITabLayout.getTabPaddingTop(), this.mCOUITabLayout.getTabPaddingEnd(), this.mCOUITabLayout.getTabPaddingBottom());
        setGravity(17);
        setOrientation(0);
        setClickable(true);
        configStateEffectBackground();
    }

    private float approximateLineWidth(Layout layout, int i10, float f10) {
        return layout.getLineWidth(i10) * (f10 / layout.getPaint().getTextSize());
    }

    private void configStateEffectBackground() {
        setDefaultFocusHighlightEnabled(false);
        COUIMaskEffectDrawable cOUIMaskEffectDrawable = new COUIMaskEffectDrawable(getContext(), 1);
        this.mMaskEffectDrawable = cOUIMaskEffectDrawable;
        cOUIMaskEffectDrawable.setMaskRect(this.mTabRect, dpToPx(8), dpToPx(8));
        this.mMaskEffectDrawable.enableSelectedState(false);
        this.mMaskEffectDrawable.setMinProgressForTouchEnterAnimation(0.0f);
        COUIStateEffectDrawable cOUIStateEffectDrawable = new COUIStateEffectDrawable(new Drawable[]{getBackground() == null ? new ColorDrawable(0) : getBackground(), this.mMaskEffectDrawable});
        this.mStateEffectBackground = cOUIStateEffectDrawable;
        super.setBackground(cOUIStateEffectDrawable);
        COUIDarkModeUtil.setForceDarkAllow(this, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTextAndIcon$0() {
        COUITabLayout cOUITabLayout = this.mCOUITabLayout;
        cOUITabLayout.mTabAlreadyMeasure = false;
        cOUITabLayout.mTabStrip.requestLayout();
    }

    private void updateTextAndIcon(TextView textView, ImageView imageView) {
        COUITab cOUITab = this.mTab;
        Drawable icon = cOUITab != null ? cOUITab.getIcon() : null;
        COUITab cOUITab2 = this.mTab;
        CharSequence text = cOUITab2 != null ? cOUITab2.getText() : null;
        COUITab cOUITab3 = this.mTab;
        CharSequence contentDescription = cOUITab3 != null ? cOUITab3.getContentDescription() : null;
        int iDpToPx = 0;
        if (imageView != null) {
            if (icon != null) {
                imageView.setImageDrawable(icon);
                imageView.setVisibility(0);
                setVisibility(0);
            } else {
                imageView.setVisibility(8);
                imageView.setImageDrawable(null);
            }
            imageView.setContentDescription(contentDescription);
        }
        boolean zIsEmpty = TextUtils.isEmpty(text);
        if (textView != null) {
            if (zIsEmpty) {
                textView.setVisibility(8);
                textView.setText((CharSequence) null);
            } else {
                CharSequence text2 = textView.getText();
                textView.setText(text);
                textView.setVisibility(0);
                COUITabLayout cOUITabLayout = this.mCOUITabLayout;
                if (cOUITabLayout.mTabAlreadyMeasure) {
                    COUISlidingTabStrip cOUISlidingTabStrip = cOUITabLayout.mTabStrip;
                    if (cOUISlidingTabStrip != null) {
                        cOUITabLayout.mTabAlreadyMeasure = false;
                        cOUISlidingTabStrip.requestLayout();
                    }
                } else if (!text.equals(text2)) {
                    this.mCOUITabLayout.mTabStrip.post(new Runnable() { // from class: com.coui.appcompat.tablayout.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f7394a.lambda$updateTextAndIcon$0();
                        }
                    });
                }
                textView.setMaxLines(this.mDefaultMaxLines);
                setVisibility(0);
            }
            textView.setContentDescription(contentDescription);
        }
        if (imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            if (!zIsEmpty && imageView.getVisibility() == 0) {
                iDpToPx = dpToPx(8);
            }
            if (iDpToPx != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = iDpToPx;
                imageView.requestLayout();
            }
        }
        androidx.appcompat.widget.m0.a(this, zIsEmpty ? contentDescription : null);
    }

    int dpToPx(int i10) {
        return Math.round(getResources().getDisplayMetrics().density * i10);
    }

    public COUIHintRedDot getHintRedDot() {
        return this.mHintRedDot;
    }

    boolean getSelectedByClick() {
        return this.mSelectedByClick;
    }

    public COUITab getTab() {
        return this.mTab;
    }

    public TextView getTextView() {
        return this.mTextFrame;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(a.b.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(a.b.class.getName());
        if (isSelected()) {
            return;
        }
        accessibilityNodeInfo.setStateDescription(getContext().getResources().getString(R$string.coui_accessibility_unselected));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mTabRect.set(0.0f, 0.0f, i10, i11);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            if (motionEvent.getAction() == 0) {
                COUITabLayout cOUITabLayout = this.mCOUITabLayout;
                if (cOUITabLayout.mEnableVibrator) {
                    COUITab cOUITab = cOUITabLayout.mSelectedTab;
                    if (cOUITab != null && cOUITab.mView != this) {
                        performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
                    }
                    this.mStateEffectBackground.setTouched(true);
                }
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.mStateEffectBackground.setTouched(false);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.mTab == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        this.mCOUITabLayout.mNeedAdjust = false;
        this.mSelectedByClick = true;
        this.mTab.select();
        this.mSelectedByClick = false;
        return true;
    }

    public void refresh() {
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable != null) {
            cOUIStateEffectDrawable.refresh(getContext());
        }
    }

    void reset() {
        setTab(null);
        setSelected(false);
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

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        TextView textView = this.mTextFrame;
        if (textView != null) {
            textView.setEnabled(z10);
        }
        ImageView imageView = this.mIconView;
        if (imageView != null) {
            imageView.setEnabled(z10);
        }
        View view = this.mCustomView;
        if (view != null) {
            view.setEnabled(z10);
        }
    }

    @Override // android.view.View
    public void setSelected(boolean z10) {
        TextView textView;
        boolean z11 = isSelected() != z10;
        super.setSelected(z10);
        if (z11 && (textView = this.mTextFrame) != null) {
            if (z10) {
                textView.setTypeface(this.mCOUITabLayout.mSelectedTypeface);
            } else {
                textView.setTypeface(this.mCOUITabLayout.mNormalTypeface);
            }
        }
        TextView textView2 = this.mTextFrame;
        if (textView2 != null) {
            COUIDarkModeUtil.setForceDarkAllow(textView2, !z10);
        }
        TextView textView3 = this.mTextFrame;
        if (textView3 != null) {
            textView3.setSelected(z10);
        }
        ImageView imageView = this.mIconView;
        if (imageView != null) {
            imageView.setSelected(z10);
        }
        View view = this.mCustomView;
        if (view != null) {
            view.setSelected(z10);
        }
    }

    void setTab(COUITab cOUITab) {
        if (cOUITab != this.mTab) {
            this.mTab = cOUITab;
            update();
        }
    }

    final void update() {
        COUITab cOUITab = this.mTab;
        COUIHintRedDotMemento cOUIHintRedDotMementoSaveMemento = null;
        View customView = cOUITab != null ? cOUITab.getCustomView() : null;
        boolean z10 = false;
        if (customView != null) {
            ViewParent parent = customView.getParent();
            if (parent != this) {
                if (parent != null) {
                    ((ViewGroup) parent).removeView(customView);
                }
                addView(customView, 0, new ViewGroup.LayoutParams(-2, -2));
            }
            this.mCustomView = customView;
            TextView textView = this.mTextFrame;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.mIconView;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.mIconView.setImageDrawable(null);
            }
            TextView textView2 = (TextView) customView.findViewById(R.id.text1);
            this.mCustomTextView = textView2;
            if (textView2 != null) {
                this.mDefaultMaxLines = j.d(textView2);
            }
            this.mCustomIconView = (ImageView) customView.findViewById(R.id.icon);
        } else {
            View view = this.mCustomView;
            if (view != null) {
                removeView(view);
                this.mCustomView = null;
            }
            this.mCustomTextView = null;
            this.mCustomIconView = null;
        }
        if (this.mCustomView == null) {
            if (this.mIconView == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R$layout.coui_tab_layout_icon, (ViewGroup) this, false);
                addView(imageView2, 0);
                this.mIconView = imageView2;
            }
            if (this.mTextFrame == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R$layout.coui_tab_layout_text, (ViewGroup) this, false);
                this.mTextFrame = textView3;
                addView(textView3);
                TextView textView4 = this.mTextFrame;
                COUITabLayout cOUITabLayout = this.mCOUITabLayout;
                m0.z0(textView4, cOUITabLayout.mTabPaddingStart, cOUITabLayout.mTabPaddingTop, cOUITabLayout.mTabPaddingEnd, cOUITabLayout.mTabPaddingBottom);
                this.mDefaultMaxLines = j.d(this.mTextFrame);
                COUIChangeTextUtil.adaptBoldAndMediumFont(this.mTextFrame, cOUITab != null && cOUITab.isSelected());
            }
            COUIHintRedDot cOUIHintRedDot = this.mHintRedDot;
            if (cOUIHintRedDot != null) {
                cOUIHintRedDotMementoSaveMemento = cOUIHintRedDot.saveMemento();
                removeView(this.mHintRedDot);
            }
            this.mHintRedDot = new COUIHintRedDot(getContext());
            this.mHintRedDot.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            addView(this.mHintRedDot);
            if (cOUIHintRedDotMementoSaveMemento != null) {
                cOUIHintRedDotMementoSaveMemento.applyTo(this.mHintRedDot);
            }
            this.mTextFrame.setTextSize(0, this.mCOUITabLayout.getTabTextSize());
            if (cOUITab == null || !cOUITab.isSelected()) {
                this.mTextFrame.setTypeface(this.mCOUITabLayout.mNormalTypeface);
            } else {
                this.mTextFrame.setTypeface(this.mCOUITabLayout.mSelectedTypeface);
            }
            this.mTextFrame.setIncludeFontPadding(false);
            ColorStateList colorStateList = this.mCOUITabLayout.mTabTextColors;
            if (colorStateList != null) {
                this.mTextFrame.setTextColor(colorStateList);
            }
            updateTextAndIcon(this.mTextFrame, this.mIconView);
        } else {
            if (this.mTextFrame == null) {
                this.mTextFrame = (TextView) LayoutInflater.from(getContext()).inflate(R$layout.coui_tab_layout_text, (ViewGroup) this, false);
            }
            TextView textView5 = this.mCustomTextView;
            if (textView5 != null || this.mCustomIconView != null) {
                updateTextAndIcon(textView5, this.mCustomIconView);
            }
        }
        if (cOUITab != null && cOUITab.isSelected()) {
            z10 = true;
        }
        setSelected(z10);
    }
}
