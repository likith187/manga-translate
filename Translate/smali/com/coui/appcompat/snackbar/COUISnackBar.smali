.class public Lcom/coui/appcompat/snackbar/COUISnackBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;,
        Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_SNACKBAR_DISMISS_SPRING_RESPONSE:F = 0.25f

.field private static final DEFAULT_SNACKBAR_SHOW_SPRING_RESPONSE:F = 0.3f

.field private static final DEFAULT_SNACKBAR_SPRING_BOUNCE:F = 0.0f

.field private static final DEFAULT_SPRING_FACTOR:F = 10000.0f

.field private static final DEFAULT_TRANSLATION_END:I = 0x0

.field private static final ONE:F = 1.0f

.field private static final POINT_EIGHT:F = 0.8f

.field private static final SINGLE_LINE_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUISnackBar"

.field private static final ZERO:F

.field protected static mCOUISnackBarBottomMargin:I


# instance fields
.field private final DEFAULT_ACTION_MARGIN_HORIZONTAL_END:I

.field private final DEFAULT_ACTION_MARGIN_HORIZONTAL_START:I

.field private final DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL:I

.field private final DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY:I

.field private final DEFAULT_ACTION_MARGIN_VERTICAL:I

.field private final DEFAULT_ACTION_TEXT_MAX_WIDTH:I

.field private final DEFAULT_CONTENT_MARGIN_HORIZONTAL:I

.field private final DEFAULT_CONTENT_MARGIN_VERTICAL:I

.field private final DEFAULT_CONTEXT_MARGIN_START_WITH_ICON:I

.field private final DEFAULT_ICON_WIDTH:I

.field protected isAdjustLayout:Z

.field protected mActionView:Landroid/widget/TextView;

.field protected mAutoDismissRunnable:Ljava/lang/Runnable;

.field private mCOUISnackBarParent:Landroid/view/ViewGroup;

.field private mCardMarginEnd:I

.field private mCardMarginStart:I

.field private mContentText:Ljava/lang/String;

.field private mContentTextWidth:I

.field protected mContentView:Landroid/widget/TextView;

.field private mDuration:I

.field protected mIconDrawableView:Landroid/widget/ImageView;

.field private mIsDefaultRadius:Z

.field private mIsEntering:Z

.field private mIsSupportSmoothRoundCorner:Z

.field private mIsTiny:Z

.field private mLastLayoutType:I

.field private mOnStatusChangeListener:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

.field private mRect:Landroid/graphics/Rect;

.field private mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

.field protected mRootView:Landroid/view/View;

.field private mSnackBarAnimationProgress:F

.field protected mSnackBarLayout:Landroid/view/ViewGroup;

