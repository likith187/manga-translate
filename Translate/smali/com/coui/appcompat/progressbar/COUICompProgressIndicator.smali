.class public Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final LARGE_ANIMATION:I = 0x0

.field public static final LARGE_ANIMATION_WITH_TEXT_VERTICAL:I = 0x3

.field public static final SMALL_ANIMATION:I = 0x1

.field public static final SMALL_ANIMATION_WITH_TEXT_HORIZONTAL:I = 0x2

.field public static final SMALL_ANIMATION_WITH_TEXT_VERTICAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "COUICompProgressIndicator"

.field private static final TEXTSIZE_DP_VALUE:I = 0xc


# instance fields
.field private mAutoPlay:Z

.field private mContext:Landroid/content/Context;

.field private mCouiLargeLoadingTextviewTopMargin:I

.field private mCouiLoadingTextviewBottomMargin:I

.field private mCouiLoadingTextviewLeftMargin:I

.field private mCouiLoadingType:I

.field private mCouiLottieLoadingJsonName:Ljava/lang/String;

.field private mCouiLottieLoadingRawRes:I

.field private mCouiLottieLoadingViewHeight:I

.field private mCouiLottieLoadingViewHeightMax:I

.field private mCouiLottieLoadingViewWidth:I

.field private mCouiLottieLoadingViewWidthMax:I

.field private mCouiSmallLoadingTextviewTopMargin:I

.field private mCouiSmallLottieLoadingViewHeight:I

.field private mCouiSmallLottieLoadingViewWidth:I

.field private mDefaultType:I

.field private mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mLoadingTips:Ljava/lang/String;

.field private mNeedRePlay:Z

.field private mRepeatCount:I

.field private mTextFix:Z

.field private mTipsTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 5
    iput p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mDefaultType:I

    .line 6
    iput-boolean p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTextFix:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingRawRes:I

    .line 8
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mRepeatCount:I

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mAutoPlay:Z

    .line 10
    iput-boolean p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mNeedRePlay:Z

    .line 11
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/progressbar/R$dimen;->coui_loading_max_large_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewWidthMax:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/progressbar/R$dimen;->coui_loading_max_large_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewHeightMax:I

    .line 14
    sget-object v2, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiLoadingType:I

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mDefaultType:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingType:I

    .line 16
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_loadingTips:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mLoadingTips:Ljava/lang/String;

    .line 17
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiLottieLoadingJsonName:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingJsonName:Ljava/lang/String;

    .line 18
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiLottieLoadingRawRes:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingRawRes:I

    .line 19
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiRepeatCount:I

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mRepeatCount:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mRepeatCount:I

    .line 20
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiAutoPlay:I

    iget-boolean p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mAutoPlay:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mAutoPlay:Z

    .line 21
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiLottieLoadingViewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/progressbar/R$dimen;->coui_loading_large_width:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewWidth:I

    .line 22
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiLottieLoadingViewHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/progressbar/R$dimen;->coui_loading_large_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewHeight:I

    .line 23
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiSmallLottieLoadingViewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/progressbar/R$dimen;->coui_loading_small_width:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewWidth:I

    .line 24
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiSmallLottieLoadingViewHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/progressbar/R$dimen;->coui_loading_small_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewHeight:I

    .line 25
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewWidth:I

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewWidthMax:I

    if-le p3, p4, :cond_0

    .line 26
    iput p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewWidth:I

    .line 27
    sget-object p3, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->TAG:Ljava/lang/String;

    const-string p4, "couiLottieLoadingViewWidth Cannot be larger than 40 dp"

    invoke-static {p3, p4}, Lcom/coui/appcompat/log/COUILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewHeight:I

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewHeightMax:I

    if-le p3, p4, :cond_1

    .line 29
    iput p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewHeight:I

    .line 30
    sget-object p3, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->TAG:Ljava/lang/String;

    const-string p4, "couiLottieLoadingViewHeight Cannot be larger than 40 dp"

    invoke-static {p3, p4}, Lcom/coui/appcompat/log/COUILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewWidth:I

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewWidthMax:I

    if-le p3, p4, :cond_2

    .line 32
    iput p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewWidth:I

    .line 33
    sget-object p3, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->TAG:Ljava/lang/String;

    const-string p4, "couiSmallLottieLoadingViewWidth Cannot be larger than 40 dp"

    invoke-static {p3, p4}, Lcom/coui/appcompat/log/COUILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_2
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewHeight:I

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewHeightMax:I

    if-le p3, p4, :cond_3

    .line 35
    iput p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewHeight:I

    .line 36
    sget-object p3, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->TAG:Ljava/lang/String;

    const-string p4, "couiSmallLottieLoadingViewHeight Cannot be larger than 40 dp"

    invoke-static {p3, p4}, Lcom/coui/appcompat/log/COUILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_3
    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingJsonName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 38
    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mContext:Landroid/content/Context;

    sget p4, Lcom/support/appcompat/R$attr;->couiRotatingSpinnerJsonName:I

    invoke-static {p3, p4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingJsonName:Ljava/lang/String;

    .line 39
    :cond_4
    sget p3, Lcom/support/progressbar/R$styleable;->COUICompProgressIndicator_couiTextFix:I

    iget-boolean p4, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTextFix:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTextFix:Z

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_loading_textview_left_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingTextviewLeftMargin:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_loading_textview_top_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLargeLoadingTextviewTopMargin:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_loading_textview_top_margin_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLoadingTextviewTopMargin:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/progressbar/R$dimen;->coui_loading_textview_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingTextviewBottomMargin:I

    const/16 p1, 0x11

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private addEffectiveView(Z)V
    .locals 2

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mRepeatCount:I

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewWidth:I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingViewHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewWidth:I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLottieLoadingViewHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingJsonName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingJsonName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLottieLoadingRawRes:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mAutoPlay:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    :cond_3
    return-void
.end method

.method private addSubView()V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addEffectiveView(Z)V

    invoke-direct {p0, v1}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addTipsTextView(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addEffectiveView(Z)V

    invoke-direct {p0, v1}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addTipsTextView(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v2}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addEffectiveView(Z)V

    invoke-direct {p0, v2}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addTipsTextView(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addEffectiveView(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addEffectiveView(Z)V

    :goto_0
    return-void
.end method

.method private addTipsTextView(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget p1, Lcom/support/progressbar/R$style;->Widget_COUI_COUICompProgressIndicator_TipsTextView_Vertical:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/support/progressbar/R$style;->Widget_COUI_COUICompProgressIndicator_TipsTextView:I

    :goto_0
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTipsTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mLoadingTips:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiSmallLoadingTextviewTopMargin:I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingTextviewBottomMargin:I

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLargeLoadingTextviewTopMargin:I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingTextviewBottomMargin:I

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mCouiLoadingTextviewLeftMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTextFix:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTipsTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->addSubView()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mNeedRePlay:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->w()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mNeedRePlay:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mNeedRePlay:Z

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->u()V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mNeedRePlay:Z

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mEffectViewAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->u()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mNeedRePlay:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->w()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mNeedRePlay:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setLoadingTips(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->setLoadingTips(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadingTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mLoadingTips:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->mTipsTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->TAG:Ljava/lang/String;

    const-string p1, "This method only takes effect when mCouiLoadingType is SMALL_ANIMATION_WITH_TEXT_HORIZONTAL \u3001LARGE_ANIMATION_WITH_TEXT_VERTICAL\u3001SMALL_ANIMATION_WITH_TEXT_VERTICAL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
