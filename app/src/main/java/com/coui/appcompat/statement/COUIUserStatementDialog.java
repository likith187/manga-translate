package com.coui.appcompat.statement;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coui.appcompat.button.COUIButton;
import com.coui.appcompat.button.COUIButtonLayout;
import com.coui.appcompat.button.SimpleButtonGroupCtrl;
import com.coui.appcompat.button.SingleButtonWrap;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.dialog.widget.COUIMaxHeightNestedScrollView;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.panel.COUIBottomSheetDialog;
import com.coui.appcompat.panel.COUIPanelBarView;
import com.coui.appcompat.panel.COUIPanelMultiWindowUtils;
import com.coui.appcompat.statement.COUIStatementPanelStateChangeListener;
import com.coui.appcompat.statement.COUIUserStatementDialog;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.support.appcompat.R$attr;
import com.support.panel.R$style;
import com.support.statement.R$dimen;
import com.support.statement.R$id;
import com.support.statement.R$layout;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class COUIUserStatementDialog extends COUIBottomSheetDialog {
    public static final float BUTTON_EXTSIZE = 16.0f;
    public static final Companion Companion = new Companion(null);
    public static final float SCROLL_TEXTSIZE = 14.0f;
    public static final float TITLE_TEXTSIZE = 18.0f;
    private CharSequence appMessage;
    private CharSequence appName;
    private CharSequence bottomButtonText;
    private COUIStatementPanelStateChangeListener changeEnumUIListener;
    private final int contentPaddingEnd;
    private final int customLayoutMinHeight;
    private final int customPaddingTop;
    private View customView;
    private View customViewTiny;
    private CharSequence exitButtonText;
    private final int expandPanelMarginTop;
    private final int expandScrollPadding;
    private boolean isFullPage;
    private OnItemClickListener itemClickListener;
    private View.OnLayoutChangeListener layoutChangeListenerFromNormal;
    private View.OnLayoutChangeListener layoutChangeListenerFromSmallLand;
    private List<COUIUserStatementListItem> listItems;
    private List<ListItemViewHolder> listViewHolderArray;
    private Drawable logoDrawable;
    private COUIStatementPanelStateChangeListener.PanelStatusTypeEnum mEnumPanelStatusType;
    private final int messagePaddingTop;
    private View miniContentView;
    private MINIContentViewHolder miniContentViewHolder;
    private View normalContentView;
    private NormalContentViewHolder normalContentViewHolder;
    private int oldScreenHeightDp;
    private int oldScreenWidthDp;
    private OnButtonClickListener onButtonClickListener;
    private final int panelEndPadding;
    private final int panelPaddingTopMin;
    private final int panelStartPadding;
    private CharSequence protocolText;
    private final int scrollTextMaxHeight;
    private final int scrollTextMaxHeightNormal;
    private View smallLandContentView;
    private SmallLandContentViewHolder smallLandContentViewHolder;
    private CharSequence statement;
    private final int subTitlePaddingTop;
    private View tinyContentView;
    private TinyContentViewHolder tinyContentViewHolder;
    private CharSequence titleText;

    public static final class COUIUserStatementListItem {
        private Drawable icon;
        private String message;
        private String title;

        public COUIUserStatementListItem(Drawable drawable, String str, String str2) {
            this.icon = drawable;
            this.title = str;
            this.message = str2;
        }

        public static /* synthetic */ COUIUserStatementListItem copy$default(COUIUserStatementListItem cOUIUserStatementListItem, Drawable drawable, String str, String str2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                drawable = cOUIUserStatementListItem.icon;
            }
            if ((i10 & 2) != 0) {
                str = cOUIUserStatementListItem.title;
            }
            if ((i10 & 4) != 0) {
                str2 = cOUIUserStatementListItem.message;
            }
            return cOUIUserStatementListItem.copy(drawable, str, str2);
        }

        public final Drawable component1() {
            return this.icon;
        }

        public final String component2() {
            return this.title;
        }

        public final String component3() {
            return this.message;
        }

        public final COUIUserStatementListItem copy(Drawable drawable, String str, String str2) {
            return new COUIUserStatementListItem(drawable, str, str2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof COUIUserStatementListItem)) {
                return false;
            }
            COUIUserStatementListItem cOUIUserStatementListItem = (COUIUserStatementListItem) obj;
            return kotlin.jvm.internal.r.a(this.icon, cOUIUserStatementListItem.icon) && kotlin.jvm.internal.r.a(this.title, cOUIUserStatementListItem.title) && kotlin.jvm.internal.r.a(this.message, cOUIUserStatementListItem.message);
        }

        public final Drawable getIcon() {
            return this.icon;
        }

        public final String getMessage() {
            return this.message;
        }

        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            Drawable drawable = this.icon;
            int iHashCode = (drawable == null ? 0 : drawable.hashCode()) * 31;
            String str = this.title;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.message;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public final void setIcon(Drawable drawable) {
            this.icon = drawable;
        }

        public final void setMessage(String str) {
            this.message = str;
        }

        public final void setTitle(String str) {
            this.title = str;
        }

        public String toString() {
            return "COUIUserStatementListItem(icon=" + this.icon + ", title=" + this.title + ", message=" + this.message + ')';
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public static class ContentViewHolder {
        private final int BTN_MAX_LINE;
        private SingleButtonWrap bottomButtonWrap;
        private COUIButton btnConfirm;
        private TextView exitButton;
        private ImageView ivLogo;
        private View llContentStatementContentChild;
        private LinearLayout llListLayout;
        private LinearLayout llStatementContentLayout;
        private RelativeLayout rlCustomLayout;
        private RelativeLayout rlCustomParentLayout;
        private COUIComponentMaxHeightScrollView scrollCustomLayout;
        private COUIComponentMaxHeightScrollView scrollText;
        private COUIComponentMaxHeightScrollView scrollTextStatementProtocol;
        private SimpleButtonGroupCtrl simpleButtonGroupCtrl;
        private COUIMaxHeightNestedScrollView slStatementContentLayout;
        private COUIButtonLayout smallLandButtonLayout;
        private COUIButton smallLandConfirmButton;
        private COUIButton smallLandExitButton;
        private TextView tvLogoMessage;
        private TextView tvLogoName;
        private TextView tvLogoSubTitle;
        private TextView tvStatementProtocol;
        private TextView txtStatement;

        public ContentViewHolder(View view, Context context) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(context, "context");
            this.BTN_MAX_LINE = 2;
            this.llStatementContentLayout = (LinearLayout) view.findViewById(R$id.ll_statement_content_layout);
            this.slStatementContentLayout = (COUIMaxHeightNestedScrollView) view.findViewById(R$id.sl_statement_content_layout);
            View viewInflate = LayoutInflater.from(context).inflate(R$layout.coui_component_statement_content_item, (ViewGroup) null);
            kotlin.jvm.internal.r.d(viewInflate, "from(context)\n          …ement_content_item, null)");
            this.llContentStatementContentChild = viewInflate;
            LinearLayout linearLayout = this.llStatementContentLayout;
            if (linearLayout != null) {
                linearLayout.addView(viewInflate);
            }
            if (viewInflate.getLayoutParams() != null) {
                ViewGroup.LayoutParams layoutParams = viewInflate.getLayoutParams();
                kotlin.jvm.internal.r.d(layoutParams, "layoutParams");
                layoutParams.width = -1;
                layoutParams.height = -1;
                viewInflate.setLayoutParams(layoutParams);
            }
            this.btnConfirm = (COUIButton) view.findViewById(R$id.btn_confirm);
            TextView textView = (TextView) view.findViewById(R$id.txt_exit);
            this.exitButton = textView;
            if (textView != null) {
                textView.setTextSize(2, 16.0f);
                COUIChangeTextUtil.adaptFontSize(textView, 4);
            }
            View viewFindViewById = view.findViewById(R$id.small_land_button_layout);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(R.id.small_land_button_layout)");
            COUIButtonLayout cOUIButtonLayout = (COUIButtonLayout) viewFindViewById;
            this.smallLandButtonLayout = cOUIButtonLayout;
            cOUIButtonLayout.setLimitHeight(true);
            this.smallLandButtonLayout.setForceSmallScreenWidth(true);
            View viewFindViewById2 = view.findViewById(R$id.small_land_btn_confirm);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(R.id.small_land_btn_confirm)");
            this.smallLandConfirmButton = (COUIButton) viewFindViewById2;
            View viewFindViewById3 = view.findViewById(R$id.small_land_btn_exit);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(R.id.small_land_btn_exit)");
            this.smallLandExitButton = (COUIButton) viewFindViewById3;
            View viewFindViewById4 = view.findViewById(R$id.iv_logo);
            kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(R.id.iv_logo)");
            this.ivLogo = (ImageView) viewFindViewById4;
            View viewFindViewById5 = view.findViewById(R$id.tv_logo_sub_title);
            kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(R.id.tv_logo_sub_title)");
            this.tvLogoSubTitle = (TextView) viewFindViewById5;
            View viewFindViewById6 = view.findViewById(R$id.tv_logo_name);
            kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(R.id.tv_logo_name)");
            this.tvLogoName = (TextView) viewFindViewById6;
            this.scrollCustomLayout = (COUIComponentMaxHeightScrollView) view.findViewById(R$id.scroll_custom_layout);
            View viewFindViewById7 = view.findViewById(R$id.rl_custom_layout);
            kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(R.id.rl_custom_layout)");
            this.rlCustomLayout = (RelativeLayout) viewFindViewById7;
            View viewFindViewById8 = view.findViewById(R$id.tv_logo_message);
            kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(R.id.tv_logo_message)");
            this.tvLogoMessage = (TextView) viewFindViewById8;
            View viewFindViewById9 = view.findViewById(R$id.ll_list_layout);
            kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(R.id.ll_list_layout)");
            this.llListLayout = (LinearLayout) viewFindViewById9;
            View viewFindViewById10 = view.findViewById(R$id.scroll_text);
            kotlin.jvm.internal.r.d(viewFindViewById10, "findViewById(R.id.scroll_text)");
            this.scrollText = (COUIComponentMaxHeightScrollView) viewFindViewById10;
            View viewFindViewById11 = view.findViewById(R$id.txt_statement);
            kotlin.jvm.internal.r.d(viewFindViewById11, "findViewById(R.id.txt_statement)");
            this.txtStatement = (TextView) viewFindViewById11;
            View viewFindViewById12 = view.findViewById(R$id.scroll_text_statement_protocol);
            kotlin.jvm.internal.r.d(viewFindViewById12, "findViewById(R.id.scroll_text_statement_protocol)");
            this.scrollTextStatementProtocol = (COUIComponentMaxHeightScrollView) viewFindViewById12;
            View viewFindViewById13 = view.findViewById(R$id.statement_protocol);
            kotlin.jvm.internal.r.d(viewFindViewById13, "findViewById(R.id.statement_protocol)");
            this.tvStatementProtocol = (TextView) viewFindViewById13;
            View viewFindViewById14 = view.findViewById(R$id.rl_custom_parent_layout);
            kotlin.jvm.internal.r.d(viewFindViewById14, "findViewById(R.id.rl_custom_parent_layout)");
            this.rlCustomParentLayout = (RelativeLayout) viewFindViewById14;
        }

        public final void bindBottomButtonWarp() {
            COUIButton cOUIButton = this.btnConfirm;
            this.bottomButtonWrap = cOUIButton != null ? new SingleButtonWrap(cOUIButton, 0) : null;
        }

        public final void bindCustomView(View view) {
            if (this.rlCustomLayout.getChildCount() != 0) {
                this.rlCustomLayout.removeAllViews();
            }
            if (view != null) {
                if (view.getParent() != null) {
                    ViewParent parent = view.getParent();
                    kotlin.jvm.internal.r.c(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) parent).removeAllViews();
                }
                this.rlCustomLayout.addView(view);
            }
        }

        public final void bindList(List<ListItemViewHolder> list) {
            LinearLayout linearLayout = this.llListLayout;
            if (linearLayout.getChildCount() != 0) {
                linearLayout.removeAllViews();
            }
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ListItemViewHolder listItemViewHolder = list.get(i10);
                    if (listItemViewHolder.getMItemView().getParent() != null) {
                        ViewParent parent = listItemViewHolder.getMItemView().getParent();
                        kotlin.jvm.internal.r.c(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                        ((ViewGroup) parent).removeAllViews();
                    }
                    this.llListLayout.addView(listItemViewHolder.getMItemView());
                }
            }
        }

        public void bindSimpleButtonGroupCtrl() {
            SimpleButtonGroupCtrl simpleButtonGroupCtrl = new SimpleButtonGroupCtrl();
            simpleButtonGroupCtrl.registerButton(this.smallLandExitButton, 3);
            simpleButtonGroupCtrl.registerButton(this.smallLandConfirmButton, 3);
            this.simpleButtonGroupCtrl = simpleButtonGroupCtrl;
        }

        public final int getBTN_MAX_LINE() {
            return this.BTN_MAX_LINE;
        }

        public final SingleButtonWrap getBottomButtonWrap() {
            return this.bottomButtonWrap;
        }

        public final COUIButton getBtnConfirm() {
            return this.btnConfirm;
        }

        public final TextView getExitButton() {
            return this.exitButton;
        }

        public final ImageView getIvLogo() {
            return this.ivLogo;
        }

        public final View getLlContentStatementContentChild() {
            return this.llContentStatementContentChild;
        }

        public final LinearLayout getLlListLayout() {
            return this.llListLayout;
        }

        public final LinearLayout getLlStatementContentLayout() {
            return this.llStatementContentLayout;
        }

        public final RelativeLayout getRlCustomLayout() {
            return this.rlCustomLayout;
        }

        public final RelativeLayout getRlCustomParentLayout() {
            return this.rlCustomParentLayout;
        }

        public final COUIComponentMaxHeightScrollView getScrollCustomLayout() {
            return this.scrollCustomLayout;
        }

        public final COUIComponentMaxHeightScrollView getScrollText() {
            return this.scrollText;
        }

        public final COUIComponentMaxHeightScrollView getScrollTextStatementProtocol() {
            return this.scrollTextStatementProtocol;
        }

        public final SimpleButtonGroupCtrl getSimpleButtonGroupCtrl() {
            return this.simpleButtonGroupCtrl;
        }

        public final COUIMaxHeightNestedScrollView getSlStatementContentLayout() {
            return this.slStatementContentLayout;
        }

        public final COUIButtonLayout getSmallLandButtonLayout() {
            return this.smallLandButtonLayout;
        }

        public final COUIButton getSmallLandConfirmButton() {
            return this.smallLandConfirmButton;
        }

        public final COUIButton getSmallLandExitButton() {
            return this.smallLandExitButton;
        }

        public final TextView getTvLogoMessage() {
            return this.tvLogoMessage;
        }

        public final TextView getTvLogoName() {
            return this.tvLogoName;
        }

        public final TextView getTvLogoSubTitle() {
            return this.tvLogoSubTitle;
        }

        public final TextView getTvStatementProtocol() {
            return this.tvStatementProtocol;
        }

        public final TextView getTxtStatement() {
            return this.txtStatement;
        }

        public void refreshBottomButtonWarp(Configuration configuration, View view) {
            kotlin.jvm.internal.r.e(configuration, "configuration");
            kotlin.jvm.internal.r.e(view, "view");
            COUIButton cOUIButton = this.btnConfirm;
            if (cOUIButton != null) {
                cOUIButton.setMaxLines(this.BTN_MAX_LINE);
            }
            TextView textView = this.exitButton;
            if (textView != null) {
                textView.setVisibility(!COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp) ? 8 : 0);
            }
            COUIButton cOUIButton2 = this.btnConfirm;
            if (cOUIButton2 != null) {
                cOUIButton2.setVisibility(COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp) ? 0 : 8);
            }
            SingleButtonWrap singleButtonWrap = this.bottomButtonWrap;
            if (singleButtonWrap != null) {
                singleButtonWrap.onConfigurationChanged(configuration);
            }
            TextView textView2 = this.exitButton;
            if (textView2 == null) {
                return;
            }
            textView2.setMaxWidth(view.getContext().getResources().getDimensionPixelSize(R$dimen.coui_full_page_statement_button_width));
        }

        public void refreshSimpleButtonGroupCtrl(Configuration configuration, View view) {
            kotlin.jvm.internal.r.e(configuration, "configuration");
            kotlin.jvm.internal.r.e(view, "view");
            COUIButton cOUIButton = this.smallLandConfirmButton;
            if (cOUIButton != null) {
                cOUIButton.setMaxLines(this.BTN_MAX_LINE);
            }
            COUIButton cOUIButton2 = this.smallLandExitButton;
            if (cOUIButton2 != null) {
                cOUIButton2.setMaxLines(this.BTN_MAX_LINE);
            }
            SimpleButtonGroupCtrl simpleButtonGroupCtrl = this.simpleButtonGroupCtrl;
            if (simpleButtonGroupCtrl != null) {
                simpleButtonGroupCtrl.onConfigurationChanged(configuration);
            }
            this.smallLandButtonLayout.setVisibility(COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp) ? 8 : 0);
        }

        public final void setBottomButtonWrap(SingleButtonWrap singleButtonWrap) {
            this.bottomButtonWrap = singleButtonWrap;
        }

        public final void setBtnConfirm(COUIButton cOUIButton) {
            this.btnConfirm = cOUIButton;
        }

        public final void setExitButton(TextView textView) {
            this.exitButton = textView;
        }

        public final void setIvLogo(ImageView imageView) {
            kotlin.jvm.internal.r.e(imageView, "<set-?>");
            this.ivLogo = imageView;
        }

        public final void setLlContentStatementContentChild(View view) {
            kotlin.jvm.internal.r.e(view, "<set-?>");
            this.llContentStatementContentChild = view;
        }

        public final void setLlListLayout(LinearLayout linearLayout) {
            kotlin.jvm.internal.r.e(linearLayout, "<set-?>");
            this.llListLayout = linearLayout;
        }

        public final void setLlStatementContentLayout(LinearLayout linearLayout) {
            this.llStatementContentLayout = linearLayout;
        }

        public final void setRlCustomLayout(RelativeLayout relativeLayout) {
            kotlin.jvm.internal.r.e(relativeLayout, "<set-?>");
            this.rlCustomLayout = relativeLayout;
        }

        public final void setRlCustomParentLayout(RelativeLayout relativeLayout) {
            kotlin.jvm.internal.r.e(relativeLayout, "<set-?>");
            this.rlCustomParentLayout = relativeLayout;
        }

        public final void setScrollCustomLayout(COUIComponentMaxHeightScrollView cOUIComponentMaxHeightScrollView) {
            this.scrollCustomLayout = cOUIComponentMaxHeightScrollView;
        }

        public final void setScrollText(COUIComponentMaxHeightScrollView cOUIComponentMaxHeightScrollView) {
            kotlin.jvm.internal.r.e(cOUIComponentMaxHeightScrollView, "<set-?>");
            this.scrollText = cOUIComponentMaxHeightScrollView;
        }

        public final void setScrollTextStatementProtocol(COUIComponentMaxHeightScrollView cOUIComponentMaxHeightScrollView) {
            kotlin.jvm.internal.r.e(cOUIComponentMaxHeightScrollView, "<set-?>");
            this.scrollTextStatementProtocol = cOUIComponentMaxHeightScrollView;
        }

        public final void setSimpleButtonGroupCtrl(SimpleButtonGroupCtrl simpleButtonGroupCtrl) {
            this.simpleButtonGroupCtrl = simpleButtonGroupCtrl;
        }

        public final void setSlStatementContentLayout(COUIMaxHeightNestedScrollView cOUIMaxHeightNestedScrollView) {
            this.slStatementContentLayout = cOUIMaxHeightNestedScrollView;
        }

        public final void setSmallLandButtonLayout(COUIButtonLayout cOUIButtonLayout) {
            kotlin.jvm.internal.r.e(cOUIButtonLayout, "<set-?>");
            this.smallLandButtonLayout = cOUIButtonLayout;
        }

        public final void setSmallLandConfirmButton(COUIButton cOUIButton) {
            kotlin.jvm.internal.r.e(cOUIButton, "<set-?>");
            this.smallLandConfirmButton = cOUIButton;
        }

        public final void setSmallLandExitButton(COUIButton cOUIButton) {
            kotlin.jvm.internal.r.e(cOUIButton, "<set-?>");
            this.smallLandExitButton = cOUIButton;
        }

        public final void setTvLogoMessage(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.tvLogoMessage = textView;
        }

        public final void setTvLogoName(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.tvLogoName = textView;
        }

        public final void setTvLogoSubTitle(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.tvLogoSubTitle = textView;
        }

        public final void setTvStatementProtocol(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.tvStatementProtocol = textView;
        }

        public final void setTxtStatement(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.txtStatement = textView;
        }

        public void updateLayoutUiVisibleState(List<COUIUserStatementListItem> list, View view, int i10, int i11, int i12) {
            if (view != null) {
                this.tvLogoMessage.setVisibility(8);
                this.ivLogo.setVisibility(8);
                this.rlCustomLayout.setVisibility(0);
                this.llListLayout.setVisibility(8);
                this.rlCustomParentLayout.setPadding(0, i11, 0, 0);
                this.tvLogoSubTitle.setPadding(0, 0, 0, 0);
                return;
            }
            if (list == null || list.isEmpty()) {
                this.tvLogoMessage.setVisibility(0);
                this.ivLogo.setVisibility(0);
                this.rlCustomLayout.setVisibility(8);
                this.llListLayout.setVisibility(8);
                this.rlCustomParentLayout.setPadding(0, i10, 0, 0);
                this.tvLogoSubTitle.setPadding(0, i12, 0, 0);
                return;
            }
            this.tvLogoMessage.setVisibility(8);
            this.ivLogo.setVisibility(0);
            this.rlCustomLayout.setVisibility(8);
            this.llListLayout.setVisibility(0);
            this.rlCustomParentLayout.setPadding(0, i11, 0, 0);
            this.tvLogoSubTitle.setPadding(0, i12, 0, 0);
        }
    }

    public final class ListItemViewHolder {
        private ImageView icon;
        private View mItemView;
        private int mPosition;
        private TextView message;
        final /* synthetic */ COUIUserStatementDialog this$0;
        private TextView title;

        public ListItemViewHolder(COUIUserStatementDialog cOUIUserStatementDialog, View itemView) {
            kotlin.jvm.internal.r.e(itemView, "itemView");
            this.this$0 = cOUIUserStatementDialog;
            this.mItemView = itemView;
            View viewFindViewById = itemView.findViewById(R$id.iv_statement_list_icon);
            kotlin.jvm.internal.r.d(viewFindViewById, "itemView.findViewById(R.id.iv_statement_list_icon)");
            this.icon = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.tv_statement_list_title);
            kotlin.jvm.internal.r.d(viewFindViewById2, "itemView.findViewById(R.….tv_statement_list_title)");
            this.title = (TextView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.tv_statement_list_message);
            kotlin.jvm.internal.r.d(viewFindViewById3, "itemView.findViewById(R.…v_statement_list_message)");
            this.message = (TextView) viewFindViewById3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bindListener$lambda$0(OnItemClickListener onItemClickListener, ListItemViewHolder this$0, View it) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            if (onItemClickListener != null) {
                kotlin.jvm.internal.r.d(it, "it");
                onItemClickListener.onItemClick(it, this$0.mPosition);
            }
        }

        public final void bindItemData(COUIUserStatementListItem item, int i10) {
            String message;
            kotlin.jvm.internal.r.e(item, "item");
            this.mPosition = i10;
            this.title.setText(item.getTitle());
            this.icon.setImageDrawable(item.getIcon());
            if (item.getMessage() == null || ((message = item.getMessage()) != null && message.length() == 0)) {
                this.message.setVisibility(8);
            } else {
                this.message.setText(item.getMessage());
                this.message.setVisibility(0);
            }
        }

        public final void bindListener(final OnItemClickListener onItemClickListener) {
            View view = this.mItemView;
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.s
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        COUIUserStatementDialog.ListItemViewHolder.bindListener$lambda$0(onItemClickListener, this, view2);
                    }
                });
            }
        }

        public final ImageView getIcon() {
            return this.icon;
        }

        public final View getMItemView() {
            return this.mItemView;
        }

        public final int getMPosition() {
            return this.mPosition;
        }

        public final TextView getMessage() {
            return this.message;
        }

        public final TextView getTitle() {
            return this.title;
        }

        public final void setIcon(ImageView imageView) {
            kotlin.jvm.internal.r.e(imageView, "<set-?>");
            this.icon = imageView;
        }

        public final void setMItemView(View view) {
            kotlin.jvm.internal.r.e(view, "<set-?>");
            this.mItemView = view;
        }

        public final void setMPosition(int i10) {
            this.mPosition = i10;
        }

        public final void setMessage(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.message = textView;
        }

        public final void setTitle(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.title = textView;
        }
    }

    public static final class MINIContentViewHolder {
        private TextView appStatement;
        private COUIButton bottomButton;
        private SingleButtonWrap bottomButtonWrap;
        private TextView exitButton;
        private COUIComponentMaxHeightScrollView mScrollViewComponent;
        private TextView protocolStatement;
        private SimpleButtonGroupCtrl simpleButtonGroupCtrl;
        private COUIButtonLayout smallLandButtonLayout;
        private COUIButton smallLandConfirmButton;
        private COUIButton smallLandexitButton;
        private TextView titleView;

        public MINIContentViewHolder(View view) {
            kotlin.jvm.internal.r.e(view, "view");
            View viewFindViewById = view.findViewById(R$id.txt_statement);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(R.id.txt_statement)");
            this.appStatement = (TextView) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R$id.btn_confirm);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(R.id.btn_confirm)");
            this.bottomButton = (COUIButton) viewFindViewById2;
            View viewFindViewById3 = view.findViewById(R$id.scroll_text);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(R.id.scroll_text)");
            this.mScrollViewComponent = (COUIComponentMaxHeightScrollView) viewFindViewById3;
            View viewFindViewById4 = view.findViewById(R$id.txt_exit);
            kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(R.id.txt_exit)");
            this.exitButton = (TextView) viewFindViewById4;
            View viewFindViewById5 = view.findViewById(R$id.txt_title);
            kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(R.id.txt_title)");
            this.titleView = (TextView) viewFindViewById5;
            View viewFindViewById6 = view.findViewById(R$id.statement_protocol);
            kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(R.id.statement_protocol)");
            this.protocolStatement = (TextView) viewFindViewById6;
            View viewFindViewById7 = view.findViewById(R$id.small_land_button_layout);
            kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(R.id.small_land_button_layout)");
            COUIButtonLayout cOUIButtonLayout = (COUIButtonLayout) viewFindViewById7;
            this.smallLandButtonLayout = cOUIButtonLayout;
            cOUIButtonLayout.setLimitHeight(true);
            this.smallLandButtonLayout.setForceSmallScreenWidth(true);
            View viewFindViewById8 = view.findViewById(R$id.small_land_btn_confirm);
            kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(R.id.small_land_btn_confirm)");
            this.smallLandConfirmButton = (COUIButton) viewFindViewById8;
            View viewFindViewById9 = view.findViewById(R$id.small_land_btn_exit);
            kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(R.id.small_land_btn_exit)");
            this.smallLandexitButton = (COUIButton) viewFindViewById9;
        }

        private final boolean isSmallScreen(Configuration configuration) {
            return configuration.smallestScreenWidthDp < 480;
        }

        public final TextView getAppStatement() {
            return this.appStatement;
        }

        public final COUIButton getBottomButton() {
            return this.bottomButton;
        }

        public final SingleButtonWrap getBottomButtonWrap() {
            return this.bottomButtonWrap;
        }

        public final TextView getExitButton() {
            return this.exitButton;
        }

        public final COUIComponentMaxHeightScrollView getMScrollViewComponent() {
            return this.mScrollViewComponent;
        }

        public final TextView getProtocolStatement() {
            return this.protocolStatement;
        }

        public final SimpleButtonGroupCtrl getSimpleButtonGroupCtrl() {
            return this.simpleButtonGroupCtrl;
        }

        public final COUIButtonLayout getSmallLandButtonLayout() {
            return this.smallLandButtonLayout;
        }

        public final COUIButton getSmallLandConfirmButton() {
            return this.smallLandConfirmButton;
        }

        public final COUIButton getSmallLandexitButton() {
            return this.smallLandexitButton;
        }

        public final TextView getTitleView() {
            return this.titleView;
        }

        public final void refreshMINITextSize(Configuration configuration, Context context) {
            int i10;
            COUIButton cOUIButton;
            kotlin.jvm.internal.r.e(configuration, "configuration");
            kotlin.jvm.internal.r.e(context, "context");
            if (configuration.screenWidthDp < COUIStatementPanelStateChangeListener.Companion.getSCREN_DP_MINI_WIDTH().getValue()) {
                SimpleButtonGroupCtrl simpleButtonGroupCtrl = this.simpleButtonGroupCtrl;
                if (simpleButtonGroupCtrl != null) {
                    simpleButtonGroupCtrl.release();
                }
                SingleButtonWrap singleButtonWrap = this.bottomButtonWrap;
                if (singleButtonWrap != null) {
                    singleButtonWrap.release();
                }
                COUIButton cOUIButton2 = this.bottomButton;
                i10 = 1;
                if (cOUIButton2 != null) {
                    cOUIButton2.setTextSize(1, 16.0f);
                    COUIChangeTextUtil.adaptFontSize(cOUIButton2, 4);
                }
                COUIButton cOUIButton3 = this.smallLandexitButton;
                cOUIButton3.setTextSize(1, 16.0f);
                COUIChangeTextUtil.adaptFontSize(cOUIButton3, 4);
                COUIButton cOUIButton4 = this.smallLandConfirmButton;
                cOUIButton4.setTextSize(1, 16.0f);
                COUIChangeTextUtil.adaptFontSize(cOUIButton4, 4);
            } else {
                SimpleButtonGroupCtrl simpleButtonGroupCtrl2 = this.simpleButtonGroupCtrl;
                if (simpleButtonGroupCtrl2 != null && simpleButtonGroupCtrl2.getSingleButtonWrapListSize() == 0) {
                    SimpleButtonGroupCtrl simpleButtonGroupCtrl3 = this.simpleButtonGroupCtrl;
                    if (simpleButtonGroupCtrl3 != null) {
                        simpleButtonGroupCtrl3.registerButton(this.smallLandexitButton, 3);
                    }
                    SimpleButtonGroupCtrl simpleButtonGroupCtrl4 = this.simpleButtonGroupCtrl;
                    if (simpleButtonGroupCtrl4 != null) {
                        simpleButtonGroupCtrl4.registerButton(this.smallLandConfirmButton, 3);
                    }
                }
                SingleButtonWrap singleButtonWrap2 = this.bottomButtonWrap;
                if ((singleButtonWrap2 != null ? singleButtonWrap2.getProcessView() : null) == null && (cOUIButton = this.bottomButton) != null) {
                    this.bottomButtonWrap = new SingleButtonWrap(cOUIButton, 0);
                }
                i10 = 2;
            }
            TextView textView = this.exitButton;
            if (textView != null) {
                textView.setTextSize(i10, 16.0f);
                COUIChangeTextUtil.adaptFontSize(textView, 4);
            }
            TextView textView2 = this.titleView;
            if (textView2 != null) {
                textView2.setTextSize(i10, 18.0f);
            }
            TextView textView3 = this.appStatement;
            if (textView3 != null) {
                textView3.setTextSize(i10, 14.0f);
            }
            TextView textView4 = this.protocolStatement;
            if (textView4 != null) {
                textView4.setTextSize(i10, 14.0f);
            }
            TextView textView5 = this.appStatement;
            if (textView5 != null) {
                COUIChangeTextUtil.adaptFontSize(textView5, 2);
            }
            TextView textView6 = this.protocolStatement;
            if (textView6 != null) {
                COUIChangeTextUtil.adaptFontSize(textView6, 2);
            }
        }

        public final void refreshSimpleButtonGroupCtrl(Configuration configuration, Context context) {
            SimpleButtonGroupCtrl simpleButtonGroupCtrl;
            SingleButtonWrap singleButtonWrap;
            kotlin.jvm.internal.r.e(configuration, "configuration");
            kotlin.jvm.internal.r.e(context, "context");
            SimpleButtonGroupCtrl simpleButtonGroupCtrl2 = this.simpleButtonGroupCtrl;
            if ((simpleButtonGroupCtrl2 == null || simpleButtonGroupCtrl2.getSingleButtonWrapListSize() != 0) && (simpleButtonGroupCtrl = this.simpleButtonGroupCtrl) != null) {
                simpleButtonGroupCtrl.onConfigurationChanged(configuration);
            }
            SingleButtonWrap singleButtonWrap2 = this.bottomButtonWrap;
            if ((singleButtonWrap2 != null ? singleButtonWrap2.getProcessView() : null) != null && (singleButtonWrap = this.bottomButtonWrap) != null) {
                singleButtonWrap.onConfigurationChanged(configuration);
            }
            Configuration configuration2 = context.getResources().getConfiguration();
            kotlin.jvm.internal.r.d(configuration2, "context.resources.configuration");
            boolean z10 = isSmallScreen(configuration2) && !COUIPanelMultiWindowUtils.isPortrait(context);
            this.exitButton.setVisibility(z10 ? 8 : 0);
            this.bottomButton.setVisibility(z10 ? 8 : 0);
            this.smallLandButtonLayout.setVisibility(z10 ? 0 : 8);
        }

        public final void setAppStatement(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.appStatement = textView;
        }

        public final void setBottomButton(COUIButton cOUIButton) {
            kotlin.jvm.internal.r.e(cOUIButton, "<set-?>");
            this.bottomButton = cOUIButton;
        }

        public final void setBottomButtonWrap(SingleButtonWrap singleButtonWrap) {
            this.bottomButtonWrap = singleButtonWrap;
        }

        public final void setExitButton(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.exitButton = textView;
        }

        public final void setMScrollViewComponent(COUIComponentMaxHeightScrollView cOUIComponentMaxHeightScrollView) {
            kotlin.jvm.internal.r.e(cOUIComponentMaxHeightScrollView, "<set-?>");
            this.mScrollViewComponent = cOUIComponentMaxHeightScrollView;
        }

        public final void setProtocolStatement(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.protocolStatement = textView;
        }

        public final void setSimpleButtonGroupCtrl(SimpleButtonGroupCtrl simpleButtonGroupCtrl) {
            this.simpleButtonGroupCtrl = simpleButtonGroupCtrl;
        }

        public final void setSmallLandButtonLayout(COUIButtonLayout cOUIButtonLayout) {
            kotlin.jvm.internal.r.e(cOUIButtonLayout, "<set-?>");
            this.smallLandButtonLayout = cOUIButtonLayout;
        }

        public final void setSmallLandConfirmButton(COUIButton cOUIButton) {
            kotlin.jvm.internal.r.e(cOUIButton, "<set-?>");
            this.smallLandConfirmButton = cOUIButton;
        }

        public final void setSmallLandexitButton(COUIButton cOUIButton) {
            kotlin.jvm.internal.r.e(cOUIButton, "<set-?>");
            this.smallLandexitButton = cOUIButton;
        }

        public final void setTitleView(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.titleView = textView;
        }
    }

    public static final class NormalContentViewHolder extends ContentViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NormalContentViewHolder(View view, Context context) {
            super(view, context);
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(context, "context");
        }

        private final boolean isLargeScreenLayoutSize(Context context) {
            return COUIResponsiveUtils.isLargeScreenDp(context.getResources().getConfiguration().screenHeightDp) && COUIResponsiveUtils.isMediumScreenDp(context.getResources().getConfiguration().screenWidthDp);
        }

        public final void updateExpandScrollUI(int i10) {
            int layoutDirection = getLlContentStatementContentChild().getContext().getResources().getConfiguration().getLayoutDirection();
            LinearLayout llStatementContentLayout = getLlStatementContentLayout();
            if (llStatementContentLayout != null) {
                llStatementContentLayout.removeAllViews();
            }
            COUIMaxHeightNestedScrollView slStatementContentLayout = getSlStatementContentLayout();
            if (slStatementContentLayout != null && slStatementContentLayout.getChildCount() == 0) {
                View llContentStatementContentChild = getLlContentStatementContentChild();
                COUIMaxHeightNestedScrollView slStatementContentLayout2 = getSlStatementContentLayout();
                if (slStatementContentLayout2 != null) {
                    slStatementContentLayout2.addView(llContentStatementContentChild);
                }
                if (llContentStatementContentChild.getLayoutParams() != null) {
                    ViewGroup.LayoutParams layoutParams = llContentStatementContentChild.getLayoutParams();
                    kotlin.jvm.internal.r.d(layoutParams, "layoutParams");
                    layoutParams.width = -1;
                    layoutParams.height = -2;
                    llContentStatementContentChild.setLayoutParams(layoutParams);
                }
            }
            getLlContentStatementContentChild().setLayoutDirection(layoutDirection);
            COUIComponentMaxHeightScrollView scrollCustomLayout = getScrollCustomLayout();
            if (scrollCustomLayout != null) {
                scrollCustomLayout.setMinHeight(i10);
            }
            COUIComponentMaxHeightScrollView scrollCustomLayout2 = getScrollCustomLayout();
            if (scrollCustomLayout2 != null) {
                scrollCustomLayout2.setMaxHeight(-1);
            }
            COUIMaxHeightNestedScrollView slStatementContentLayout3 = getSlStatementContentLayout();
            if (slStatementContentLayout3 != null) {
                slStatementContentLayout3.setVisibility(0);
            }
            LinearLayout llStatementContentLayout2 = getLlStatementContentLayout();
            if (llStatementContentLayout2 == null) {
                return;
            }
            llStatementContentLayout2.setVisibility(8);
        }

        public final void updateLogoPaddingTop(List<COUIUserStatementListItem> list, View view, int i10, int i11, int i12, Context context, int i13, int i14, int i15, int i16, boolean z10, boolean z11) {
            kotlin.jvm.internal.r.e(context, "context");
            Integer numValueOf = null;
            if (COUIResponsiveUtils.isSmallScreenDp(context.getResources().getConfiguration().screenWidthDp)) {
                Resources resources = context.getResources();
                if (resources != null) {
                    numValueOf = Integer.valueOf(resources.getDimensionPixelSize(R$dimen.coui_component_statement_margin_top_small_screen_max));
                }
            } else {
                Resources resources2 = context.getResources();
                if (resources2 != null) {
                    numValueOf = Integer.valueOf(resources2.getDimensionPixelSize(R$dimen.coui_component_statement_margin_top_big_screen_max));
                }
            }
            if (view == null && ((list == null || list.isEmpty()) && !z11 && !z10 && numValueOf != null)) {
                i10 = numValueOf.intValue();
            }
            getLlContentStatementContentChild().setPaddingRelative(0, i10, i13, 0);
            COUIMaxHeightNestedScrollView slStatementContentLayout = getSlStatementContentLayout();
            if (slStatementContentLayout != null) {
                slStatementContentLayout.setPaddingRelative(i11, 0, i12, 0);
            }
        }

        public final void updateNormalFoldingScrollUI() {
            COUIMaxHeightNestedScrollView slStatementContentLayout = getSlStatementContentLayout();
            if (slStatementContentLayout != null) {
                slStatementContentLayout.removeAllViews();
            }
            LinearLayout llStatementContentLayout = getLlStatementContentLayout();
            if (llStatementContentLayout != null && llStatementContentLayout.getChildCount() == 0) {
                View llContentStatementContentChild = getLlContentStatementContentChild();
                LinearLayout llStatementContentLayout2 = getLlStatementContentLayout();
                if (llStatementContentLayout2 != null) {
                    llStatementContentLayout2.addView(llContentStatementContentChild);
                }
                if (llContentStatementContentChild.getLayoutParams() != null) {
                    ViewGroup.LayoutParams layoutParams = llContentStatementContentChild.getLayoutParams();
                    kotlin.jvm.internal.r.d(layoutParams, "layoutParams");
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    llContentStatementContentChild.setLayoutParams(layoutParams);
                }
            }
            COUIComponentMaxHeightScrollView scrollCustomLayout = getScrollCustomLayout();
            if (scrollCustomLayout != null) {
                scrollCustomLayout.setMinHeight(0);
            }
            COUIComponentMaxHeightScrollView scrollCustomLayout2 = getScrollCustomLayout();
            if (scrollCustomLayout2 != null) {
                scrollCustomLayout2.setMaxHeight(-1);
            }
            COUIMaxHeightNestedScrollView slStatementContentLayout2 = getSlStatementContentLayout();
            if (slStatementContentLayout2 != null) {
                slStatementContentLayout2.setVisibility(8);
            }
            LinearLayout llStatementContentLayout3 = getLlStatementContentLayout();
            if (llStatementContentLayout3 == null) {
                return;
            }
            llStatementContentLayout3.setVisibility(0);
        }

        public final void updateScrollTextMaxHeight(List<COUIUserStatementListItem> list, View view, Configuration configuration, int i10, int i11, Context context) {
            kotlin.jvm.internal.r.e(configuration, "configuration");
            kotlin.jvm.internal.r.e(context, "context");
            if (view == null && ((list == null || list.isEmpty()) && COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp))) {
                getScrollText().setMaxHeight(i11);
            } else {
                getScrollText().setMaxHeight(i10);
            }
            getScrollTextStatementProtocol().setMaxHeight(context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_scroll_text_statement_protocol_max_height));
        }

        public final void updateSplitScreenLogoPaddingTop(int i10, int i11, int i12, int i13, int i14, int i15) {
            getLlContentStatementContentChild().setPaddingRelative(0, i10, i15, 0);
            COUIMaxHeightNestedScrollView slStatementContentLayout = getSlStatementContentLayout();
            if (slStatementContentLayout != null) {
                slStatementContentLayout.setPaddingRelative(i13, i11, i14, i12);
            }
        }

        public final void updateSplitScreenScrollTextMaxHeight() {
            getScrollText().setMaxHeight(-1);
            COUIComponentMaxHeightScrollView scrollTextStatementProtocol = getScrollTextStatementProtocol();
            if (scrollTextStatementProtocol != null) {
                scrollTextStatementProtocol.setMaxHeight(-1);
            }
        }
    }

    public interface OnButtonClickListener {
        void onBottomButtonClick();

        void onExitButtonClick();
    }

    public interface OnItemClickListener {
        void onItemClick(View view, int i10);
    }

    public static final class SmallLandContentViewHolder extends ContentViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SmallLandContentViewHolder(View view, Context context) {
            super(view, context);
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(context, "context");
        }

        @Override // com.coui.appcompat.statement.COUIUserStatementDialog.ContentViewHolder
        public void bindSimpleButtonGroupCtrl() {
            COUIButton smallLandConfirmButton = getSmallLandConfirmButton();
            smallLandConfirmButton.setTextSize(1, 16.0f);
            COUIChangeTextUtil.adaptFontSize(smallLandConfirmButton, 4);
            COUIButton smallLandExitButton = getSmallLandExitButton();
            smallLandExitButton.setTextSize(1, 16.0f);
            COUIChangeTextUtil.adaptFontSize(smallLandExitButton, 4);
        }

        @Override // com.coui.appcompat.statement.COUIUserStatementDialog.ContentViewHolder
        public void refreshSimpleButtonGroupCtrl(Configuration configuration, View view) {
            kotlin.jvm.internal.r.e(configuration, "configuration");
            kotlin.jvm.internal.r.e(view, "view");
        }
    }

    public static final class TinyContentViewHolder {
        private TextView appStatementTiny;
        private COUIButton btnConfirmTiny;
        private COUIButton btnExitTiny;
        private LinearLayoutCompat customFunctionalAreaTiny;
        private LinearLayoutCompat customFunctionalAreaWrapperTiny;
        private RelativeLayout rlTextTiny;
        private ScrollView scrollButtonTiny;
        private TextView titleTiny;

        public TinyContentViewHolder(View view) {
            kotlin.jvm.internal.r.e(view, "view");
            View viewFindViewById = view.findViewById(R$id.rl_text_tiny);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(R.id.rl_text_tiny)");
            this.rlTextTiny = (RelativeLayout) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R$id.txt_title_tiny);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(R.id.txt_title_tiny)");
            this.titleTiny = (TextView) viewFindViewById2;
            View viewFindViewById3 = view.findViewById(R$id.txt_statement_tiny);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(R.id.txt_statement_tiny)");
            this.appStatementTiny = (TextView) viewFindViewById3;
            View viewFindViewById4 = view.findViewById(R$id.scroll_button_tiny);
            kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(R.id.scroll_button_tiny)");
            this.scrollButtonTiny = (ScrollView) viewFindViewById4;
            View viewFindViewById5 = view.findViewById(R$id.btn_confirm_tiny);
            kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(R.id.btn_confirm_tiny)");
            this.btnConfirmTiny = (COUIButton) viewFindViewById5;
            View viewFindViewById6 = view.findViewById(R$id.txt_exit_tiny);
            kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(R.id.txt_exit_tiny)");
            this.btnExitTiny = (COUIButton) viewFindViewById6;
            View viewFindViewById7 = view.findViewById(R$id.custom_functional_area_wrapper);
            kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(R.id.custom_functional_area_wrapper)");
            this.customFunctionalAreaWrapperTiny = (LinearLayoutCompat) viewFindViewById7;
            View viewFindViewById8 = view.findViewById(R$id.custom_functional_area);
            kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(R.id.custom_functional_area)");
            this.customFunctionalAreaTiny = (LinearLayoutCompat) viewFindViewById8;
        }

        public final TextView getAppStatementTiny() {
            return this.appStatementTiny;
        }

        public final COUIButton getBtnConfirmTiny() {
            return this.btnConfirmTiny;
        }

        public final COUIButton getBtnExitTiny() {
            return this.btnExitTiny;
        }

        public final LinearLayoutCompat getCustomFunctionalAreaTiny() {
            return this.customFunctionalAreaTiny;
        }

        public final LinearLayoutCompat getCustomFunctionalAreaWrapperTiny() {
            return this.customFunctionalAreaWrapperTiny;
        }

        public final RelativeLayout getRlTextTiny() {
            return this.rlTextTiny;
        }

        public final ScrollView getScrollButtonTiny() {
            return this.scrollButtonTiny;
        }

        public final TextView getTitleTiny() {
            return this.titleTiny;
        }

        public final void refreshTinyContentViewHolder(View view) {
            if (view != null) {
                this.customFunctionalAreaWrapperTiny.setVisibility(0);
            } else {
                this.customFunctionalAreaWrapperTiny.setVisibility(8);
            }
        }

        public final void setAppStatementTiny(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.appStatementTiny = textView;
        }

        public final void setBtnConfirmTiny(COUIButton cOUIButton) {
            kotlin.jvm.internal.r.e(cOUIButton, "<set-?>");
            this.btnConfirmTiny = cOUIButton;
        }

        public final void setBtnExitTiny(COUIButton cOUIButton) {
            kotlin.jvm.internal.r.e(cOUIButton, "<set-?>");
            this.btnExitTiny = cOUIButton;
        }

        public final void setCustomFunctionalAreaTiny(LinearLayoutCompat linearLayoutCompat) {
            kotlin.jvm.internal.r.e(linearLayoutCompat, "<set-?>");
            this.customFunctionalAreaTiny = linearLayoutCompat;
        }

        public final void setCustomFunctionalAreaWrapperTiny(LinearLayoutCompat linearLayoutCompat) {
            kotlin.jvm.internal.r.e(linearLayoutCompat, "<set-?>");
            this.customFunctionalAreaWrapperTiny = linearLayoutCompat;
        }

        public final void setRlTextTiny(RelativeLayout relativeLayout) {
            kotlin.jvm.internal.r.e(relativeLayout, "<set-?>");
            this.rlTextTiny = relativeLayout;
        }

        public final void setScrollButtonTiny(ScrollView scrollView) {
            kotlin.jvm.internal.r.e(scrollView, "<set-?>");
            this.scrollButtonTiny = scrollView;
        }

        public final void setTitleTiny(TextView textView) {
            kotlin.jvm.internal.r.e(textView, "<set-?>");
            this.titleTiny = textView;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.values().length];
            try {
                iArr[COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.SMALL_LAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.SPLIT_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.TINY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIUserStatementDialog(Context context) {
        this(context, 0, 0.0f, 0.0f, 14, null);
        kotlin.jvm.internal.r.e(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addOnLayoutChangeListenerToScrollText(CharSequence charSequence, CharSequence charSequence2, ContentViewHolder contentViewHolder) {
        contentViewHolder.getTxtStatement().setText(charSequence);
        contentViewHolder.getTvStatementProtocol().setText("");
        if (!TextUtils.isEmpty(charSequence2)) {
            contentViewHolder.getTxtStatement().append(charSequence2);
        }
        if ((contentViewHolder instanceof NormalContentViewHolder) && this.layoutChangeListenerFromNormal == null) {
            this.layoutChangeListenerFromNormal = initLayoutChangeListener(charSequence, charSequence2, contentViewHolder);
            contentViewHolder.getScrollText().addOnLayoutChangeListener(this.layoutChangeListenerFromNormal);
        }
        if ((contentViewHolder instanceof SmallLandContentViewHolder) && this.layoutChangeListenerFromSmallLand == null) {
            this.layoutChangeListenerFromSmallLand = initLayoutChangeListener(charSequence, charSequence2, contentViewHolder);
            contentViewHolder.getScrollText().addOnLayoutChangeListener(this.layoutChangeListenerFromSmallLand);
        }
    }

    private final void changePanelState(COUIStatementPanelStateChangeListener.PanelStatusTypeEnum panelStatusTypeEnum, Configuration configuration) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[panelStatusTypeEnum.ordinal()];
        if (i10 == 1) {
            this.changeEnumUIListener.initNormalContentView(configuration, this.mEnumPanelStatusType);
            this.changeEnumUIListener.updateNormalContentView(configuration);
        } else if (i10 == 2) {
            this.changeEnumUIListener.initSmallLandContentView(configuration, this.mEnumPanelStatusType);
            this.changeEnumUIListener.updateSmallLandContentView(configuration);
        } else if (i10 == 3) {
            this.changeEnumUIListener.initSplitScreenContentView(configuration, this.mEnumPanelStatusType);
            this.changeEnumUIListener.updateSplitScreenContentView(configuration);
        } else if (i10 != 4) {
            this.changeEnumUIListener.initMINIContentView(configuration, this.mEnumPanelStatusType);
            this.changeEnumUIListener.updateMINIContentView(configuration);
        } else {
            this.changeEnumUIListener.initTinyContentView(configuration, this.mEnumPanelStatusType);
            this.changeEnumUIListener.updateTinyContentView(configuration);
        }
        this.mEnumPanelStatusType = panelStatusTypeEnum;
    }

    private final void checkPanelStatus(Configuration configuration) {
        if (COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp) && configuration.screenWidthDp < COUIStatementPanelStateChangeListener.Companion.getSCREN_DP_MINI_WIDTH().getValue()) {
            changePanelState(COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.TINY, configuration);
            return;
        }
        if (!this.isFullPage) {
            changePanelState(COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.MINI, configuration);
            return;
        }
        if (!COUIPanelMultiWindowUtils.isInMultiWindowMode(COUIPanelMultiWindowUtils.contextToActivity(getContext())) && configuration.orientation == 2) {
            int i10 = configuration.screenLayout;
            if ((i10 & 15) == 2 && (i10 & 48) == 32) {
                super.setIsShowInMaxHeight(this.isFullPage);
                setIsInTinyScreen(false, false);
                changePanelState(COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.SMALL_LAND, configuration);
                return;
            }
        }
        if (configuration.screenHeightDp <= COUIStatementPanelStateChangeListener.Companion.getSCREN_DP_SPLIT_HEIGHT().getValue()) {
            super.setIsShowInMaxHeight(this.isFullPage);
            setIsInTinyScreen(false, false);
            changePanelState(COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.SPLIT_SCREEN, configuration);
        } else {
            super.setIsShowInMaxHeight(this.isFullPage);
            setIsInTinyScreen(false, false);
            changePanelState(COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.NORMAL, configuration);
        }
    }

    private final int getPanelHeight() {
        View viewFindViewById;
        Window window = getWindow();
        if (window == null || (viewFindViewById = window.findViewById(com.support.appcompat.R$id.design_bottom_sheet)) == null) {
            return 0;
        }
        return viewFindViewById.getHeight();
    }

    private final int getPanelWidth() {
        View viewFindViewById;
        Window window = getWindow();
        if (window == null || (viewFindViewById = window.findViewById(com.support.appcompat.R$id.design_bottom_sheet)) == null) {
            return 0;
        }
        return viewFindViewById.getWidth();
    }

    private final View.OnLayoutChangeListener initLayoutChangeListener(final CharSequence charSequence, final CharSequence charSequence2, final ContentViewHolder contentViewHolder) {
        return new View.OnLayoutChangeListener() { // from class: com.coui.appcompat.statement.p
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                COUIUserStatementDialog.initLayoutChangeListener$lambda$40(contentViewHolder, this, charSequence, charSequence2, view, i10, i11, i12, i13, i14, i15, i16, i17);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initLayoutChangeListener$lambda$40(final ContentViewHolder viewHolder, final COUIUserStatementDialog this$0, final CharSequence charSequence, final CharSequence charSequence2, View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        kotlin.jvm.internal.r.e(viewHolder, "$viewHolder");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        view.post(new Runnable() { // from class: com.coui.appcompat.statement.o
            @Override // java.lang.Runnable
            public final void run() {
                COUIUserStatementDialog.initLayoutChangeListener$lambda$40$lambda$39(viewHolder, this$0, charSequence, charSequence2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initLayoutChangeListener$lambda$40$lambda$39(ContentViewHolder viewHolder, COUIUserStatementDialog this$0, CharSequence charSequence, CharSequence charSequence2) {
        NormalContentViewHolder normalContentViewHolder;
        kotlin.jvm.internal.r.e(viewHolder, "$viewHolder");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (viewHolder instanceof SmallLandContentViewHolder) {
            viewHolder.getScrollText().setVisibility(TextUtils.isEmpty(viewHolder.getTxtStatement().getText()) ? 8 : 0);
            return;
        }
        int measuredHeight = TextUtils.isEmpty(viewHolder.getTvStatementProtocol().getText()) ? 0 : viewHolder.getTvStatementProtocol().getMeasuredHeight();
        int panelWidth = ((this$0.getPanelWidth() - this$0.panelStartPadding) - this$0.panelEndPadding) - this$0.contentPaddingEnd;
        CharSequence text = viewHolder.getTvLogoName().getText();
        if (text == null) {
            text = "";
        }
        float fMeasureText = viewHolder.getTvLogoName().getPaint().measureText(text.toString());
        float value = (COUIResponsiveUtils.isSmallScreenDp(this$0.getContext().getResources().getConfiguration().screenWidthDp) ? COUIStatementPanelStateChangeListener.Companion.getSCREN_DP_DEFAULT_HEIGHT() : COUIStatementPanelStateChangeListener.Companion.getSCREN_DP_SPLIT_HEIGHT()).getValue();
        boolean z10 = ((float) panelWidth) < fMeasureText;
        boolean z11 = ((float) this$0.getPanelHeight()) / this$0.getContext().getResources().getDisplayMetrics().density < value;
        if (viewHolder.getTxtStatement().getMeasuredHeight() + measuredHeight < viewHolder.getScrollText().getMaxHeight() || viewHolder.getScrollText().getMaxHeight() <= 0 || (COUIResponsiveUtils.isSmallScreenDp(this$0.getContext().getResources().getConfiguration().screenWidthDp) && z10 && z11)) {
            viewHolder.getScrollText().setVisibility(TextUtils.isEmpty(viewHolder.getTxtStatement().getText()) ? 8 : 0);
            viewHolder.getScrollTextStatementProtocol().setVisibility(8);
        } else {
            viewHolder.getTxtStatement().setText(charSequence);
            viewHolder.getTvStatementProtocol().setText(charSequence2);
            viewHolder.getScrollText().setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
            viewHolder.getScrollTextStatementProtocol().setVisibility(TextUtils.isEmpty(charSequence2) ? 8 : 0);
        }
        if (!(viewHolder instanceof NormalContentViewHolder) || this$0.mEnumPanelStatusType == COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.SPLIT_SCREEN || (normalContentViewHolder = this$0.normalContentViewHolder) == null) {
            return;
        }
        List<COUIUserStatementListItem> list = this$0.listItems;
        View view = this$0.customView;
        int i10 = this$0.panelPaddingTopMin;
        int i11 = this$0.panelStartPadding;
        int i12 = this$0.panelEndPadding;
        Context context = this$0.getContext();
        kotlin.jvm.internal.r.d(context, "context");
        normalContentViewHolder.updateLogoPaddingTop(list, view, i10, i11, i12, context, this$0.contentPaddingEnd, this$0.mCoordinatorLayoutMinInsetsTop, this$0.getPanelHeight(), this$0.getPanelWidth(), z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initMINIView(MINIContentViewHolder mINIContentViewHolder) {
        TextView appStatement = mINIContentViewHolder.getAppStatement();
        COUIDarkModeUtil.setForceDarkAllow(appStatement, false);
        appStatement.setTextColor(COUIContextUtil.getAttrColor(appStatement.getContext(), R$attr.couiColorSecondNeutral));
        COUIChangeTextUtil.adaptFontSize(appStatement, 2);
        COUILinkMovementMethod cOUILinkMovementMethod = COUILinkMovementMethod.INSTANCE;
        appStatement.setMovementMethod(cOUILinkMovementMethod);
        TextView protocolStatement = mINIContentViewHolder.getProtocolStatement();
        if (protocolStatement != null) {
            COUIDarkModeUtil.setForceDarkAllow(protocolStatement, false);
            protocolStatement.setVisibility(0);
            protocolStatement.setTextColor(COUIContextUtil.getAttrColor(protocolStatement.getContext(), R$attr.couiColorSecondNeutral));
            COUIChangeTextUtil.adaptFontSize(protocolStatement, 2);
            protocolStatement.setMovementMethod(cOUILinkMovementMethod);
        }
        COUIComponentMaxHeightScrollView mScrollViewComponent = mINIContentViewHolder.getMScrollViewComponent();
        if (mScrollViewComponent != null) {
            TextView protocolStatement2 = mINIContentViewHolder.getProtocolStatement();
            if (protocolStatement2 != null) {
                protocolStatement2.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            }
            mScrollViewComponent.setMaxHeight((mScrollViewComponent.getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_statement_max_height) - mScrollViewComponent.getMeasuredHeight()) - mScrollViewComponent.getPaddingTop());
            COUIComponentMaxHeightScrollView mScrollViewComponent2 = mINIContentViewHolder.getMScrollViewComponent();
            if (mScrollViewComponent2 != null) {
                mScrollViewComponent2.setProtocolFixed(true);
            }
        }
        TextView exitButton = mINIContentViewHolder.getExitButton();
        exitButton.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initMINIView$lambda$23$lambda$22(this.f7386a, view);
            }
        });
        COUITextViewCompatUtil.setPressRippleDrawable(exitButton);
        COUIButton bottomButton = mINIContentViewHolder.getBottomButton();
        bottomButton.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initMINIView$lambda$25$lambda$24(this.f7387a, view);
            }
        });
        mINIContentViewHolder.setBottomButtonWrap(new SingleButtonWrap(bottomButton, 0));
        mINIContentViewHolder.getSmallLandexitButton().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initMINIView$lambda$27$lambda$26(this.f7371a, view);
            }
        });
        mINIContentViewHolder.getSmallLandConfirmButton().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initMINIView$lambda$29$lambda$28(this.f7372a, view);
            }
        });
        mINIContentViewHolder.getTitleView().setText(this.titleText);
        mINIContentViewHolder.getBottomButton().setText(this.bottomButtonText);
        mINIContentViewHolder.getExitButton().setText(this.exitButtonText);
        mINIContentViewHolder.getAppStatement().setText(this.statement);
        mINIContentViewHolder.getProtocolStatement().setText(this.protocolText);
        mINIContentViewHolder.getSmallLandConfirmButton().setText(this.bottomButtonText);
        mINIContentViewHolder.getSmallLandexitButton().setText(this.exitButtonText);
        SimpleButtonGroupCtrl simpleButtonGroupCtrl = new SimpleButtonGroupCtrl();
        simpleButtonGroupCtrl.registerButton(mINIContentViewHolder.getSmallLandexitButton(), 3);
        simpleButtonGroupCtrl.registerButton(mINIContentViewHolder.getSmallLandConfirmButton(), 3);
        mINIContentViewHolder.setSimpleButtonGroupCtrl(simpleButtonGroupCtrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMINIView$lambda$23$lambda$22(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onExitButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMINIView$lambda$25$lambda$24(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onBottomButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMINIView$lambda$27$lambda$26(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onExitButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMINIView$lambda$29$lambda$28(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onBottomButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initNormalView() {
        NormalContentViewHolder normalContentViewHolder = this.normalContentViewHolder;
        if (normalContentViewHolder != null) {
            initViewHolderBind(normalContentViewHolder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initSmallLandView() {
        SmallLandContentViewHolder smallLandContentViewHolder = this.smallLandContentViewHolder;
        if (smallLandContentViewHolder != null) {
            initViewHolderBind(smallLandContentViewHolder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initTinyView(TinyContentViewHolder tinyContentViewHolder) {
        TextView appStatementTiny = tinyContentViewHolder.getAppStatementTiny();
        COUIDarkModeUtil.setForceDarkAllow(appStatementTiny, false);
        appStatementTiny.setTextColor(COUIContextUtil.getAttrColor(appStatementTiny.getContext(), R$attr.couiColorSecondNeutral));
        COUIChangeTextUtil.adaptFontSize(appStatementTiny, 2);
        appStatementTiny.setMovementMethod(COUILinkMovementMethod.INSTANCE);
        tinyContentViewHolder.getBtnConfirmTiny().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initTinyView$lambda$33$lambda$32(this.f7376a, view);
            }
        });
        tinyContentViewHolder.getBtnExitTiny().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initTinyView$lambda$35$lambda$34(this.f7377a, view);
            }
        });
        tinyContentViewHolder.getTitleTiny().setText(this.titleText);
        tinyContentViewHolder.getBtnConfirmTiny().setText(this.bottomButtonText);
        tinyContentViewHolder.getBtnExitTiny().setText(this.exitButtonText);
        tinyContentViewHolder.getAppStatementTiny().setText(this.statement);
        if (!TextUtils.isEmpty(this.protocolText)) {
            tinyContentViewHolder.getAppStatementTiny().append(this.protocolText);
        }
        View view = this.customViewTiny;
        if (view != null) {
            tinyContentViewHolder.getCustomFunctionalAreaTiny().addView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initTinyView$lambda$33$lambda$32(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onBottomButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initTinyView$lambda$35$lambda$34(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onExitButtonClick();
        }
    }

    private final void initViewHolderBind(ContentViewHolder contentViewHolder) {
        contentViewHolder.getIvLogo().setImageDrawable(this.logoDrawable);
        contentViewHolder.getTvLogoSubTitle().setText(this.titleText);
        contentViewHolder.getTvLogoName().setText(this.appName);
        contentViewHolder.getTvLogoMessage().setText(this.appMessage);
        contentViewHolder.getTxtStatement().setText(this.statement);
        if (!TextUtils.isEmpty(this.protocolText)) {
            contentViewHolder.getTxtStatement().append(this.protocolText);
        }
        TextView exitButton = contentViewHolder.getExitButton();
        if (exitButton != null) {
            exitButton.setText(this.exitButtonText);
        }
        contentViewHolder.getSmallLandExitButton().setText(this.exitButtonText);
        contentViewHolder.getSmallLandConfirmButton().setText(this.bottomButtonText);
        COUIButton btnConfirm = contentViewHolder.getBtnConfirm();
        if (btnConfirm != null) {
            btnConfirm.setText(this.bottomButtonText);
        }
        contentViewHolder.bindList(this.listViewHolderArray);
        COUIChangeTextUtil.adaptFontSize(contentViewHolder.getTvLogoMessage(), 2);
        COUIChangeTextUtil.adaptFontSize(contentViewHolder.getTvLogoSubTitle(), 2);
        COUIChangeTextUtil.adaptFontSize(contentViewHolder.getTvLogoName(), 4);
        TextView txtStatement = contentViewHolder.getTxtStatement();
        COUIChangeTextUtil.adaptFontSize(txtStatement, 2);
        COUILinkMovementMethod cOUILinkMovementMethod = COUILinkMovementMethod.INSTANCE;
        txtStatement.setMovementMethod(cOUILinkMovementMethod);
        TextView tvStatementProtocol = contentViewHolder.getTvStatementProtocol();
        COUIChangeTextUtil.adaptFontSize(tvStatementProtocol, 2);
        tvStatementProtocol.setMovementMethod(cOUILinkMovementMethod);
        TextView exitButton2 = contentViewHolder.getExitButton();
        if (exitButton2 != null) {
            exitButton2.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    COUIUserStatementDialog.initViewHolderBind$lambda$12$lambda$11(this.f7370a, view);
                }
            });
            COUITextViewCompatUtil.setPressRippleDrawable(exitButton2);
        }
        COUIButton btnConfirm2 = contentViewHolder.getBtnConfirm();
        if (btnConfirm2 != null) {
            btnConfirm2.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    COUIUserStatementDialog.initViewHolderBind$lambda$14$lambda$13(this.f7373a, view);
                }
            });
        }
        contentViewHolder.getSmallLandExitButton().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initViewHolderBind$lambda$16$lambda$15(this.f7374a, view);
            }
        });
        contentViewHolder.getSmallLandConfirmButton().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIUserStatementDialog.initViewHolderBind$lambda$18$lambda$17(this.f7375a, view);
            }
        });
        if (TextUtils.isEmpty(this.protocolText)) {
            contentViewHolder.getScrollTextStatementProtocol().setVisibility(8);
        }
        contentViewHolder.bindBottomButtonWarp();
        contentViewHolder.bindSimpleButtonGroupCtrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initViewHolderBind$lambda$12$lambda$11(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onExitButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initViewHolderBind$lambda$14$lambda$13(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onBottomButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initViewHolderBind$lambda$16$lambda$15(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onExitButtonClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initViewHolderBind$lambda$18$lambda$17(COUIUserStatementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OnButtonClickListener onButtonClickListener = this$0.onButtonClickListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onBottomButtonClick();
        }
    }

    public final CharSequence getAppMessage() {
        return this.appMessage;
    }

    public final CharSequence getAppName() {
        return this.appName;
    }

    public final CharSequence getBottomButtonText() {
        return this.bottomButtonText;
    }

    public final View getCustomView() {
        return this.customView;
    }

    public final View getCustomViewTiny() {
        return this.customViewTiny;
    }

    public final CharSequence getExitButtonText() {
        return this.exitButtonText;
    }

    public final OnItemClickListener getItemClickListener() {
        return this.itemClickListener;
    }

    public final List<COUIUserStatementListItem> getListItems() {
        return this.listItems;
    }

    public final Drawable getLogoDrawable() {
        return this.logoDrawable;
    }

    public final OnButtonClickListener getOnButtonClickListener() {
        return this.onButtonClickListener;
    }

    public final CharSequence getProtocolText() {
        return this.protocolText;
    }

    public final CharSequence getStatement() {
        return this.statement;
    }

    public final CharSequence getTitleText() {
        return this.titleText;
    }

    public final void setAppMessage(CharSequence charSequence) {
        this.appMessage = charSequence;
    }

    public final void setAppName(CharSequence charSequence) {
        this.appName = charSequence;
    }

    public final void setBottomButtonText(CharSequence charSequence) {
        this.bottomButtonText = charSequence;
    }

    public final void setCustomView(View view) {
        this.customView = view;
    }

    public final void setCustomViewTiny(View view) {
        this.customViewTiny = view;
    }

    public final void setExitButtonText(CharSequence charSequence) {
        this.exitButtonText = charSequence;
    }

    @Override // com.coui.appcompat.panel.COUIBottomSheetDialog
    public void setIsShowInMaxHeight(boolean z10) {
        super.setIsShowInMaxHeight(z10);
        this.isFullPage = z10;
    }

    public final void setItemClickListener(OnItemClickListener onItemClickListener) {
        this.itemClickListener = onItemClickListener;
    }

    public final void setListItems(List<COUIUserStatementListItem> list) {
        this.listItems = list;
        this.listViewHolderArray.clear();
        List<COUIUserStatementListItem> list2 = this.listItems;
        if (list2 != null) {
            kotlin.jvm.internal.r.b(list2);
            int size = list2.size();
            for (int i10 = 0; i10 < size; i10++) {
                List<COUIUserStatementListItem> list3 = this.listItems;
                kotlin.jvm.internal.r.b(list3);
                COUIUserStatementListItem cOUIUserStatementListItem = list3.get(i10);
                ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(getContext()).inflate(R$layout.coui_component_statement_list_item, (ViewGroup) null);
                if (constraintLayout != null) {
                    ListItemViewHolder listItemViewHolder = new ListItemViewHolder(this, constraintLayout);
                    TextView title = listItemViewHolder.getTitle();
                    if (title != null) {
                        COUIChangeTextUtil.adaptFontSize(title, 2);
                    }
                    TextView message = listItemViewHolder.getMessage();
                    if (message != null) {
                        COUIChangeTextUtil.adaptFontSize(message, 2);
                    }
                    listItemViewHolder.bindListener(this.itemClickListener);
                    listItemViewHolder.bindItemData(cOUIUserStatementListItem, i10);
                    this.listViewHolderArray.add(listItemViewHolder);
                }
            }
        }
    }

    public final void setLogoDrawable(Drawable drawable) {
        this.logoDrawable = drawable;
    }

    public final void setOnButtonClickListener(OnButtonClickListener onButtonClickListener) {
        this.onButtonClickListener = onButtonClickListener;
    }

    public final void setProtocolText(CharSequence charSequence) {
        this.protocolText = charSequence;
    }

    public final void setStatement(CharSequence charSequence) {
        this.statement = charSequence;
    }

    public final void setTitleText(CharSequence charSequence) {
        this.titleText = charSequence;
    }

    @Override // android.app.Dialog
    public void show() {
        if (COUIResponsiveUtils.isSmallScreenDp(getContext().getResources().getConfiguration().screenWidthDp) && getContext().getResources().getConfiguration().screenWidthDp < COUIStatementPanelStateChangeListener.Companion.getSCREN_DP_MINI_WIDTH().getValue()) {
            setIsInTinyScreen(true, false);
            super.setIsShowInMaxHeight(true);
        }
        super.show();
        Configuration configuration = getContext().getResources().getConfiguration();
        kotlin.jvm.internal.r.d(configuration, "context.resources.configuration");
        checkPanelStatus(configuration);
    }

    @Override // com.coui.appcompat.panel.COUIBottomSheetDialog
    public void updateLayoutWhileConfigChange(Configuration configuration) {
        kotlin.jvm.internal.r.e(configuration, "configuration");
        super.updateLayoutWhileConfigChange(configuration);
        if (getContext().getResources().getConfiguration().screenWidthDp == configuration.screenWidthDp) {
            int i10 = getContext().getResources().getConfiguration().screenHeightDp;
            int i11 = configuration.screenHeightDp;
            if (i10 == i11) {
                int i12 = configuration.screenWidthDp;
                if (i12 == this.oldScreenWidthDp && i11 == this.oldScreenHeightDp) {
                    return;
                }
                this.oldScreenWidthDp = i12;
                this.oldScreenHeightDp = i11;
                checkPanelStatus(configuration);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIUserStatementDialog(Context context, int i10) {
        this(context, i10, 0.0f, 0.0f, 12, null);
        kotlin.jvm.internal.r.e(context, "context");
    }

    public final void setBottomButtonText(int i10) {
        this.bottomButtonText = getContext().getString(i10);
    }

    public final void setExitButtonText(int i10) {
        this.exitButtonText = getContext().getString(i10);
    }

    public final void setProtocolText(int i10) {
        this.protocolText = getContext().getString(i10);
    }

    public final void setStatement(int i10) {
        this.statement = getContext().getString(i10);
    }

    public final void setTitleText(int i10) {
        this.titleText = getContext().getString(i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIUserStatementDialog(Context context, int i10, float f10) {
        this(context, i10, f10, 0.0f, 8, null);
        kotlin.jvm.internal.r.e(context, "context");
    }

    public /* synthetic */ COUIUserStatementDialog(Context context, int i10, float f10, float f11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? R$style.DefaultBottomSheetDialog : i10, (i11 & 4) != 0 ? Float.MIN_VALUE : f10, (i11 & 8) != 0 ? Float.MIN_VALUE : f11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUIUserStatementDialog(final Context context, int i10, float f10, float f11) {
        super(context, i10, f10, f11);
        kotlin.jvm.internal.r.e(context, "context");
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_margin_top_min);
        this.panelPaddingTopMin = dimensionPixelSize;
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_expand_scroll_padding);
        this.expandScrollPadding = dimensionPixelSize2;
        this.expandPanelMarginTop = dimensionPixelSize - dimensionPixelSize2;
        this.scrollTextMaxHeightNormal = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_scroll_text_height_normal);
        this.scrollTextMaxHeight = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_scroll_text_height_max);
        this.panelStartPadding = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_panel_start_padding);
        this.panelEndPadding = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_panel_end_padding);
        this.customPaddingTop = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_custom_padding_top);
        this.messagePaddingTop = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_logo_message_margin_top);
        this.subTitlePaddingTop = context.getResources().getDimensionPixelSize(R$dimen.coui_component_statement_logo_subtitle_margin);
        this.contentPaddingEnd = context.getResources().getDimensionPixelOffset(R$dimen.coui_component_statement_panel_content_item_end_padding);
        this.customLayoutMinHeight = context.getResources().getDimensionPixelOffset(R$dimen.coui_component_statement_custom_layout_min_height);
        this.isFullPage = true;
        this.listViewHolderArray = new ArrayList();
        this.mEnumPanelStatusType = COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.INIT;
        this.changeEnumUIListener = new COUIStatementPanelStateChangeListener() { // from class: com.coui.appcompat.statement.COUIUserStatementDialog$changeEnumUIListener$1
            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void initMINIContentView(Configuration configuration, COUIStatementPanelStateChangeListener.PanelStatusTypeEnum oldPanelStatusTypeEnum) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                kotlin.jvm.internal.r.e(oldPanelStatusTypeEnum, "oldPanelStatusTypeEnum");
                if (oldPanelStatusTypeEnum == COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.MINI) {
                    return;
                }
                if (this.this$0.miniContentViewHolder == null) {
                    this.this$0.miniContentView = LayoutInflater.from(context).inflate(R$layout.coui_component_statement_with_protocol_fixed, (ViewGroup) null);
                    View view = this.this$0.miniContentView;
                    if (view != null) {
                        this.this$0.miniContentViewHolder = new COUIUserStatementDialog.MINIContentViewHolder(view);
                    }
                    COUIUserStatementDialog.MINIContentViewHolder mINIContentViewHolder = this.this$0.miniContentViewHolder;
                    if (mINIContentViewHolder != null) {
                        this.this$0.initMINIView(mINIContentViewHolder);
                    }
                }
                COUIUserStatementDialog cOUIUserStatementDialog = this.this$0;
                cOUIUserStatementDialog.setContentView(cOUIUserStatementDialog.miniContentView);
                this.this$0.getBehavior().setDraggable(false);
                Object parent = this.this$0.getDragableLinearLayout().getDragView().getParent();
                kotlin.jvm.internal.r.c(parent, "null cannot be cast to non-null type android.view.View");
                ((View) parent).setVisibility(8);
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void initNormalContentView(Configuration configuration, COUIStatementPanelStateChangeListener.PanelStatusTypeEnum oldPanelStatusTypeEnum) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                kotlin.jvm.internal.r.e(oldPanelStatusTypeEnum, "oldPanelStatusTypeEnum");
                if (oldPanelStatusTypeEnum == COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.NORMAL) {
                    return;
                }
                if (this.this$0.normalContentViewHolder == null) {
                    this.this$0.normalContentView = LayoutInflater.from(context).inflate(R$layout.coui_component_full_page_statement_with_protocol, (ViewGroup) null);
                    View view = this.this$0.normalContentView;
                    if (view != null) {
                        COUIUserStatementDialog cOUIUserStatementDialog = this.this$0;
                        cOUIUserStatementDialog.normalContentViewHolder = new COUIUserStatementDialog.NormalContentViewHolder(view, context);
                        cOUIUserStatementDialog.initNormalView();
                    }
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder != null) {
                    normalContentViewHolder.bindList(this.this$0.listViewHolderArray);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder2 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder2 != null) {
                    normalContentViewHolder2.bindCustomView(this.this$0.getCustomView());
                }
                COUIUserStatementDialog cOUIUserStatementDialog2 = this.this$0;
                cOUIUserStatementDialog2.setContentView(cOUIUserStatementDialog2.normalContentView);
                this.this$0.getBehavior().setDraggable(false);
                Object parent = this.this$0.getDragableLinearLayout().getDragView().getParent();
                kotlin.jvm.internal.r.c(parent, "null cannot be cast to non-null type android.view.View");
                ((View) parent).setVisibility(8);
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void initSmallLandContentView(Configuration configuration, COUIStatementPanelStateChangeListener.PanelStatusTypeEnum oldPanelStatusTypeEnum) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                kotlin.jvm.internal.r.e(oldPanelStatusTypeEnum, "oldPanelStatusTypeEnum");
                if (oldPanelStatusTypeEnum == COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.SMALL_LAND) {
                    return;
                }
                if (this.this$0.smallLandContentViewHolder == null) {
                    this.this$0.smallLandContentView = LayoutInflater.from(context).inflate(R$layout.coui_component_full_page_statement_with_protocol_small_land, (ViewGroup) null);
                    View view = this.this$0.smallLandContentView;
                    if (view != null) {
                        COUIUserStatementDialog cOUIUserStatementDialog = this.this$0;
                        cOUIUserStatementDialog.smallLandContentViewHolder = new COUIUserStatementDialog.SmallLandContentViewHolder(view, context);
                        cOUIUserStatementDialog.initSmallLandView();
                    }
                }
                COUIUserStatementDialog.SmallLandContentViewHolder smallLandContentViewHolder = this.this$0.smallLandContentViewHolder;
                if (smallLandContentViewHolder != null) {
                    smallLandContentViewHolder.bindList(this.this$0.listViewHolderArray);
                }
                COUIUserStatementDialog.SmallLandContentViewHolder smallLandContentViewHolder2 = this.this$0.smallLandContentViewHolder;
                if (smallLandContentViewHolder2 != null) {
                    smallLandContentViewHolder2.bindCustomView(this.this$0.getCustomView());
                }
                COUIUserStatementDialog cOUIUserStatementDialog2 = this.this$0;
                cOUIUserStatementDialog2.setContentView(cOUIUserStatementDialog2.smallLandContentView);
                this.this$0.getBehavior().setDraggable(false);
                Object parent = this.this$0.getDragableLinearLayout().getDragView().getParent();
                kotlin.jvm.internal.r.c(parent, "null cannot be cast to non-null type android.view.View");
                ((View) parent).setVisibility(8);
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void initSplitScreenContentView(Configuration configuration, COUIStatementPanelStateChangeListener.PanelStatusTypeEnum oldPanelStatusTypeEnum) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                kotlin.jvm.internal.r.e(oldPanelStatusTypeEnum, "oldPanelStatusTypeEnum");
                initNormalContentView(configuration, oldPanelStatusTypeEnum);
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void initTinyContentView(Configuration configuration, COUIStatementPanelStateChangeListener.PanelStatusTypeEnum oldPanelStatusTypeEnum) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                kotlin.jvm.internal.r.e(oldPanelStatusTypeEnum, "oldPanelStatusTypeEnum");
                if (oldPanelStatusTypeEnum == COUIStatementPanelStateChangeListener.PanelStatusTypeEnum.TINY) {
                    return;
                }
                if (this.this$0.tinyContentViewHolder == null) {
                    this.this$0.tinyContentView = LayoutInflater.from(context).inflate(R$layout.coui_component_statement_with_protocol_fixed_tiny, (ViewGroup) null);
                    View view = this.this$0.tinyContentView;
                    if (view != null) {
                        this.this$0.tinyContentViewHolder = new COUIUserStatementDialog.TinyContentViewHolder(view);
                    }
                    COUIUserStatementDialog.TinyContentViewHolder tinyContentViewHolder = this.this$0.tinyContentViewHolder;
                    if (tinyContentViewHolder != null) {
                        this.this$0.initTinyView(tinyContentViewHolder);
                    }
                }
                COUIUserStatementDialog cOUIUserStatementDialog = this.this$0;
                cOUIUserStatementDialog.setContentView(cOUIUserStatementDialog.tinyContentView);
                this.this$0.getBehavior().setDraggable(false);
                COUIPanelBarView panelBarView = this.this$0.getDragableLinearLayout().getPanelBarView();
                if (panelBarView != null) {
                    panelBarView.setVisibility(8);
                }
                this.this$0.getDragableLinearLayout().getDragView().setVisibility(8);
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void updateMINIContentView(Configuration configuration) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                COUIUserStatementDialog.MINIContentViewHolder mINIContentViewHolder = this.this$0.miniContentViewHolder;
                if (mINIContentViewHolder != null) {
                    Context context2 = this.this$0.getContext();
                    kotlin.jvm.internal.r.d(context2, "getContext()");
                    mINIContentViewHolder.refreshMINITextSize(configuration, context2);
                }
                COUIUserStatementDialog.MINIContentViewHolder mINIContentViewHolder2 = this.this$0.miniContentViewHolder;
                if (mINIContentViewHolder2 != null) {
                    Context context3 = this.this$0.getContext();
                    kotlin.jvm.internal.r.d(context3, "getContext()");
                    mINIContentViewHolder2.refreshSimpleButtonGroupCtrl(configuration, context3);
                }
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void updateNormalContentView(Configuration configuration) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder != null) {
                    COUIUserStatementDialog cOUIUserStatementDialog = this.this$0;
                    cOUIUserStatementDialog.addOnLayoutChangeListenerToScrollText(cOUIUserStatementDialog.getStatement(), cOUIUserStatementDialog.getProtocolText(), normalContentViewHolder);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder2 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder2 != null) {
                    normalContentViewHolder2.updateNormalFoldingScrollUI();
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder3 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder3 != null) {
                    normalContentViewHolder3.updateScrollTextMaxHeight(this.this$0.getListItems(), this.this$0.getCustomView(), configuration, this.this$0.scrollTextMaxHeightNormal, this.this$0.scrollTextMaxHeight, context);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder4 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder4 != null) {
                    normalContentViewHolder4.updateLayoutUiVisibleState(this.this$0.getListItems(), this.this$0.getCustomView(), this.this$0.messagePaddingTop, this.this$0.customPaddingTop, this.this$0.subTitlePaddingTop);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder5 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder5 != null) {
                    View contentView = this.this$0.getContentView();
                    kotlin.jvm.internal.r.d(contentView, "contentView");
                    normalContentViewHolder5.refreshBottomButtonWarp(configuration, contentView);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder6 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder6 != null) {
                    View contentView2 = this.this$0.getContentView();
                    kotlin.jvm.internal.r.d(contentView2, "contentView");
                    normalContentViewHolder6.refreshSimpleButtonGroupCtrl(configuration, contentView2);
                }
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void updateSmallLandContentView(Configuration configuration) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                COUIUserStatementDialog.SmallLandContentViewHolder smallLandContentViewHolder = this.this$0.smallLandContentViewHolder;
                if (smallLandContentViewHolder != null) {
                    COUIUserStatementDialog cOUIUserStatementDialog = this.this$0;
                    cOUIUserStatementDialog.addOnLayoutChangeListenerToScrollText(cOUIUserStatementDialog.getStatement(), cOUIUserStatementDialog.getProtocolText(), smallLandContentViewHolder);
                }
                COUIUserStatementDialog.SmallLandContentViewHolder smallLandContentViewHolder2 = this.this$0.smallLandContentViewHolder;
                if (smallLandContentViewHolder2 != null) {
                    smallLandContentViewHolder2.updateLayoutUiVisibleState(this.this$0.getListItems(), this.this$0.getCustomView(), this.this$0.messagePaddingTop, this.this$0.customPaddingTop, this.this$0.subTitlePaddingTop);
                }
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void updateSplitScreenContentView(Configuration configuration) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder != null) {
                    COUIUserStatementDialog cOUIUserStatementDialog = this.this$0;
                    cOUIUserStatementDialog.addOnLayoutChangeListenerToScrollText(cOUIUserStatementDialog.getStatement(), cOUIUserStatementDialog.getProtocolText(), normalContentViewHolder);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder2 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder2 != null) {
                    normalContentViewHolder2.updateExpandScrollUI(this.this$0.customLayoutMinHeight);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder3 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder3 != null) {
                    normalContentViewHolder3.updateSplitScreenScrollTextMaxHeight();
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder4 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder4 != null) {
                    normalContentViewHolder4.updateLayoutUiVisibleState(this.this$0.getListItems(), this.this$0.getCustomView(), this.this$0.messagePaddingTop, this.this$0.customPaddingTop, this.this$0.subTitlePaddingTop);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder5 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder5 != null) {
                    View contentView = this.this$0.getContentView();
                    kotlin.jvm.internal.r.d(contentView, "contentView");
                    normalContentViewHolder5.refreshBottomButtonWarp(configuration, contentView);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder6 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder6 != null) {
                    View contentView2 = this.this$0.getContentView();
                    kotlin.jvm.internal.r.d(contentView2, "contentView");
                    normalContentViewHolder6.refreshSimpleButtonGroupCtrl(configuration, contentView2);
                }
                COUIUserStatementDialog.NormalContentViewHolder normalContentViewHolder7 = this.this$0.normalContentViewHolder;
                if (normalContentViewHolder7 != null) {
                    normalContentViewHolder7.updateSplitScreenLogoPaddingTop(this.this$0.expandPanelMarginTop, this.this$0.expandScrollPadding, this.this$0.expandScrollPadding, this.this$0.panelStartPadding, this.this$0.panelEndPadding, this.this$0.contentPaddingEnd);
                }
            }

            @Override // com.coui.appcompat.statement.COUIStatementPanelStateChangeListener
            public void updateTinyContentView(Configuration configuration) {
                kotlin.jvm.internal.r.e(configuration, "configuration");
                COUIUserStatementDialog.TinyContentViewHolder tinyContentViewHolder = this.this$0.tinyContentViewHolder;
                if (tinyContentViewHolder != null) {
                    tinyContentViewHolder.refreshTinyContentViewHolder(this.this$0.getCustomViewTiny());
                }
            }
        };
        setIsShowInMaxHeight(true);
        setCanceledOnTouchOutside(false);
        this.isLargeScreenLimitMaxSize = true;
    }
}
