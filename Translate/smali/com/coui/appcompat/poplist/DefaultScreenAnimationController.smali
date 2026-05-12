.class Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;
.super Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ALPHA:F = 1.0f

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final MAIN_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private static final MIN_ALPHA:F = 0.1f

.field private static final SUB_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PopupMenuAnimCtrl-D"


# instance fields
.field private mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private final mMainMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mMainMenuTransitionProgress:F

.field private mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private final mSubMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mSubMenuTransitionProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController$1;

    const-string v1, "subMenuTransition"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->SUB_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    new-instance v0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController$2;

    const-string v1, "mainMenuTransition"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->MAIN_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;-><init>()V

    new-instance v0, Lcom/coui/appcompat/poplist/h;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/h;-><init>(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    new-instance v0, Lcom/coui/appcompat/poplist/i;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/i;-><init>(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuTransitionProgress:F

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuTransitionProgress:F

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->lambda$new$1(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->getSubMenuTransitionProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->setSubMenuTransitionProgress(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->getMainMenuTransitionProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->setMainMenuTransitionProgress(F)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->lambda$new$0(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method

.method private ensureMainMenuEnterAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    sget-object v2, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->MAIN_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private ensureSubMenuAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    sget-object v2, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->SUB_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private getMainMenuTransitionProgress()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuTransitionProgress:F

    return p0
.end method

.method private getSubMenuTransitionProgress()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuTransitionProgress:F

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onMainMenuEntered()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    if-nez p2, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onSubMenuExited()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onSubMenuEntered()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onSubMenuAnimationCanceled()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setMainMenuTransitionProgress(F)V
    .locals 4

    iput p1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuTransitionProgress:F

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    const-string p0, "PopupMenuAnimCtrl-D"

    const-string p1, "No main menu root view! Skip animation update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSubMenuTransitionProgress(F)V
    .locals 6

    iput p1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuTransitionProgress:F

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    instance-of v5, v4, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->getUseBackgroundBlur()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    invoke-static {v0, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    invoke-static {v0, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method detach()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setMainMenuView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setMainMenuView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->ensureMainMenuEnterAnimator()V

    return-void
.end method

.method public setSubMenuView(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->ensureSubMenuAnimator()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setSubMenuView(Landroid/view/View;)V

    return-void
.end method

.method public startMainMenuEnter(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuTransitionProgress:F

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getMainMenuEnterPivotX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getMainMenuEnterPivotY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onMainMenuStartToEnter()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuTransitionProgress:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const v1, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->skipToEnd()V

    goto :goto_0

    :cond_1
    const-string p0, "PopupMenuAnimCtrl-D"

    const-string p1, "No main menu root view! Set a main menu view before starting animation!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public startSubMenuEnter(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    const-string v1, "PopupMenuAnimCtrl-D"

    if-nez v0, :cond_0

    const-string p0, "No main menu view! Add a main menu view before showing sub menu!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onSubMenuStartToEnter()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getSubMenuEnterPivotX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getSubMenuEnterPivotY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuTransitionProgress:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const v1, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->skipToEnd()V

    goto :goto_0

    :cond_2
    const-string p0, "No sub menu root view! Set a sub menu view before starting animation!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public startSubMenuExit(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    const-string v1, "PopupMenuAnimCtrl-D"

    if-nez v0, :cond_0

    const-string p0, "No main menu view! Add a main menu view before showing sub menu!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onSubMenuStartToExit()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->ensureSubMenuAnimator()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuTransitionProgress:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->skipToEnd()V

    goto :goto_0

    :cond_2
    const-string p0, "No sub menu root view! Set a sub menu view before starting animation!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public stopAllAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->setSubMenuTransitionProgress(F)V

    return-void
.end method
