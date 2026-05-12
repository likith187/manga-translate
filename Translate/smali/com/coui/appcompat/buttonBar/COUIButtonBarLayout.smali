.class public Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final BUTTON_FADE_IN_DURATION:I = 0x64

.field private static final BUTTON_FADE_OUT_DURATION:I = 0x168

.field public static final NO_RECOMMEND_ID:I = -0x1

.field private static final ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUIButtonBarLayout"

.field private static final THREE:I = 0x3

.field private static final TWO:I = 0x2

.field private static final ZERO:I


# instance fields
.field private mButDivider1:Landroid/view/View;

.field private mButDivider2:Landroid/view/View;

.field private mButDividerSizeHorizontalButton:I

.field private mButDividerSizeVerticalButton:I

.field private mContentPanel:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCouiBottomAlertDialogButtonbarMargintop:I

.field private mCustomPanel:Landroid/view/View;

.field private mDialogMaxWidth:I

.field private mDividerMarginHorizontalDefault:I

.field private mDynamicLayout:Z

.field private mHorButDividerVerMarginBottom:I

.field private mHorButDividerVerMarginTop:I

.field private mHorButHorPadding:I

.field private mHorButHorPaddingWithRecommend:I

.field private mHorButPaddingBottom:I

.field private mHorButPaddingTop:I

.field private mHorButPanelMinHeight:I

.field private mHorButVerPaddingWithRecommend:I

.field private mHorizontalButtonPaddingBottom:I

.field private mHorizontalButtonPaddingTop:I

.field private mIsVerticalButton:Z

.field private mNegButton:Lcom/coui/appcompat/button/COUIButton;

.field private mNeuButton:Lcom/coui/appcompat/button/COUIButton;

.field private mNonRecommendButtonMarginVertical:I

.field private mParentView:Landroid/view/View;

.field private mPosButton:Lcom/coui/appcompat/button/COUIButton;

.field private mRecomentButtonPaddingVertical:I

.field private mRecomentButtonPaddingVerticalMultiline:I

.field private mRecommendButtonHeight:I

.field private mRecommendButtonId:I

.field private mRecommendButtonMarginHorizontal:I

.field private mSetTopMarginFlag:Z

.field private mShowDivider:Z

.field private mShowDividerWhenHasItems:Z

.field private mTopPanel:Landroid/view/View;

.field private mVerButDividerHorMargin:I

.field private mVerButMinHeightBottom:I

.field private mVerButMinHeightNormal:I

.field private mVerButtonVecPaddingNew:I

.field private mVerCenterButVerPaddingBottomExtra:I

.field private mVerPaddingBottom:I

.field private mVerPaddingBottomExtraNew:I

