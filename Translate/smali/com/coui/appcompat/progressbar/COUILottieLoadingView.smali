.class public Lcom/coui/appcompat/progressbar/COUILottieLoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/progressbar/R$attr;->couiLottieLoadingViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 5
    sget-object v1, Lcom/support/progressbar/R$styleable;->COUILottieLoadingView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget p3, Lcom/support/progressbar/R$styleable;->COUILottieLoadingView_couiLottieLoadingViewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_lottie_loading_view_large_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 7
    sget v0, Lcom/support/progressbar/R$styleable;->COUILottieLoadingView_couiLottieLoadingViewHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/progressbar/R$dimen;->coui_lottie_loading_view_large_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 8
    sget v1, Lcom/support/progressbar/R$styleable;->COUILottieLoadingView_couiLottieLoadingJsonName:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/progressbar/R$string;->coui_lottie_loading_large_json:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    new-instance p2, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {p2, p1}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 12
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 13
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 15
    invoke-virtual {p2, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    .line 16
    invoke-virtual {p2, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/coui/appcompat/progressbar/COUILottieLoadingView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView$1;-><init>(Lcom/coui/appcompat/progressbar/COUILottieLoadingView;)V

    invoke-virtual {p2, p1}, Lcom/oplus/anim/EffectiveAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/progressbar/COUILottieLoadingView;)Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/progressbar/COUILottieLoadingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->pauseAnimation()V

    return-void
.end method

.method private pauseAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->u()V

    :cond_0
    return-void
.end method

.method private resumeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->w()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLoadingView()Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->mLoadingView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->resumeAnimation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->pauseAnimation()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->resumeAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->pauseAnimation()V

    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->resumeAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILottieLoadingView;->pauseAnimation()V

    :goto_0
    return-void
.end method
