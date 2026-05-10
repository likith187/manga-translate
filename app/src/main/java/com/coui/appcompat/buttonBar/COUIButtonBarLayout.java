package com.coui.appcompat.buttonBar;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.coui.appcompat.button.COUIButton;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$color;
import com.support.dialog.R$dimen;
import com.support.dialog.R$id;
import com.support.dialog.R$styleable;
import r.a;

/* JADX INFO: loaded from: classes.dex */
public class COUIButtonBarLayout extends LinearLayout {
    private static final int BUTTON_FADE_IN_DURATION = 100;
    private static final int BUTTON_FADE_OUT_DURATION = 360;
    public static final int NO_RECOMMEND_ID = -1;
    private static final int ONE = 1;
    private static final String TAG = "COUIButtonBarLayout";
    private static final int THREE = 3;
    private static final int TWO = 2;
    private static final int ZERO = 0;
    private View mButDivider1;
    private View mButDivider2;
    private int mButDividerSizeHorizontalButton;
    private int mButDividerSizeVerticalButton;
    private View mContentPanel;
    private Context mContext;
    private int mCouiBottomAlertDialogButtonbarMargintop;
    private View mCustomPanel;
    private int mDialogMaxWidth;
    private int mDividerMarginHorizontalDefault;
    private boolean mDynamicLayout;
    private int mHorButDividerVerMarginBottom;
    private int mHorButDividerVerMarginTop;
    private int mHorButHorPadding;
    private int mHorButHorPaddingWithRecommend;
    private int mHorButPaddingBottom;
    private int mHorButPaddingTop;
    private int mHorButPanelMinHeight;
    private int mHorButVerPaddingWithRecommend;
    private int mHorizontalButtonPaddingBottom;
    private int mHorizontalButtonPaddingTop;
    private boolean mIsVerticalButton;
    private COUIButton mNegButton;
    private COUIButton mNeuButton;
    private int mNonRecommendButtonMarginVertical;
    private View mParentView;
    private COUIButton mPosButton;
    private int mRecomentButtonPaddingVertical;
    private int mRecomentButtonPaddingVerticalMultiline;
    private int mRecommendButtonHeight;
    private int mRecommendButtonId;
    private int mRecommendButtonMarginHorizontal;
    private boolean mSetTopMarginFlag;
    private boolean mShowDivider;
    private boolean mShowDividerWhenHasItems;
    private View mTopPanel;
    private int mVerButDividerHorMargin;
    private int mVerButMinHeightBottom;
    private int mVerButMinHeightNormal;
    private int mVerButtonVecPaddingNew;
    private int mVerCenterButVerPaddingBottomExtra;
    private int mVerPaddingBottom;
    private int mVerPaddingBottomExtraNew;
    private int mVerPaddingTopExtraNew;

    public COUIButtonBarLayout(Context context) {
        super(context, null);
        this.mShowDivider = true;
        this.mDynamicLayout = true;
        this.mRecommendButtonId = -1;
        this.mSetTopMarginFlag = true;
        this.mShowDividerWhenHasItems = false;
    }

