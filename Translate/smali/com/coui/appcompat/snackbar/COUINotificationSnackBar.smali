.class public Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;
.super Lcom/coui/appcompat/snackbar/COUISnackBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$ImageType;
    }
.end annotation


# static fields
.field private static final MAX_DURATION:I = 0x2710

.field private static final MIN_DURATION:I = 0xfa0

.field private static final MOVE_EASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SLIDING_LIMIT_VALUE:I = 0x8

.field private static final SLIDING_SPEED:F = 1.75f

.field private static final SWIPED_INDEX_X:I = 0x1

.field private static final SWIPED_INDEX_Y:I = 0x2

.field private static final TAG:Ljava/lang/String; = "COUINotificationSnackBar"


# instance fields
.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonTv:Lcom/coui/appcompat/button/COUIButton;

.field private mCloseDrawable:Landroid/graphics/drawable/Drawable;

.field private mCloseIv:Landroid/widget/ImageView;

.field private mCloseIvClickListener:Landroid/view/View$OnClickListener;

.field private mCouiSpringAnimationX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mCouiSpringAnimationY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mHorizontalImageHeight:I

.field private mHorizontalImageWidth:I

.field private mInterceptX:I

.field private mInterceptY:I

.field private mIsSupportSmoothRoundCorner:Z

.field private mLastX:I

.field private mLastY:I

.field private mNotificationIcon:Landroid/widget/ImageView;

.field private mScreenWidth:I

.field private mSquareImageWidth:I

.field private mSubContentTv:Landroid/widget/TextView;

.field private mSwipedIndex:I

.field private mVerticalImageHeight:I

.field private mVerticalImageWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->lambda$setOnClick$1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mIsSupportSmoothRoundCorner:Z

    return p0
.end method

