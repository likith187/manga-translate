.class Lcom/coui/appcompat/poplist/SmallScreenAnimationController;
.super Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAIN_MENU_ALPHA_PERCENT:F = 0.3f

.field private static final DEFAULT_TRANSLATE:F = 0.0f

.field private static final MAIN_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private static final SUB_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PopupMenuAnimCtrl-S"


# instance fields
.field private mMainMenuAlphaPercent:F

.field private mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private final mMainMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mMainMenuScalePercentX:F

.field private mMainMenuScalePercentY:F

.field private mMainMenuTransitionProgress:F

.field private final mMenuInnerPaddingVertical:I

.field private final mMinGapBetweenMainAndSubMenu:I

.field private mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private final mSubMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mSubMenuClippedBottomEnd:I

.field private mSubMenuClippedBottomStart:I

.field private mSubMenuClippedTopEnd:I

.field private mSubMenuClippedTopStart:I

.field private mSubMenuTransitionProgress:F

.field private mSubMenuTranslateEnd:I

.field private mSubMenuTranslateStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController$1;

    const-string v1, "subMenuTransition"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->SUB_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    new-instance v0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController$2;

    const-string v1, "mainMenuTransition"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->MAIN_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;-><init>()V

    new-instance v0, Lcom/coui/appcompat/poplist/k;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/k;-><init>(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    new-instance v0, Lcom/coui/appcompat/poplist/l;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/l;-><init>(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuTransitionProgress:F

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTransitionProgress:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/poplist/R$dimen;->coui_popup_list_window_min_gap_to_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMinGapBetweenMainAndSubMenu:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_padding_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMenuInnerPaddingVertical:I

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->lambda$new$1(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->getSubMenuTransitionProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->setSubMenuTransitionProgress(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->getMainMenuTransitionProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->setMainMenuTransitionProgress(F)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->lambda$new$0(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method

.method private configMainMenuAnimationPropertiesForSubMenuEnter()V
    .locals 5

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAlphaPercent:F

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuScalePercentX:F

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuScalePercentY:F

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private configSubMenuAnimationPropertiesForSubMenuEnter()V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onSubMenuStartToEnter()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMenuInnerPaddingVertical:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedTopStart:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedTopEnd:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedTopStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedBottomStart:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedBottomEnd:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    iget v4, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedTopStart:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedBottomStart:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->setOverrideOutline(IIIIF)V

    :cond_1
    return-void
.end method

.method private ensureMainMenuEnterAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

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

    sget-object v2, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->MAIN_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private ensureSubMenuAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

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

    sget-object v2, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->SUB_MENU_TRANSITION:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimationEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private getMainMenuTransitionProgress()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuTransitionProgress:F

    return p0
.end method

.method private getSubMenuTransitionProgress()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTransitionProgress:F

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

    iput p1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuTransitionProgress:F

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
    const-string p0, "PopupMenuAnimCtrl-S"

    const-string p1, "No main menu root view! Skip animation update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSubMenuTransitionProgress(F)V
    .locals 8

    iput p1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTransitionProgress:F

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTranslateStart:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTranslateEnd:I

    int-to-float v1, v1

    invoke-static {v0, v1, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    instance-of v2, v1, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedTopStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedTopEnd:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v1

    float-to-int v3, v1

    iget v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedBottomStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuClippedBottomEnd:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    check-cast v2, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    iget-object v4, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v4, v4, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int v5, v3, v1

    const/4 v6, 0x0

    move-object v1, v2

    move v2, v6

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->setOverrideOutline(IIIIF)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    check-cast v1, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object v3, v1

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gt v2, v4, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAlphaPercent:F

    invoke-static {v3, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuScalePercentX:F

    invoke-static {v3, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuScalePercentY:F

    invoke-static {v3, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->translateMainMenu(FI)V

    return-void
.end method

.method private translateMainMenu(FI)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v2, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMinGapBetweenMainAndSubMenu:I

    add-int v4, v2, v3

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    int-to-float p2, v0

    invoke-static {v1, p2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    add-int p1, v2, v3

    add-int v4, v0, p2

    if-le p1, v4, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    add-int/2addr v0, p2

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method detach()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    check-cast p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->clearOverrideOutline()V

    :cond_0
    return-void
.end method

.method public setMainMenuView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setMainMenuView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->ensureMainMenuEnterAnimator()V

    return-void
.end method

.method public setSubMenuView(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->ensureSubMenuAnimator()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->skipToEnd()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTranslateStart:I

    iget-boolean v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchorIsFirstItem:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMenuInnerPaddingVertical:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTranslateStart:I

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTranslateEnd:I

    invoke-super {p0, p1}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setSubMenuView(Landroid/view/View;)V

    return-void
.end method

.method public startMainMenuEnter(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

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
    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuTransitionProgress:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const v1, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->skipToEnd()V

    goto :goto_0

    :cond_1
    const-string p0, "PopupMenuAnimCtrl-S"

    const-string p1, "No main menu root view! Set a main menu view before starting animation!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public startSubMenuEnter(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    const-string v1, "PopupMenuAnimCtrl-S"

    if-nez v0, :cond_0

    const-string p0, "No main menu view! Add a main menu view before showing sub menu!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->configMainMenuAnimationPropertiesForSubMenuEnter()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->configSubMenuAnimationPropertiesForSubMenuEnter()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTransitionProgress:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const v1, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->skipToEnd()V

    goto :goto_0

    :cond_1
    const-string p0, "No sub menu root view! Set a sub menu view before starting animation!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public startSubMenuExit(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->ensureSubMenuAnimator()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    const-string v1, "PopupMenuAnimCtrl-S"

    if-eqz v0, :cond_0

    const-string v0, "Sub menu is exiting!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;->onSubMenuStartToExit()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuTransitionProgress:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

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

    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mMainMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->mSubMenuAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->setSubMenuTransitionProgress(F)V

    return-void
.end method