    private void applyRecommendLayout(COUIButton cOUIButton) {
        ViewGroup.LayoutParams layoutParams = cOUIButton.getLayoutParams();
        layoutParams.height = -1;
        cOUIButton.setMaxLines(2);
        cOUIButton.setEllipsize(TextUtils.TruncateAt.END);
        String string = cOUIButton.getText().toString();
        int measuredWidth = (cOUIButton.getMeasuredWidth() - cOUIButton.getPaddingLeft()) - cOUIButton.getPaddingRight();
        float fMeasureText = cOUIButton.getPaint().measureText(string);
        int i10 = this.mRecomentButtonPaddingVertical;
        if (fMeasureText > measuredWidth) {
            i10 = this.mRecomentButtonPaddingVerticalMultiline;
        }
        int i11 = this.mHorButHorPaddingWithRecommend;
        cOUIButton.setPadding(i11, i10, i11, i10);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (this.mIsVerticalButton) {
                int i12 = this.mNonRecommendButtonMarginVertical;
                COUIButton cOUIButton2 = this.mNegButton;
                int i13 = (cOUIButton == cOUIButton2 || (cOUIButton == this.mPosButton && !hasContent(cOUIButton2)) || !(cOUIButton != this.mNeuButton || hasContent(this.mPosButton) || hasContent(this.mNegButton))) ? this.mVerPaddingBottomExtraNew + i12 : i12;
                cOUIButton.setMinimumHeight(this.mRecommendButtonHeight);
                int i14 = this.mRecommendButtonMarginHorizontal;
                marginLayoutParams.setMargins(i14, i12, i14, i13);
            }
        }
        cOUIButton.setLayoutParams(layoutParams);
    }

    private void applyRecommendStyle(COUIButton cOUIButton) {
        if (hasContent(cOUIButton)) {
            if (cOUIButton.getId() == this.mRecommendButtonId) {
                if (cOUIButton.getDrawableColor() == getResources().getColor(R$color.coui_transparence)) {
                    cOUIButton.setDrawableColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorContainerTheme, 0));
                }
                cOUIButton.setTextColor(a.d(this.mContext, R$color.coui_btn_default_text_color));
                cOUIButton.setAnimType(1);
                cOUIButton.setScaleEnable(true);
                cOUIButton.setAnimEnable(true);
                cOUIButton.setDisabledColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorDisable));
            } else {
                cOUIButton.setAnimType(0);
            }
            cOUIButton.setDrawableRadius(-1);
        }
    }

    private int getBtnTextMeasureLength(Button button) {
        if (button == null || button.getVisibility() != 0) {
            return 0;
        }
        return (int) (button.isAllCaps() ? button.getPaint().measureText(button.getText().toString().toUpperCase()) : button.getPaint().measureText(button.getText().toString()));
    }

    private boolean hasContent(View view) {
        return view != null && view.getVisibility() == 0;
    }

    private void hideAllDivider() {
        this.mButDivider1.setVisibility(8);
        this.mButDivider2.setVisibility(8);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.mContext = context;
        this.mHorButHorPadding = context.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_button_horizontal_padding);
        this.mHorButHorPaddingWithRecommend = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_button_horizontal_padding_with_recommend);
        this.mHorButVerPaddingWithRecommend = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_button_vertical_padding_with_recommend);
        this.mHorButPaddingTop = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_button_padding_top);
        this.mHorButPaddingBottom = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_button_padding_bottom);
        this.mVerButMinHeightNormal = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_vertical_button_min_height);
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_center_alert_dialog_vertical_button_paddingbottom_vertical_extra);
        this.mVerCenterButVerPaddingBottomExtra = dimensionPixelSize;
        this.mVerButMinHeightBottom = this.mVerButMinHeightNormal + dimensionPixelSize;
        this.mVerButDividerHorMargin = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_horizontal_button_margin_recommend);
        this.mHorButDividerVerMarginTop = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_horizontal_button_padding_top_extra_divider_new);
        this.mHorButDividerVerMarginBottom = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_horizontal_button_padding_bottom_extra_divider_new);
        this.mHorButPanelMinHeight = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_button_height);
        this.mDialogMaxWidth = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_dialog_max_width);
        this.mButDividerSizeHorizontalButton = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_delete_alert_dialog_divider_height_horizontalbutton);
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R$styleable.COUIButtonBarLayout);
        this.mShowDivider = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIButtonBarLayout_buttonBarShowDivider, true);
        this.mButDividerSizeVerticalButton = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUIButtonBarLayout_buttonBarDividerSize, this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_delete_alert_dialog_divider_height_verticalbutton));
        this.mVerPaddingTopExtraNew = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_vertical_button_padding_top_extra_new);
        this.mVerPaddingBottomExtraNew = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new);
        this.mVerButtonVecPaddingNew = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_vertical_button_padding_vertical_new);
        this.mHorizontalButtonPaddingTop = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_horizontal_button_padding_top_extra_new);
        this.mHorizontalButtonPaddingBottom = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_horizontal_button_padding_bottom_extra_new);
        this.mDividerMarginHorizontalDefault = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_horizontal_button_margin_default);
        this.mRecommendButtonMarginHorizontal = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_horizontal_button_margin_recommend);
        this.mRecomentButtonPaddingVertical = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_recommend_button_padding_vertical);
        this.mRecomentButtonPaddingVerticalMultiline = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_recommend_button_padding_vertical_multi_line);
        this.mNonRecommendButtonMarginVertical = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_vertical_button_margin_nonrecommend);
        this.mCouiBottomAlertDialogButtonbarMargintop = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_buttonbar_margintop);
        this.mRecommendButtonHeight = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_button_recommend_height);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initChildView() {
        if (this.mPosButton == null || this.mNegButton == null || this.mNeuButton == null || this.mButDivider1 == null || this.mButDivider2 == null) {
            this.mPosButton = (COUIButton) findViewById(R.id.button1);
            this.mNegButton = (COUIButton) findViewById(R.id.button2);
            this.mNeuButton = (COUIButton) findViewById(R.id.button3);
            this.mButDivider1 = findViewById(R$id.coui_dialog_button_divider_1);
            this.mButDivider2 = findViewById(R$id.coui_dialog_button_divider_2);
        }
    }

    private void initParentView() {
        if (this.mParentView == null || this.mTopPanel == null || this.mContentPanel == null || this.mCustomPanel == null) {
            View view = (View) getParent().getParent();
            this.mParentView = view;
            this.mTopPanel = view.findViewById(R$id.topPanel);
            this.mContentPanel = this.mParentView.findViewById(R$id.contentPanel);
            this.mCustomPanel = this.mParentView.findViewById(R$id.customPanel);
        }
    }

    private boolean isRecommendButton(Button button) {
        return button.getId() == this.mRecommendButtonId;
    }

    private boolean isVertical() {
        return getOrientation() == 1;
    }

    private boolean needSetButVertical(int i10) {
        int buttonCount = getButtonCount();
        if (buttonCount == 0) {
            return false;
        }
        int i11 = ((i10 - ((buttonCount - 1) * this.mButDividerSizeVerticalButton)) / buttonCount) - (this.mHorButHorPadding * 2);
        return getBtnTextMeasureLength(this.mPosButton) > i11 || getBtnTextMeasureLength(this.mNegButton) > i11 || getBtnTextMeasureLength(this.mNeuButton) > i11;
    }

    private void resetHorButsPadding() {
        setPaddingTop(this.mNegButton, this.mHorizontalButtonPaddingTop);
        setPaddingBottom(this.mNegButton, this.mHorizontalButtonPaddingBottom);
        setPaddingTop(this.mPosButton, this.mHorizontalButtonPaddingTop);
        setPaddingBottom(this.mPosButton, this.mHorizontalButtonPaddingBottom);
        setPaddingTop(this.mNeuButton, this.mHorizontalButtonPaddingTop);
        setPaddingBottom(this.mNeuButton, this.mHorizontalButtonPaddingBottom);
    }

    private void resetHorDividerVisibility() {
        if (getButtonCount() != 2) {
            if (getButtonCount() == 3) {
                showDivider(this.mButDivider1, this.mButDivider2);
                return;
            } else {
                hideAllDivider();
                return;
            }
        }
        if (!hasContent(this.mNegButton)) {
            showDivider(this.mButDivider2);
        } else if (hasContent(this.mNeuButton) || hasContent(this.mPosButton)) {
            showDivider(this.mButDivider1);
        } else {
            hideAllDivider();
        }
    }

    private void resetVerButsPadding() {
        int i10;
        int i11;
        if (hasContent(this.mNegButton)) {
            if (getButtonCount() > 1) {
                i10 = this.mVerButtonVecPaddingNew;
                if (!hasContent(this.mPosButton) && !hasContent(this.mNeuButton) && !hasContent(this.mTopPanel) && !hasContent(this.mContentPanel) && !hasContent(this.mCustomPanel)) {
                    i10 += this.mVerPaddingTopExtraNew;
                }
                i11 = this.mVerButtonVecPaddingNew + this.mVerPaddingBottomExtraNew;
            } else {
                i10 = this.mHorizontalButtonPaddingTop;
                i11 = this.mHorizontalButtonPaddingBottom;
                this.mNegButton.setMinimumHeight(this.mHorButPanelMinHeight);
            }
            COUIButton cOUIButton = this.mNegButton;
            cOUIButton.setPaddingRelative(cOUIButton.getPaddingStart(), i10, this.mNegButton.getPaddingEnd(), i11);
        }
        if (hasContent(this.mPosButton)) {
            int i12 = this.mVerButtonVecPaddingNew;
            int i13 = (hasContent(this.mNeuButton) || hasContent(this.mTopPanel) || hasContent(this.mContentPanel) || hasContent(this.mCustomPanel)) ? i12 : this.mVerPaddingTopExtraNew + i12;
            if (!hasContent(this.mNegButton)) {
                i12 += this.mVerPaddingBottomExtraNew;
            }
            COUIButton cOUIButton2 = this.mPosButton;
            cOUIButton2.setPaddingRelative(cOUIButton2.getPaddingStart(), i13, this.mPosButton.getPaddingEnd(), i12);
        }
        if (hasContent(this.mNeuButton)) {
            int i14 = this.mVerButtonVecPaddingNew;
            int i15 = (hasContent(this.mTopPanel) || hasContent(this.mContentPanel) || hasContent(this.mCustomPanel)) ? i14 : this.mVerPaddingTopExtraNew + i14;
            if (!hasContent(this.mNegButton) && !hasContent(this.mPosButton)) {
                i14 += this.mVerPaddingBottomExtraNew;
            }
            COUIButton cOUIButton3 = this.mNeuButton;
            cOUIButton3.setPaddingRelative(cOUIButton3.getPaddingStart(), i15, this.mNeuButton.getPaddingEnd(), i14);
        }
    }

    private void resetVerDividerVisibility() {
        if (this.mRecommendButtonId != -1) {
            hideAllDivider();
            return;
        }
        if (getButtonCount() == 0) {
            hideAllDivider();
            return;
        }
        if (!hasContent(this.mNegButton)) {
            if (hasContent(this.mNeuButton) && hasContent(this.mPosButton)) {
                showDivider(this.mButDivider1);
                return;
            } else {
                hideAllDivider();
                return;
            }
        }
        if (hasContent(this.mNeuButton) && hasContent(this.mPosButton)) {
            showDivider(this.mButDivider1, this.mButDivider2);
            return;
        }
        if (hasContent(this.mNeuButton)) {
            showDivider(this.mButDivider1);
            return;
        }
        if (hasContent(this.mPosButton)) {
            showDivider(this.mButDivider2);
        } else if (this.mShowDividerWhenHasItems) {
            showDivider(this.mButDivider2);
        } else {
            hideAllDivider();
        }
    }

    private void resetVerPaddingBottom() {
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), this.mVerPaddingBottom);
    }

    private void resortButton() {
        if (hasContent(this.mPosButton) || hasContent(this.mNegButton) || hasContent(this.mNeuButton)) {
            if (getOrientation() == 1) {
                bringChildToFront((View) this.mNeuButton.getParent());
                bringChildToFront(this.mButDivider1);
                bringChildToFront((View) this.mPosButton.getParent());
                bringChildToFront(this.mButDivider2);
                bringChildToFront((View) this.mNegButton.getParent());
                return;
            }
            bringChildToFront((View) this.mNegButton.getParent());
            bringChildToFront(this.mButDivider1);
            bringChildToFront((View) this.mNeuButton.getParent());
            bringChildToFront(this.mButDivider2);
            bringChildToFront((View) this.mPosButton.getParent());
        }
    }

    private void setButHorizontal(COUIButton cOUIButton) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) ((LinearLayout) cOUIButton.getParent()).getLayoutParams();
        layoutParams.weight = 1.0f;
        layoutParams.width = 0;
        if (this.mRecommendButtonId != -1) {
            layoutParams.height = -2;
        } else {
            layoutParams.height = -1;
        }
        layoutParams.gravity = 16;
        ((LinearLayout) cOUIButton.getParent()).setLayoutParams(layoutParams);
        int i10 = this.mHorButHorPadding;
        int i11 = this.mHorButPaddingTop;
        int i12 = this.mHorButPaddingBottom;
        if (this.mRecommendButtonId != -1) {
            i10 = this.mHorButHorPaddingWithRecommend;
            i11 = this.mHorButVerPaddingWithRecommend;
            i12 = i11;
        }
        cOUIButton.setMinimumHeight(this.mHorButPanelMinHeight);
        cOUIButton.setPaddingRelative(i10, i11, i10, i12);
    }

    private void setButtonsHorizontal() {
        setOrientation(0);
        setGravity(16);
        setHorButDivider1();
        setButHorizontal(this.mNeuButton);
        setHorButDivider2();
        setButHorizontal(this.mPosButton);
        setButHorizontal(this.mNegButton);
    }

    private void setButtonsVertical() {
        setOrientation(1);
        setMinimumHeight(0);
        setNeuButVertical();
        setVerButDivider1();
        setPosButVertical();
        setVerButDivider2();
        setNegButVertical();
    }

    private void setHorButDivider1() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mButDivider1.getLayoutParams();
        layoutParams.width = this.mButDividerSizeHorizontalButton;
        layoutParams.height = -1;
        layoutParams.setMarginStart(0);
        layoutParams.setMarginEnd(0);
        layoutParams.topMargin = this.mHorButDividerVerMarginTop;
        layoutParams.bottomMargin = this.mHorButDividerVerMarginBottom;
        this.mButDivider1.setLayoutParams(layoutParams);
    }

    private void setHorButDivider2() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mButDivider2.getLayoutParams();
        layoutParams.width = this.mButDividerSizeHorizontalButton;
        layoutParams.height = -1;
        layoutParams.setMarginStart(0);
        layoutParams.setMarginEnd(0);
        layoutParams.topMargin = this.mHorButDividerVerMarginTop;
        layoutParams.bottomMargin = this.mHorButDividerVerMarginBottom;
        this.mButDivider2.setLayoutParams(layoutParams);
    }

    private void setNegButVertical() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) ((View) this.mNegButton.getParent()).getLayoutParams();
        layoutParams.weight = 1.0f;
        layoutParams.width = -1;
        layoutParams.height = -2;
        this.mNegButton.setMinimumHeight(this.mVerButMinHeightBottom);
        ((View) this.mNegButton.getParent()).setLayoutParams(layoutParams);
    }

    private void setNeuButVertical() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) ((View) this.mNeuButton.getParent()).getLayoutParams();
        layoutParams.weight = 1.0f;
        layoutParams.width = -1;
        layoutParams.height = -2;
        if (hasContent(this.mNegButton) || hasContent(this.mPosButton)) {
            this.mNeuButton.setMinimumHeight(this.mVerButMinHeightNormal);
        } else {
            this.mNeuButton.setMinimumHeight(this.mVerButMinHeightBottom);
        }
        ((View) this.mNeuButton.getParent()).setLayoutParams(layoutParams);
    }

    private void setPaddingBottom(View view, int i10) {
        view.setPaddingRelative(view.getPaddingStart(), view.getPaddingTop(), view.getPaddingEnd(), i10);
    }

    private void setPaddingTop(View view, int i10) {
        view.setPaddingRelative(view.getPaddingStart(), i10, view.getPaddingEnd(), view.getPaddingBottom());
    }

    private void setPosButVertical() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) ((View) this.mPosButton.getParent()).getLayoutParams();
        layoutParams.weight = 1.0f;
        layoutParams.width = -1;
        layoutParams.height = -2;
        if (hasContent(this.mNegButton)) {
            this.mPosButton.setMinimumHeight(this.mVerButMinHeightNormal);
        } else {
            this.mPosButton.setMinimumHeight(this.mVerButMinHeightBottom);
        }
        ((View) this.mPosButton.getParent()).setLayoutParams(layoutParams);
    }

    private void setVerButDivider1() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mButDivider1.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = this.mButDividerSizeVerticalButton;
        if (this.mRecommendButtonId != -1) {
            layoutParams.setMarginStart(this.mVerButDividerHorMargin);
            layoutParams.setMarginEnd(this.mVerButDividerHorMargin);
        } else {
            layoutParams.setMarginStart(this.mDividerMarginHorizontalDefault);
            layoutParams.setMarginEnd(this.mDividerMarginHorizontalDefault);
        }
        layoutParams.topMargin = 0;
        layoutParams.bottomMargin = 0;
        this.mButDivider1.setLayoutParams(layoutParams);
    }

    private void setVerButDivider2() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mButDivider2.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = this.mButDividerSizeVerticalButton;
        if (this.mRecommendButtonId != -1) {
            layoutParams.setMarginStart(this.mVerButDividerHorMargin);
            layoutParams.setMarginEnd(this.mVerButDividerHorMargin);
        } else {
            layoutParams.setMarginStart(this.mDividerMarginHorizontalDefault);
            layoutParams.setMarginEnd(this.mDividerMarginHorizontalDefault);
        }
        layoutParams.topMargin = 0;
        layoutParams.bottomMargin = 0;
        this.mButDivider2.setLayoutParams(layoutParams);
    }

    private void showButton() {
        showButtonParent(this.mPosButton);
        showButtonParent(this.mNeuButton);
        showButtonParent(this.mNegButton);
        if (this.mRecommendButtonId != -1) {
            applyRecommendStyle(this.mPosButton);
            applyRecommendStyle(this.mNegButton);
            applyRecommendStyle(this.mNeuButton);
        }
    }

    private void showButtonParent(COUIButton cOUIButton) {
        if (hasContent(cOUIButton)) {
            ((ViewGroup) cOUIButton.getParent()).setVisibility(0);
        }
    }

    private void showDivider(View... viewArr) {
        hideAllDivider();
        if (!this.mShowDivider || viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            view.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    public int getButtonCount() {
        ?? HasContent = hasContent(this.mPosButton);
        int i10 = HasContent;
        if (hasContent(this.mNegButton)) {
            i10 = HasContent + 1;
        }
        return hasContent(this.mNeuButton) ? i10 + 1 : i10;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        initParentView();
        showButton();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initChildView();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        boolean z10 = this.mDynamicLayout && !(!needSetButVertical(Math.min(this.mDialogMaxWidth, getMeasuredWidth())) && getButtonCount() == 2 && this.mRecommendButtonId == -1);
        this.mIsVerticalButton = z10;
        if (!z10) {
            setButtonsHorizontal();
            resetHorButsPadding();
            resetHorDividerVisibility();
            super.onMeasure(i10, i11);
            return;
        }
        setButtonsVertical();
        resetVerButsPadding();
        resetVerDividerVisibility();
        resetVerPaddingBottom();
        if (this.mSetTopMarginFlag && (getButtonCount() > 1 || (getButtonCount() == 1 && this.mRecommendButtonId != -1))) {
            ((ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = this.mCouiBottomAlertDialogButtonbarMargintop;
        }
        if (this.mRecommendButtonId != -1) {
            applyRecommendLayout(this.mPosButton);
            applyRecommendLayout(this.mNegButton);
            applyRecommendLayout(this.mNeuButton);
        }
        super.onMeasure(i10, i11);
    }

    public void setDynamicLayout(boolean z10) {
        this.mDynamicLayout = z10;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (getOrientation() != i10) {
            super.setOrientation(i10);
            resortButton();
        }
    }

    public void setRecommendButtonId(int i10) {
        this.mRecommendButtonId = i10;
    }

    public void setShowDividerWhenHasItems(boolean z10) {
        this.mShowDividerWhenHasItems = z10;
    }

    public void setTopMarginFlag(boolean z10) {
        this.mSetTopMarginFlag = z10;
    }

    @Deprecated
    public void setVerButDividerVerMargin(int i10) {
    }

    @Deprecated
    public void setVerButPaddingOffset(int i10) {
    }

    @Deprecated
    public void setVerButVerPadding(int i10) {
    }

    @Deprecated
    public void setVerNegButVerPaddingOffset(int i10) {
    }

    public void setVerPaddingBottom(int i10) {
        this.mVerPaddingBottom = i10;
    }

    public COUIButtonBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIButtonBarLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mShowDivider = true;
        this.mDynamicLayout = true;
        this.mRecommendButtonId = -1;
        this.mSetTopMarginFlag = true;
        this.mShowDividerWhenHasItems = false;
        init(context, attributeSet);
    }
}