.field private mVerPaddingTopExtraNew:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDivider:Z

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDynamicLayout:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    .line 5
    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mSetTopMarginFlag:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDividerWhenHasItems:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDivider:Z

    .line 10
    iput-boolean p3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDynamicLayout:Z

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    .line 12
    iput-boolean p3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mSetTopMarginFlag:Z

    const/4 p3, 0x0

    .line 13
    iput-boolean p3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDividerWhenHasItems:Z

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyRecommendLayout(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecomentButtonPaddingVertical:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecomentButtonPaddingVerticalMultiline:I

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButHorPaddingWithRecommend:I

    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mIsVerticalButton:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNonRecommendButtonMarginVertical:I

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    if-eq p1, v3, :cond_3

    iget-object v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    if-ne p1, v4, :cond_1

    invoke-direct {p0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingBottomExtraNew:I

    add-int/2addr v3, v2

    :goto_1
    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonHeight:I

    invoke-virtual {p1, v4}, Landroid/view/View;->setMinimumHeight(I)V

    iget p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonMarginHorizontal:I

    invoke-virtual {v1, p0, v2, p0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyRecommendStyle(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getDrawableColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$color;->coui_transparence:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorContainerTheme:I

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$color;->coui_btn_default_text_color:I

    invoke-static {v0, v1}, Lr/a;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->setAnimType(I)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->setScaleEnable(Z)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->setAnimEnable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDisable:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/button/COUIButton;->setDisabledColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Lcom/coui/appcompat/button/COUIButton;->setAnimType(I)V

    :goto_0
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/button/COUIButton;->setDrawableRadius(I)V

    return-void
.end method

.method private getBtnTextMeasureLength(Landroid/widget/Button;)I
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->isAllCaps()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hasContent(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private hideAllDivider()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_button_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButHorPadding:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_button_horizontal_padding_with_recommend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButHorPaddingWithRecommend:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_button_vertical_padding_with_recommend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButVerPaddingWithRecommend:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_button_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButPaddingTop:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_button_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButPaddingBottom:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_vertical_button_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightNormal:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_center_alert_dialog_vertical_button_paddingbottom_vertical_extra:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerCenterButVerPaddingBottomExtra:I

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightNormal:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightBottom:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_horizontal_button_margin_recommend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButDividerHorMargin:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_top_extra_divider_new:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButDividerVerMarginTop:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_bottom_extra_divider_new:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButDividerVerMarginBottom:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_button_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButPanelMinHeight:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_dialog_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDialogMaxWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$dimen;->coui_delete_alert_dialog_divider_height_horizontalbutton:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDividerSizeHorizontalButton:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/support/dialog/R$styleable;->COUIButtonBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/dialog/R$styleable;->COUIButtonBarLayout_buttonBarShowDivider:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDivider:Z

    sget p2, Lcom/support/dialog/R$styleable;->COUIButtonBarLayout_buttonBarDividerSize:I

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/dialog/R$dimen;->coui_delete_alert_dialog_divider_height_verticalbutton:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDividerSizeVerticalButton:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_top_extra_new:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingTopExtraNew:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingBottomExtraNew:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical_new:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButtonVecPaddingNew:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_top_extra_new:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingTop:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_bottom_extra_new:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingBottom:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_horizontal_button_margin_default:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDividerMarginHorizontalDefault:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_horizontal_button_margin_recommend:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonMarginHorizontal:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_recommend_button_padding_vertical:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecomentButtonPaddingVertical:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_recommend_button_padding_vertical_multi_line:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecomentButtonPaddingVerticalMultiline:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_margin_nonrecommend:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNonRecommendButtonMarginVertical:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_buttonbar_margintop:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mCouiBottomAlertDialogButtonbarMargintop:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_button_recommend_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initChildView()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    sget v0, Lcom/support/dialog/R$id;->coui_dialog_button_divider_1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    sget v0, Lcom/support/dialog/R$id;->coui_dialog_button_divider_2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private initParentView()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContentPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mCustomPanel:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mParentView:Landroid/view/View;

    sget v1, Lcom/support/dialog/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mTopPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mParentView:Landroid/view/View;

    sget v1, Lcom/support/dialog/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContentPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mParentView:Landroid/view/View;

    sget v1, Lcom/support/dialog/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mCustomPanel:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private isRecommendButton(Landroid/widget/Button;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVertical()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needSetButVertical(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDividerSizeVerticalButton:I

    mul-int/2addr v2, v3

    sub-int/2addr p1, v2

    div-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButHorPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getBtnTextMeasureLength(Landroid/widget/Button;)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getBtnTextMeasureLength(Landroid/widget/Button;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getBtnTextMeasureLength(Landroid/widget/Button;)I

    move-result p0

    if-gt v0, p1, :cond_1

    if-gt v2, p1, :cond_1

    if-le p0, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private resetHorButsPadding()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingTop:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setPaddingTop(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingBottom:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setPaddingBottom(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingTop:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setPaddingTop(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingBottom:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setPaddingBottom(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingTop:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setPaddingTop(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingBottom:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setPaddingBottom(Landroid/view/View;I)V

    return-void
.end method

.method private resetHorDividerVisibility()V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hideAllDivider()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    filled-new-array {v0, v1}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hideAllDivider()V

    :goto_1
    return-void
.end method

.method private resetVerButsPadding()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButtonVecPaddingNew:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingTopExtraNew:I

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButtonVecPaddingNew:I

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingBottomExtraNew:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingTop:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorizontalButtonPaddingBottom:I

    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButPanelMinHeight:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButtonVecPaddingNew:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingTopExtraNew:I

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingBottomExtraNew:I

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButtonVecPaddingNew:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingTopExtraNew:I

    add-int/2addr v1, v0

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingBottomExtraNew:I

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_8
    return-void
.end method

.method private resetVerDividerVisibility()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hideAllDivider()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    filled-new-array {v0, v1}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDividerWhenHasItems:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hideAllDivider()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showDivider([Landroid/view/View;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hideAllDivider()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hideAllDivider()V

    :goto_0
    return-void
.end method

.method private resetVerPaddingBottom()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private resortButton()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setButHorizontal(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButHorPadding:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButPaddingTop:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButPaddingBottom:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    if-eq v4, v2, :cond_1

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButHorPaddingWithRecommend:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButVerPaddingWithRecommend:I

    move v3, v1

    :cond_1
    iget p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButPanelMinHeight:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1, v0, v1, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setButtonsHorizontal()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setHorButDivider1()V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setButHorizontal(Lcom/coui/appcompat/button/COUIButton;)V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setHorButDivider2()V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setButHorizontal(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setButHorizontal(Lcom/coui/appcompat/button/COUIButton;)V

    return-void
.end method

.method private setButtonsVertical()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setOrientation(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setNeuButVertical()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButDivider1()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setPosButVertical()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButDivider2()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setNegButVertical()V

    return-void
.end method

.method private setHorButDivider1()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDividerSizeHorizontalButton:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButDividerVerMarginTop:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButDividerVerMarginBottom:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setHorButDivider2()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDividerSizeHorizontalButton:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButDividerVerMarginTop:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mHorButDividerVerMarginBottom:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setNegButVertical()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightBottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setNeuButVertical()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightBottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightNormal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPaddingBottom(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setPaddingTop(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setPosButVertical()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightNormal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButMinHeightBottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVerButDivider1()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDividerSizeVerticalButton:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    if-eq v2, v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDividerMarginHorizontalDefault:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDividerMarginHorizontalDefault:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVerButDivider2()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDividerSizeVerticalButton:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    if-eq v2, v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDividerMarginHorizontalDefault:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDividerMarginHorizontalDefault:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showButton()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showButtonParent(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showButtonParent(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showButtonParent(Lcom/coui/appcompat/button/COUIButton;)V

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->applyRecommendStyle(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->applyRecommendStyle(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->applyRecommendStyle(Lcom/coui/appcompat/button/COUIButton;)V

    :cond_0
    return-void
.end method

.method private showButtonParent(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private varargs showDivider([Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hideAllDivider()V

    iget-boolean p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDivider:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->initParentView()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->showButton()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->initChildView()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDynamicLayout:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDialogMaxWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->needSetButVertical(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mIsVerticalButton:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setButtonsVertical()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->resetVerButsPadding()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->resetVerDividerVisibility()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->resetVerPaddingBottom()V

    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mSetTopMarginFlag:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mCouiBottomAlertDialogButtonbarMargintop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mPosButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->applyRecommendLayout(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNegButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->applyRecommendLayout(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mNeuButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->applyRecommendLayout(Lcom/coui/appcompat/button/COUIButton;)V

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setButtonsHorizontal()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->resetHorButsPadding()V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->resetHorDividerVisibility()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public setDynamicLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mDynamicLayout:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->resortButton()V

    :cond_0
    return-void
.end method

.method public setRecommendButtonId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mRecommendButtonId:I

    return-void
.end method

.method public setShowDividerWhenHasItems(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mShowDividerWhenHasItems:Z

    return-void
.end method

.method public setTopMarginFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mSetTopMarginFlag:Z

    return-void
.end method

.method public setVerButDividerVerMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVerButPaddingOffset(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVerButVerPadding(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVerNegButVerPaddingOffset(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVerPaddingBottom(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->mVerPaddingBottom:I

    return-void
.end method
