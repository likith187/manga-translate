.class public Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/tips/def/IDefaultTopTips;


# static fields
.field public static final ACTION_ID:I = 0x3

.field public static final CLOSE_ID:I = 0x4

.field public static final ICON_ID:I = 0x0

.field public static final IGNORE_ID:I = 0x2

.field public static final IMAGE_BTN_TYPE:I = 0x1

.field private static final TEXT_BTN_ACTION_WRAP:I = 0x1

.field private static final TEXT_BTN_BOTH_WRAP:I = 0x3

.field private static final TEXT_BTN_DIVIDED:I = 0x0

.field private static final TEXT_BTN_IGNORE_WRAP:I = 0x2

.field public static final TEXT_BTN_TYPE:I = 0x0

.field public static final TITLE_ID:I = 0x1


# instance fields
.field private final end:Landroidx/constraintlayout/widget/c;

.field private mAction:Landroid/widget/TextView;

.field private mClose:Landroid/widget/ImageView;

.field private mCloseBtnClickListener:Landroid/view/View$OnClickListener;

.field private mContentLines:I

.field private mIgnore:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mIsChangeText:Z

.field private mMultiTitleTopMargin:I

.field private mNegativeClickListener:Landroid/view/View$OnClickListener;

.field private mOnLinesChangedListener:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

.field private mPositiveClickListener:Landroid/view/View$OnClickListener;

.field private mTextBtnRuleFlag:I

.field private mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mType:I

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIsChangeText:Z

    .line 6
    new-instance p2, Landroidx/constraintlayout/widget/c;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mContentLines:I

    .line 8
    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTextBtnRuleFlag:I

    .line 9
    invoke-virtual {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mNegativeClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mPositiveClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private changeBtnTypeImpl()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->o(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->title:I

    sget v2, Lcom/support/tips/R$id;->close:I

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->title:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/tips/R$dimen;->coui_toptips_view_btn_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->title:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    sget v4, Lcom/support/tips/R$id;->title:I

    const/4 v5, 0x3

    invoke-virtual {v0, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {v0, v1, v5, v3}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    sget v4, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    invoke-virtual {v0, v1, v5, v3}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->close:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private changeTextTypeImpl()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->o(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-direct {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->isNeedMultiText()Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v5, v1, v2, v1}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v6, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v6, v4, v2, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v6, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v6, v4, v5, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v6, Lcom/support/tips/R$id;->title:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/tips/R$dimen;->coui_toptips_view_title_end_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v0, v6, v1, v7}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    sget v6, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v3, v6, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/tips/R$dimen;->coui_toptips_view_btn_top_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v1, v3, v6}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/tips/R$dimen;->coui_toptips_view_multi_btn_text_bottom_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v1, v4, v6}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    sget v6, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v3, v6, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/tips/R$dimen;->coui_toptips_view_btn_top_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v1, v3, v6}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/tips/R$dimen;->coui_toptips_view_multi_btn_text_bottom_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v1, v4, v6}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->image:I

    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->image:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->image:I

    invoke-direct {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->getImageMarginTopMultiText()I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Landroidx/constraintlayout/widget/c;->U(III)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v5, Lcom/support/tips/R$id;->title:I

    sget v6, Lcom/support/tips/R$id;->ignore:I

    const/4 v7, 0x6

    invoke-virtual {v0, v5, v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v5, v4, v2, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/tips/R$dimen;->coui_toptips_view_btn_margin_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v5, v1, v6}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v3, v5, v3}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {v0, v1, v4, v2}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v3, v5, v3}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    invoke-virtual {v0, v1, v4, v2}, Landroidx/constraintlayout/widget/c;->U(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->image:I

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v3, v5, v3}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->image:I

    sget v5, Lcom/support/tips/R$id;->title:I

    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->image:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/constraintlayout/widget/c;->U(III)V

    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mOnLinesChangedListener:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mContentLines:I

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mContentLines:I

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mOnLinesChangedListener:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

    invoke-interface {v1, v0}, Lcom/coui/appcompat/tips/def/OnLinesChangedListener;->onLinesChanged(I)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->close:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->ignore:I

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    sget v1, Lcom/support/tips/R$id;->action:I

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v4

    :cond_4
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/c;->X(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->end:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private getImageMarginTopMultiText()I
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    div-float/2addr v3, v1

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    float-to-int v0, v3

    iget p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mMultiTitleTopMargin:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private isNeedMultiText()Z
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    :goto_2
    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v5

    if-ne v5, v1, :cond_7

    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/support/tips/R$dimen;->coui_toptips_view_btn_margin:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    if-lt v3, v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1

    :cond_7
    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/support/tips/R$dimen;->coui_toptips_view_btn_margin:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    if-lt v0, v3, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    return v1
.end method

.method private remeasureTextBtnWidth(Landroid/widget/TextView;I)V
    .locals 3

    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p2, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-static {p0, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private setBtnColorImpl(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setBtnColorImpl parameter \'which\' is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private setBtnDrawableImpl(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->changeType(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setBtnDrawableImpl parameter \'which\' is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setBtnTextImpl(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->changeType(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setBtnTextImpl parameter \'which\' is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->changeType(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final changeType(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->changeTextTypeImpl()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->changeBtnTypeImpl()V

    :goto_0
    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mType:I

    return-void
.end method

.method public getAction()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    return-object p0
.end method

.method public getIgnore()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    return-object p0
.end method

.method protected init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/tips/R$layout;->coui_default_toptips:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/support/tips/R$id;->image:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mImage:Landroid/widget/ImageView;

    sget v0, Lcom/support/tips/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    iput-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    sget v0, Lcom/support/tips/R$id;->ignore:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$1;-><init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/support/tips/R$id;->action:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;-><init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/support/tips/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$3;-><init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tips/R$dimen;->coui_toptips_view_multi_title_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mMultiTitleTopMargin:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mType:I

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIsChangeText:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIsChangeText:Z

    invoke-direct {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->changeTextTypeImpl()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    shr-int/lit8 p2, v0, 0x1

    const/4 v1, 0x1

    if-gt p1, p2, :cond_0

    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTextBtnRuleFlag:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTextBtnRuleFlag:I

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/4 v2, 0x2

    if-gt p1, p2, :cond_1

    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTextBtnRuleFlag:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTextBtnRuleFlag:I

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTextBtnRuleFlag:I

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->remeasureTextBtnWidth(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->remeasureTextBtnWidth(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mAction:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->remeasureTextBtnWidth(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIgnore:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->remeasureTextBtnWidth(Landroid/widget/TextView;I)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTextBtnRuleFlag:I

    return-void
.end method

.method public setCloseBtnListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCloseDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->setBtnDrawableImpl(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->setBtnTextImpl(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonColor(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->setBtnColorImpl(II)V

    return-void
.end method

.method public setNegativeButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mNegativeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLinesChangedListener(Lcom/coui/appcompat/tips/def/OnLinesChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mOnLinesChangedListener:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->setBtnTextImpl(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonColor(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->setBtnColorImpl(II)V

    return-void
.end method

.method public setPositiveButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mPositiveClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setStartIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTipsText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mIsChangeText:Z

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTipsTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setTextColor(I)V

    return-void
.end method

.method public startRoll()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->continueRoll()V

    return-void
.end method

.method public stopRoll()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->stopRoll()V

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->mTitle:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setMarqueeEnable(Z)V

    return-void
.end method