.field private final mSnackBarProperty:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mWithoutAnima:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_TEXT_MAX_WIDTH:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTENT_MARGIN_VERTICAL:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTENT_MARGIN_HORIZONTAL:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_VERTICAL:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTEXT_MARGIN_START_WITH_ICON:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ICON_WIDTH:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_top_horizontal_tiny:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_HORIZONTAL_START:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_horizontal_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_HORIZONTAL_END:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mWithoutAnima:Z

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRect:Landroid/graphics/Rect;

    .line 14
    new-instance v1, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsDefaultRadius:Z

    .line 16
    iput-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->isAdjustLayout:Z

    .line 17
    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsSupportSmoothRoundCorner:Z

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarAnimationProgress:F

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mLastLayoutType:I

    .line 20
    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;

    const-string v1, "snackBarProperty"

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar$2;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarProperty:Landroidx/dynamicanimation/animation/d;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_TEXT_MAX_WIDTH:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTENT_MARGIN_VERTICAL:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTENT_MARGIN_HORIZONTAL:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_VERTICAL:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTEXT_MARGIN_START_WITH_ICON:I

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ICON_WIDTH:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_top_horizontal_tiny:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_HORIZONTAL_START:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_horizontal_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_HORIZONTAL_END:I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mWithoutAnima:Z

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRect:Landroid/graphics/Rect;

    .line 35
    new-instance v1, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsDefaultRadius:Z

    .line 37
    iput-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->isAdjustLayout:Z

    .line 38
    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsSupportSmoothRoundCorner:Z

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarAnimationProgress:F

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mLastLayoutType:I

    .line 41
    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;

    const-string v1, "snackBarProperty"

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar$2;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarProperty:Landroidx/dynamicanimation/animation/d;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->dismissView()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/snackbar/COUISnackBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarAnimationProgress:F

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/snackbar/COUISnackBar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setSnackBarProgress(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/snackbar/COUISnackBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mWithoutAnima:Z

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/snackbar/COUISnackBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsDefaultRadius:Z

    return p0
.end method

.method private alignCenter(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getViewTotalHeight(Landroid/view/View;)I

    move-result v0

    if-eq v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mLastLayoutType:I

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int p0, p2, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_1
    return-void
.end method

.method private animateSpring(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsEntering:Z

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarAnimationProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarProperty:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    if-eqz p1, :cond_0

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v2, Lcom/coui/appcompat/snackbar/COUISnackBar$1;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar$1;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Z)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const p1, 0x461c4000    # 10000.0f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private animationIn()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->animateSpring(Z)V

    return-void
.end method

.method private dismissView()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCOUISnackBarParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mOnStatusChangeListener:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;->onDismissed(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    :cond_2
    return-void
.end method

.method protected static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method private getContainerWidth()I
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentTextWidth:I

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_HORIZONTAL_END:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->isCOUISnackBarHasIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ICON_WIDTH:I

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTEXT_MARGIN_START_WITH_ICON:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private getMaxWidth()I
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v0

    sget-object v1, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->calculateGridWidth(I)I

    move-result p0

    return p0
.end method

.method private getViewTotalHeight(Landroid/view/View;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCOUISnackBarHasIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInSecondaryDisplay(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "COUISnackBar"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {p1}, Lcom/coui/appcompat/dialog/AppFeatureUtil;->isSecondaryScreen(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isVertical(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getContainerWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    if-le p0, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private layoutHorizontally()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getViewTotalHeight(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getViewTotalHeight(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsTiny:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setTinyParams(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setTinyParams(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->isCOUISnackBarHasIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getViewTotalHeight(Landroid/view/View;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->alignCenter(Landroid/view/View;I)V

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->alignCenter(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->alignCenter(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private layoutVertically()V
    .locals 4

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->isCOUISnackBarHasIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTENT_MARGIN_VERTICAL:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_vertical_multi_lines:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsTiny:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_vertical_multi_lines:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsTiny:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_bottom_multi_lines_tiny:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_bottom_multi_lines:I

    goto :goto_1

    :goto_2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsTiny:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_padding_tiny:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v1, v2, v0, p0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public static make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUISnackBar;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;
    .locals 4

    .line 4
    invoke-static {p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSurfaceTop:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/support/appcompat/R$style;->Theme_COUI_Main:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 9
    const-string p0, "COUISnackBar"

    const-string v1, "Expected theme to define couiColorSurfaceTop and couiColorPrimaryNeutral."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    .line 10
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 11
    sget v0, Lcom/support/snackbar/R$layout;->coui_snack_bar_show_layout:I

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/snackbar/COUISnackBar;

    .line 13
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setParent(Landroid/view/ViewGroup;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    sput p4, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCOUISnackBarBottomMargin:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    move p3, v1

    move p4, p3

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 21
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 v0, 0x8

    if-eq p4, v0, :cond_2

    move p4, v3

    goto :goto_1

    :cond_2
    move p4, v1

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    if-nez p4, :cond_5

    .line 23
    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object p0

    .line 24
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUISnackBar;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/coui/appcompat/snackbar/COUISnackBar;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p0

    return-object p0
.end method

.method private resetMarginHorizontal()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_icon_margin_top_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_icon_margin_top_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setActionText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSnackBarProgress(F)V
    .locals 6

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarAnimationProgress:F

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsEntering:Z

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    move v2, v3

    move v3, v1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-static {v2, v0, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setTinyParams(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_bottom_single_lines_tiny:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_action_margin_bottom_single_lines_tiny:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public adjustLayout()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->isVertical(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsDefaultRadius:Z

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->layoutVertically()V

    iput v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mLastLayoutType:I

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsDefaultRadius:Z

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->layoutHorizontally()V

    iput v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mLastLayoutType:I

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsEntering:Z

    if-nez v0, :cond_0

    .line 2
    const-string p0, "COUISnackBar"

    const-string v0, "is in dismissing"

    invoke-static {p0, v0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->animateSpring(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsEntering:Z

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->dismissView()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->dismiss()V

    :goto_0
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActionView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mDuration:I

    return p0
.end method

.method protected initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    sget v0, Lcom/support/snackbar/R$layout;->coui_snack_bar_item:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->snack_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->tv_snack_bar_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->tv_snack_bar_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->iv_snack_bar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->isInSecondaryDisplay(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsTiny:Z

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sput v0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCOUISnackBarBottomMargin:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/support/snackbar/R$styleable;->COUISnackBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    sget v0, Lcom/support/snackbar/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/snackbar/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    sget v0, Lcom/support/snackbar/R$styleable;->COUISnackBar_snackBarDisappearTime:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    sget v0, Lcom/support/snackbar/R$styleable;->COUISnackBar_couiSnackBarIcon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string v1, "COUISnackBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure setting COUISnackBar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsSupportSmoothRoundCorner:Z

    sget p2, Lcom/support/appcompat/R$attr;->couiRoundCornerXXL:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v5

    sget p2, Lcom/support/appcompat/R$attr;->couiRoundCornerL:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v2

    sget p2, Lcom/support/appcompat/R$attr;->couiRoundCornerLRadius:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v3

    sget p2, Lcom/support/appcompat/R$attr;->couiRoundCornerLWeight:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrFloat(Landroid/content/Context;I)F

    move-result v4

    new-instance p2, Lcom/coui/appcompat/snackbar/COUISnackBar$4;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/snackbar/COUISnackBar$4;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;IIFI)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_shadow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_one:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$color;->coui_snack_bar_background_shadow_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p2, v2, v0, p1, v1}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/grid/R$dimen;->grid_guide_column_card_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCardMarginStart:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/grid/R$dimen;->grid_guide_column_card_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCardMarginEnd:I

    return-void

    :goto_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCOUISnackBarParent:Landroid/view/ViewGroup;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->isAdjustLayout:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->adjustLayout()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTENT_MARGIN_HORIZONTAL:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentTextWidth:I

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getMaxWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v1, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCardMarginStart:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v5, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCardMarginEnd:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v5, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCardMarginStart:I

    sub-int v3, v1, v3

    iget v5, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCardMarginEnd:I

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-direct {p0, v3}, Lcom/coui/appcompat/snackbar/COUISnackBar;->isVertical(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mLastLayoutType:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->resetMarginHorizontal()V

    :cond_2
    if-lez v2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIsTiny:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_layout_margin_tiny:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/snackbar/R$dimen;->coui_snack_bar_layout_margin_tiny:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public setContentText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentText:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setDismissWithoutAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mWithoutAnima:Z

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mDuration:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setIconDrawable(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/snackbar/R$dimen;->coui_snack_bar_child_margin_horizontal_no_icon_start:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->DEFAULT_CONTENT_MARGIN_HORIZONTAL:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    return-void
.end method

.method public setOnAction(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setActionText(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    .line 10
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mActionView:Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$3;

    invoke-direct {v0, p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar$3;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mOnStatusChangeListener:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    return-void
.end method

.method protected setParent(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mCOUISnackBarParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mOnStatusChangeListener:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;->onShown(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->animationIn()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2
    return-void
.end method
