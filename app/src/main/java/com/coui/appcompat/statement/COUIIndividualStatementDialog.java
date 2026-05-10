package com.coui.appcompat.statement;

import android.content.Context;
import android.content.res.Configuration;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.coui.appcompat.button.COUIButton;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.panel.COUIBottomSheetDialog;
import com.coui.appcompat.panel.COUIPanelMultiWindowUtils;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.support.appcompat.R$attr;
import com.support.panel.R$style;
import com.support.statement.R$dimen;
import com.support.statement.R$id;
import com.support.statement.R$layout;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class COUIIndividualStatementDialog extends COUIBottomSheetDialog {
    public static final Companion Companion = new Companion(null);
    public static final int MEDIUM_LARGE_SCREEN_SW_THRESHOLD = 480;
    public static final float ORIGIN_STATEMENT_TEXT_SIZE = 14.0f;
    public static final float STATEMENT_TEXT_SIZE_WITH_CHECKBOX = 12.0f;
    private TextView appStatement;
    private COUIButton bottomButton;
    private CharSequence bottomButtonText;
    private TextView exitButton;
    private CharSequence exitButtonText;
    private boolean isInSmallLand;
    private boolean isInSmallPortrait;
    private COUIComponentMaxHeightScrollView mScrollViewComponent;
    private OnButtonClickListener onButtonClickListener;
    private LinearLayout scrollViewLayout;
    private LinearLayout smallLandButtonLayout;
    private COUIButton smallLandConfirmButton;
    private COUIButton smallLandExitButton;
    private CharSequence statement;
    private CharSequence titleText;
    private TextView titleView;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public interface OnButtonClickListener {
        void onBottomButtonClick(ArrayList<PrivacyItem> arrayList);

        void onExitButtonClick();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIIndividualStatementDialog(Context context) {
        this(context, 0, 0.0f, 0.0f, 14, null);
        kotlin.jvm.internal.r.e(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addPrivacyList$lambda$16$lambda$15$lambda$14(COUIIndividualStatementDialog this$0, COUICheckBox cOUICheckBox, int i10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.resetBottomButton();
    }

    private final ArrayList<PrivacyItem> getCheckedFunctionList() {
        ArrayList<PrivacyItem> arrayList = new ArrayList<>();
        LinearLayout linearLayout = this.scrollViewLayout;
        if (linearLayout.getChildCount() > 1) {
            int childCount = linearLayout.getChildCount();
            for (int i10 = 1; i10 < childCount; i10++) {
                View childAt = linearLayout.getChildAt(i10);
                kotlin.jvm.internal.r.c(childAt, "null cannot be cast to non-null type com.coui.appcompat.statement.COUICheckBoxItemView");
                COUICheckBoxItemView cOUICheckBoxItemView = (COUICheckBoxItemView) childAt;
                if (cOUICheckBoxItemView.isChecked()) {
                    arrayList.add(cOUICheckBoxItemView.getPrivacyItem());
                }
            }
        }
        return arrayList;
    }

    private final void initView() {
        TextView textView = this.appStatement;
        COUIDarkModeUtil.setForceDarkAllow(textView, false);
        textView.setTextColor(COUIContextUtil.getAttrColor(textView.getContext(), R$attr.couiColorSecondNeutral));
        COUIChangeTextUtil.adaptFontSize(textView, 2);
        textView.setMovementMethod(COUILinkMovementMethod.INSTANCE);
        TextView textView2 = this.exitButton;
        COUIChangeTextUtil.adaptFontSize(textView2, 4);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIIndividualStatementDialog.initView$lambda$3$lambda$2(this.f7366a, view);
            }
        });
        COUITextViewCompatUtil.setPressRippleDrawable(textView2);
        COUIButton cOUIButton = this.bottomButton;
        ViewGroup.LayoutParams layoutParams = cOUIButton.getLayoutParams();
        layoutParams.width = this.isInSmallPortrait ? cOUIButton.getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_statement_button_width) : cOUIButton.getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_statement_large_button_width);
        cOUIButton.setLayoutParams(layoutParams);
        cOUIButton.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIIndividualStatementDialog.initView$lambda$6$lambda$5(this.f7367a, view);
            }
        });
        this.smallLandConfirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIIndividualStatementDialog.initView$lambda$7(this.f7368a, view);
            }
        });
        this.smallLandExitButton.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIIndividualStatementDialog.initView$lambda$8(this.f7369a, view);
            }
        });
        updateBottomButton(this.isInSmallLand);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$3$lambda$2(COUIIndividualStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onExitButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$6$lambda$5(COUIIndividualStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onBottomButtonClick(this$0.getCheckedFunctionList());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$7(COUIIndividualStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onBottomButtonClick(this$0.getCheckedFunctionList());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$8(COUIIndividualStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onExitButtonClick();
        }
    }

    private final boolean isSmallScreen(Configuration configuration) {
        return configuration.smallestScreenWidthDp < 480;
    }

    private final void resetBottomButton() {
        LinearLayout linearLayout = this.scrollViewLayout;
        boolean z10 = false;
        if (linearLayout.getChildCount() > 1) {
            int childCount = linearLayout.getChildCount();
            for (int i10 = 1; i10 < childCount; i10++) {
                View childAt = linearLayout.getChildAt(i10);
                kotlin.jvm.internal.r.c(childAt, "null cannot be cast to non-null type com.coui.appcompat.statement.COUICheckBoxItemView");
                if (((COUICheckBoxItemView) childAt).isChecked()) {
                    z10 = true;
                }
            }
        }
        this.bottomButton.setEnabled(z10);
        this.smallLandConfirmButton.setEnabled(z10);
    }

    private final void updateBottomButton(boolean z10) {
        this.exitButton.setVisibility(z10 ? 8 : 0);
        this.bottomButton.setVisibility(z10 ? 8 : 0);
        this.smallLandButtonLayout.setVisibility(z10 ? 0 : 8);
    }

    private final void updateUI(Configuration configuration) {
        boolean z10 = false;
        boolean z11 = isSmallScreen(configuration) && !COUIPanelMultiWindowUtils.isPortrait(configuration);
        if (this.isInSmallLand != z11) {
            this.isInSmallLand = z11;
            updateBottomButton(z11);
        }
        if (isSmallScreen(configuration) && COUIPanelMultiWindowUtils.isPortrait(configuration)) {
            z10 = true;
        }
        if (this.isInSmallPortrait != z10) {
            this.isInSmallPortrait = z10;
            COUIButton cOUIButton = this.bottomButton;
            ViewGroup.LayoutParams layoutParams = cOUIButton.getLayoutParams();
            layoutParams.width = this.isInSmallPortrait ? cOUIButton.getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_statement_button_width) : cOUIButton.getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_statement_large_button_width);
            cOUIButton.setLayoutParams(layoutParams);
        }
    }

    public final void addPrivacyList(ArrayList<PrivacyItem> arrayList) {
        if (arrayList != null) {
            int i10 = 0;
            for (Object obj : arrayList) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    kotlin.collections.o.q();
                }
                Context context = getContext();
                kotlin.jvm.internal.r.d(context, "context");
                COUICheckBoxItemView cOUICheckBoxItemView = new COUICheckBoxItemView(context, (PrivacyItem) obj);
                cOUICheckBoxItemView.setOnStateChangeListener(new COUICheckBox.OnStateChangeListener() { // from class: com.coui.appcompat.statement.b
                    @Override // com.coui.appcompat.checkbox.COUICheckBox.OnStateChangeListener
                    public final void onStateChanged(COUICheckBox cOUICheckBox, int i12) {
                        COUIIndividualStatementDialog.addPrivacyList$lambda$16$lambda$15$lambda$14(this.f7365a, cOUICheckBox, i12);
                    }
                });
                this.scrollViewLayout.addView(cOUICheckBoxItemView, -1, -2);
                this.bottomButton.setEnabled(false);
                this.smallLandConfirmButton.setEnabled(false);
                if (i10 == arrayList.size() - 1) {
                    cOUICheckBoxItemView.findViewById(R$id.checkbox_line).setVisibility(8);
                }
                i10 = i11;
            }
        }
        COUIComponentMaxHeightScrollView cOUIComponentMaxHeightScrollView = this.mScrollViewComponent;
        cOUIComponentMaxHeightScrollView.setPadding(cOUIComponentMaxHeightScrollView.getPaddingLeft(), (arrayList == null || arrayList.isEmpty()) ? cOUIComponentMaxHeightScrollView.getResources().getDimensionPixelOffset(R$dimen.coui_component_individual_padding_top) : cOUIComponentMaxHeightScrollView.getResources().getDimensionPixelOffset(R$dimen.coui_component_individual_padding_top_with_checkbox), cOUIComponentMaxHeightScrollView.getPaddingRight(), cOUIComponentMaxHeightScrollView.getPaddingBottom());
        TextView textView = this.appStatement;
        textView.setTextSize((arrayList == null || arrayList.isEmpty()) ? 14.0f : 12.0f);
        textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), (arrayList == null || arrayList.isEmpty()) ? textView.getResources().getDimensionPixelOffset(R$dimen.coui_component_individual_padding_bottom) : textView.getResources().getDimensionPixelOffset(R$dimen.coui_component_individual_padding_bottom_with_checkbox));
    }

    public final CharSequence getBottomButtonText() {
        return this.bottomButtonText;
    }

    public final CharSequence getExitButtonText() {
        return this.exitButtonText;
    }

    public final OnButtonClickListener getOnButtonClickListener() {
        return this.onButtonClickListener;
    }

    public final CharSequence getStatement() {
        return this.statement;
    }

    public final CharSequence getTitleText() {
        return this.titleText;
    }

    @Override // com.coui.appcompat.panel.COUIBottomSheetDialog, com.google.android.material.bottomsheet.a, android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Configuration configuration = getContext().getResources().getConfiguration();
        kotlin.jvm.internal.r.d(configuration, "context.resources.configuration");
        updateUI(configuration);
    }

    public final void setBottomButtonText(CharSequence charSequence) {
        this.bottomButtonText = charSequence;
        this.bottomButton.setText(charSequence);
        this.smallLandConfirmButton.setText(charSequence);
    }

    public final void setExitButtonText(CharSequence charSequence) {
        this.exitButtonText = charSequence;
        this.exitButton.setText(charSequence);
        this.smallLandExitButton.setText(charSequence);
    }

    public final void setOnButtonClickListener(OnButtonClickListener onButtonClickListener) {
        this.onButtonClickListener = onButtonClickListener;
    }

    public final void setStatement(CharSequence charSequence) {
        this.statement = charSequence;
        this.appStatement.setText(charSequence);
    }

    public final void setTitleText(CharSequence charSequence) {
        this.titleText = charSequence;
        this.titleView.setText(charSequence);
    }

    @Override // com.coui.appcompat.panel.COUIBottomSheetDialog
    public void updateLayoutWhileConfigChange(Configuration configuration) {
        kotlin.jvm.internal.r.e(configuration, "configuration");
        super.updateLayoutWhileConfigChange(configuration);
        updateUI(configuration);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIIndividualStatementDialog(Context context, int i10) {
        this(context, i10, 0.0f, 0.0f, 12, null);
        kotlin.jvm.internal.r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIIndividualStatementDialog(Context context, int i10, float f10) {
        this(context, i10, f10, 0.0f, 8, null);
        kotlin.jvm.internal.r.e(context, "context");
    }

    public final void setStatement(int i10) {
        setStatement(getContext().getString(i10));
    }

    public final void setTitleText(int i10) {
        setTitleText(getContext().getString(i10));
    }

    public /* synthetic */ COUIIndividualStatementDialog(Context context, int i10, float f10, float f11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? R$style.DefaultBottomSheetDialog : i10, (i11 & 4) != 0 ? Float.MIN_VALUE : f10, (i11 & 8) != 0 ? Float.MIN_VALUE : f11);
    }

    public final void setBottomButtonText(int i10) {
        setBottomButtonText(getContext().getString(i10));
    }

    public final void setExitButtonText(int i10) {
        setExitButtonText(getContext().getString(i10));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUIIndividualStatementDialog(Context context, int i10, float f10, float f11) {
        super(context, i10, f10, f11);
        kotlin.jvm.internal.r.e(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.coui_component_full_page_function_privacy, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R$id.txt_statement);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(R.id.txt_statement)");
        this.appStatement = (TextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R$id.btn_confirm);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(R.id.btn_confirm)");
        this.bottomButton = (COUIButton) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R$id.scroll_text);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(R.id.scroll_text)");
        this.mScrollViewComponent = (COUIComponentMaxHeightScrollView) viewFindViewById3;
        View viewFindViewById4 = viewInflate.findViewById(R$id.layout_scroll_text);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(R.id.layout_scroll_text)");
        this.scrollViewLayout = (LinearLayout) viewFindViewById4;
        View viewFindViewById5 = viewInflate.findViewById(R$id.txt_exit);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(R.id.txt_exit)");
        this.exitButton = (TextView) viewFindViewById5;
        View viewFindViewById6 = viewInflate.findViewById(R$id.txt_title);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(R.id.txt_title)");
        this.titleView = (TextView) viewFindViewById6;
        View viewFindViewById7 = viewInflate.findViewById(R$id.small_land_button_layout);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(R.id.small_land_button_layout)");
        this.smallLandButtonLayout = (LinearLayout) viewFindViewById7;
        View viewFindViewById8 = viewInflate.findViewById(R$id.small_land_btn_confirm);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(R.id.small_land_btn_confirm)");
        this.smallLandConfirmButton = (COUIButton) viewFindViewById8;
        View viewFindViewById9 = viewInflate.findViewById(R$id.small_land_btn_exit);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(R.id.small_land_btn_exit)");
        this.smallLandExitButton = (COUIButton) viewFindViewById9;
        setContentView(viewInflate);
        super.setCanceledOnTouchOutside(false);
        Configuration configuration = context.getResources().getConfiguration();
        kotlin.jvm.internal.r.d(configuration, "context.resources.configuration");
        this.isInSmallLand = isSmallScreen(configuration) && !COUIPanelMultiWindowUtils.isPortrait(context);
        Configuration configuration2 = context.getResources().getConfiguration();
        kotlin.jvm.internal.r.d(configuration2, "context.resources.configuration");
        this.isInSmallPortrait = isSmallScreen(configuration2) && COUIPanelMultiWindowUtils.isPortrait(context);
        getBehavior().setDraggable(false);
        Object parent = getDragableLinearLayout().getDragView().getParent();
        kotlin.jvm.internal.r.c(parent, "null cannot be cast to non-null type android.view.View");
        ((View) parent).setVisibility(8);
        initView();
    }
}
