.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ELEVATION_FLOATING_BUTTON:I = 0x18

.field private static final DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE:F = 0.98f

.field private static final TAG:Ljava/lang/String; = "COUIFloatingButtonLabel"


# instance fields
.field private mButtonSize:I

.field private mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

.field private mFloatingButtonItem:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

.field private mFloatingButtonPixel:I

.field private mIsLabelEnabled:Z

.field private mIsNeedVibrate:Z

.field private mLabelBackground:Landroidx/cardview/widget/CardView;

.field private mLabelCardViewElevation:F

.field private mLabelTextView:Landroid/widget/TextView;

.field private mOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

.field private mPressAnimationRecorder:Landroid/animation/ValueAnimator;

.field private mPressValue:F

.field private final mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

.field private mShadowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-direct {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mIsNeedVibrate:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mButtonSize:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-direct {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mIsNeedVibrate:Z

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mButtonSize:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-direct {p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    const/4 p3, 0x1

    .line 15
    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mIsNeedVibrate:Z

    const/4 p3, 0x0

    .line 16
    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mButtonSize:I

    const/4 p3, -0x1

    .line 17
    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->handleOnClickFloatingButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->animatePress()V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->animateNormal()V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mPressValue:F

    return p0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mPressValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private animateNormal()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->cancelRecorder()V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mPressValue:F

    invoke-static {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->generateResumeAnimation(Landroid/view/View;F)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animatePress()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->performHapticFeedback()V

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->cancelRecorder()V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->generatePressAnimation(Landroid/view/View;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->generatePressAnimationRecord()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$7;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private cancelRecorder()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private childFloatingButtonTouch()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private handleOnClickFloatingButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;->onActionSelected(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Z

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    sget v0, Lcom/support/floatingactionbutton/R$layout;->coui_floating_button_item_label:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/floatingactionbutton/R$id;->coui_floating_button_child_fab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    sget v1, Lcom/support/floatingactionbutton/R$id;->coui_floating_button_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    sget v1, Lcom/support/floatingactionbutton/R$id;->coui_floating_button_label_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_elevation_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToFloatingActionButton(Landroid/view/View;III)V

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$3;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {}, Lcom/google/android/material/shape/n;->a()Lcom/google/android/material/shape/n$b;

    move-result-object v1

    sget-object v2, Lcom/google/android/material/shape/n;->m:Lcom/google/android/material/shape/d;

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/n$b;->p(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/n$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_elevation_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToFloatingActionButton(Landroid/view/View;III)V

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$4;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    sget-object v1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel_fabLabelNeedVibrate:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mIsNeedVibrate:Z

    sget p2, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel_srcCompat:I

    const/high16 v1, -0x80000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-ne p2, v1, :cond_0

    sget p2, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel_android_src:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;-><init>(II)V

    sget p2, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel_fabLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->setLabel(Ljava/lang/String;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p2, v3, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p2

    sget v3, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel_fabBackgroundColor:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->setFabBackgroundColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;

    sget p2, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel_fabLabelColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->setLabelColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;

    sget p2, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButtonLabel_fabLabelBackgroundColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->setLabelBackgroundColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;

    invoke-virtual {v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->create()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setFloatingButtonItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure setting FabWithLabelView icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void

    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private performHapticFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mIsNeedVibrate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private setChildFloatingButtonSize()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_fab_normal_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_fab_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_item_normal_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, -0x2

    if-nez v2, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x800005

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setFabBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setFabIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLabel(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setLabelEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setLabelEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setLabelBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelCardViewElevation:F

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelCardViewElevation:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    iput v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelCardViewElevation:F

    :cond_1
    :goto_0
    return-void
.end method

.method private setLabelEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mIsLabelEnabled:Z

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setShadowColor(I)V
    .locals 3

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_elevation_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    invoke-static {p1, v0, v1, v2}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToFloatingActionButton(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_elevation_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mShadowColor:I

    invoke-static {p1, v0, v1, p0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToFloatingActionButton(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public getChildFloatingButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object p0
.end method

.method public getDrawableFilter(I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonItem:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SpeedDialActionItem not set yet!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFloatingButtonItemBuilder()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)V

    return-object v0
.end method

.method public getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method public getFloatingButtonLabelText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getSeamlessViewBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->getSeamlessViewBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public isLabelEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mIsLabelEnabled:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mButtonSize:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_normal_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonPixel:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_large_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonPixel:I

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonPixel:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setFloatingButtonItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)V
    .locals 6

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonItem:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFabImageDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setFabIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFabBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->couiGreenTintControlNormal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v2, v3, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-ne v0, v4, :cond_0

    invoke-static {v2, v1}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setShadowColor(I)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setFabBackgroundColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getLabelColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_label_text_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lt/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setLabelTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getLabelBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-ne v0, v3, :cond_2

    invoke-static {v2, v1}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setLabelBackgroundColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->isCOUIFloatingButtonExpandEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->childFloatingButtonTouch()V

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setMainButtonSize(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mButtonSize:I

    if-lez p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonPixel:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonPixel:I

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mFloatingButtonPixel:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$2;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setChildFloatingButtonSize()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setLabelEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setLabel(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->isLabelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
