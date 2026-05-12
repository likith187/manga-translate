.class public Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;
    }
.end annotation


# instance fields
.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDefStyleParams:[I

.field private mDismissIv:Landroid/widget/ImageView;

.field private mMode:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mToolTipsAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDefStyleParams:[I

    .line 4
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;->access$000(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;-><init>(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;)Lcom/coui/appcompat/tooltips/IToolTipsAction;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mToolTipsAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDismissIv:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public dismissWindow()V
    .locals 0

    return-void
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDefStyleParams()[I
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDefStyleParams:[I

    sget v3, Lcom/support/tips/R$attr;->couiToolTipsStyle:I

    aput v3, v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/support/tips/R$style;->COUIToolTips_Dark:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/support/tips/R$style;->COUIToolTips:I

    :goto_0
    aput v2, v0, v1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDefStyleParams:[I

    sget v3, Lcom/support/tips/R$attr;->couiToolTipsDetailFloatingStyle:I

    aput v3, v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/support/tips/R$style;->COUIToolTips_DetailFloating_Dark:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/support/tips/R$style;->COUIToolTips_DetailFloating:I

    :goto_1
    aput v2, v0, v1

    :goto_2
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDefStyleParams:[I

    return-object p0
.end method

.method public getDismissIv()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDismissIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/support/tips/R$layout;->coui_tool_tips_layout:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/tips/R$dimen;->tool_tips_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getRealWidth(ILandroid/view/ViewGroup;)I
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public hideDismissView()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDismissIv:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initBubbleStyle(Landroid/view/ViewGroup;)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/tips/R$styleable;->COUIToolTips:[I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDefStyleParams:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutGravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginStart:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v4, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginTop:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v5, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginEnd:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    sget v6, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginBottom:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    sget v7, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContentTextColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lcom/support/tips/R$id;->contentTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v0, Lcom/support/tips/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mMode:I

    if-nez v2, :cond_0

    sget v2, Lcom/support/tips/R$dimen;->tool_tips_content_text_size:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/support/tips/R$dimen;->detail_floating_content_text_size:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget v0, Lcom/support/tips/R$id;->dismissIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDismissIv:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mMode:I

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDismissIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$1;-><init>(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tips/R$dimen;->couiToolTipsCancelButtonInsects:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mDismissIv:Landroid/widget/ImageView;

    new-instance v2, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;-><init>(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;Landroid/view/ViewGroup;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshBubbleStyle(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setContentTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->setContentTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setContentTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setToolTipsAction(Lcom/coui/appcompat/tooltips/IToolTipsAction;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mToolTipsAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mMode:I

    return-void
.end method

.method public sizeBubbleStyle(Landroid/view/ViewGroup;I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p2, p1

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, p1

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