.method public static synthetic b(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->lambda$setOnClick$0(Landroid/view/View;)V

    return-void
.end method

.method private checkSwipedFarEnoughByX()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkSwipedFarEnoughByY()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createTranslationAnimation(Landroid/view/View;FLandroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "F",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    invoke-static {p1, p3, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private getViewSpringTranslationAnimator(Landroid/view/View;FLcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;
    .locals 0

    new-instance p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {p0, p1, p3, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->getSpring()Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->getSpring()Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p1

    const p2, 0x3eb33333    # 0.35f

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    return-object p0
.end method

.method private getViewTranslationAnimator(Landroid/view/View;FILandroid/util/Property;)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FI",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->createTranslationAnimation(Landroid/view/View;FLandroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$2;-><init>(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private initResource()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_notification_snack_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSquareImageWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_notification_snack_bar_horizontal_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mHorizontalImageWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_notification_snack_bar_horizontal_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mHorizontalImageHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_notification_snack_bar_vertical_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mVerticalImageWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_notification_snack_bar_vertical_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mVerticalImageHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$drawable;->coui_menu_ic_cancel_normal:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorLabelTertiary:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private synthetic lambda$setOnClick$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseIvClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseIv:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->dismiss()V

    return-void
.end method

.method private synthetic lambda$setOnClick$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonTv:Lcom/coui/appcompat/button/COUIButton;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/snackbar/R$dimen;->coui_snack_bar_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;
    .locals 4

    .line 4
    invoke-static {p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0xfa0

    .line 6
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/16 v0, 0x2710

    .line 7
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 8
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSurfaceTop:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/support/appcompat/R$style;->Theme_COUI_Main:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 12
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 13
    sget v0, Lcom/support/snackbar/R$layout;->coui_notification_snack_bar_show_layout:I

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;

    .line 15
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setParent(Landroid/view/ViewGroup;)V

    .line 18
    invoke-direct {p0, p3}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->setButtonText(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->setCloseIcon()V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    move p3, v1

    move p4, p3

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p3, p5, :cond_4

    .line 24
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    instance-of p5, p5, Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz p5, :cond_3

    .line 25
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_2

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

    .line 26
    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object p0

    .line 27
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Content text and button text can not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;
    .locals 6

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;

    move-result-object p0

    return-object p0
.end method

.method private setButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonTv:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonTv:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonTv:Lcom/coui/appcompat/button/COUIButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setCloseIcon()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseIv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseIv:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setOnClick()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coui/appcompat/snackbar/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/snackbar/a;-><init>(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonTv:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coui/appcompat/snackbar/b;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/snackbar/b;-><init>(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private startDismissAnimationX()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v2, v3

    const/high16 v4, 0x3fe00000    # 1.75f

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    neg-int v0, v1

    int-to-float v2, v0

    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-direct {p0, p0, v2, v3, v0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->getViewTranslationAnimator(Landroid/view/View;FILandroid/util/Property;)Landroid/animation/Animator;

    move-result-object p0

    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startDismissAnimationY()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    div-float v1, v0, v1

    float-to-int v1, v1

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {p0, p0, v0, v1, v2}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->getViewTranslationAnimator(Landroid/view/View;FILandroid/util/Property;)Landroid/animation/Animator;

    move-result-object p0

    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startOriginalAnimationX()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCouiSpringAnimationX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->TRANSLATION_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    invoke-direct {p0, p0, v0, v1}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->getViewSpringTranslationAnimator(Landroid/view/View;FLcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCouiSpringAnimationX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCouiSpringAnimationX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->start()V

    return-void
.end method

.method private startOriginalAnimationY()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCouiSpringAnimationY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->TRANSLATION_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    invoke-direct {p0, p0, v0, v1}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->getViewSpringTranslationAnimator(Landroid/view/View;FLcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCouiSpringAnimationY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCouiSpringAnimationY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->start()V

    return-void
.end method


# virtual methods
.method public getNotificationButton()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonTv:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public getSnackBarLayout()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getSubContentView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSubContentTv:Landroid/widget/TextView;

    return-object p0
.end method

.method protected initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->initResource()V

    sget v0, Lcom/support/snackbar/R$layout;->coui_notification_snack_bar_item:I

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

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->iv_notification_snack_bar_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->bt_notification_snack_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonTv:Lcom/coui/appcompat/button/COUIButton;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->iv_notification_snack_bar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mNotificationIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcom/support/snackbar/R$id;->tv_snack_bar_sub_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSubContentTv:Landroid/widget/TextView;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :goto_1
    :try_start_1
    const-string v1, "COUINotificationSnackBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure setting COUINotificationSnackBar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mIsSupportSmoothRoundCorner:Z

    new-instance p2, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;-><init>(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->setOnClick()V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerL:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_four:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/snackbar/R$color;->coui_snack_bar_background_shadow_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {p2, v1, v0, p1, p0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;IIII)V

    return-void

    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mLastX:I

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mLastY:I

    iget p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mInterceptX:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mLastY:I

    iget v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mInterceptY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_3

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSwipedIndex:I

    const/4 p0, 0x1

    return p0

    :cond_2
    iput v1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mInterceptX:I

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mInterceptY:I

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->isAdjustLayout:Z

    invoke-super/range {p0 .. p5}, Lcom/coui/appcompat/snackbar/COUISnackBar;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mLastX:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mLastY:I

    sub-int v3, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_a

    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    const/4 v2, 0x3

    if-eq v4, v2, :cond_6

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSwipedIndex:I

    if-ne v4, v5, :cond_3

    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v4, v8, :cond_2

    move v7, v6

    :cond_2
    iput v7, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSwipedIndex:I

    :cond_3
    iget v4, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSwipedIndex:I

    if-eq v4, v5, :cond_b

    if-ne v4, v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSwipedIndex:I

    if-ne v2, v6, :cond_8

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->checkSwipedFarEnoughByX()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->startDismissAnimationX()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->startOriginalAnimationX()V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->checkSwipedFarEnoughByY()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->startDismissAnimationY()V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->startOriginalAnimationY()V

    goto :goto_0

    :cond_a
    iput v5, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSwipedIndex:I

    :cond_b
    :goto_0
    iput v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mLastX:I

    iput v1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mLastY:I

    invoke-super {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCloseButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mCloseIvClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNotificationIcon(II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->setNotificationIcon(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setNotificationIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mNotificationIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mHorizontalImageWidth:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iget p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mHorizontalImageHeight:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 5
    :cond_2
    iget p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mVerticalImageWidth:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mVerticalImageHeight:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 7
    :cond_3
    iget p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSquareImageWidth:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mNotificationIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mNotificationIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mNotificationIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setSubContent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSubContentTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSubContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->mSubContentTv:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
