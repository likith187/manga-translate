.class public Lcom/coui/appcompat/progressbar/COUILoadProgress;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;,
        Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;,
        Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;,
        Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SET:[I

.field public static final DEFAULT_UP_OR_DOWN:I = 0x0

.field private static final FAIL_SET:[I

.field private static final ING_SET:[I

.field public static final INSTALL_HAVE_GIFT:I = 0x4

.field private static final ONE:F = 1.0f

.field private static final ONE_MILLION:F = 1.0E-7f

.field private static final PROGRESS_ANIM_DURATION:F = 1.0f

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xa

.field public static final UPING_OR_DOWNING:I = 0x1

.field public static final UP_OR_DOWN_FAIL:I = 0x3

.field public static final UP_OR_DOWN_WAIT:I = 0x2

.field private static final WAIT_SET:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

.field private mBroadcasting:Z

.field protected mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field protected mButtonDrawableReverseColor:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mContext:Landroid/content/Context;

.field protected mIsUpdateWithAnimation:Z

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field public mMax:I

.field private mOnStateChangeListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

.field private mOnStateChangeWidgetListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

.field public mProgress:I

.field public mState:I

.field protected mVisualProgress:F

.field private mVisualProgressAnimationListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;

.field private final mVisualProgressProperty:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/support/progressbar/R$attr;->coui_state_default:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->DEFAULT_SET:[I

    sget v0, Lcom/support/progressbar/R$attr;->coui_state_wait:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->WAIT_SET:[I

    sget v0, Lcom/support/progressbar/R$attr;->coui_state_fail:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->FAIL_SET:[I

    sget v0, Lcom/support/progressbar/R$attr;->coui_state_ing:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->ING_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/progressbar/R$attr;->couiLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/progressbar/R$style;->Widget_COUI_COUILoadProgress:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-string v0, "COUILoadProgress"

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->DEBUG:Z

    .line 7
    new-instance v1, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;

    const-string v2, "VisualProgressProperty"

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;-><init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressProperty:Landroidx/dynamicanimation/animation/d;

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    .line 9
    sget-object v1, Lcom/support/progressbar/R$styleable;->COUILoadProgress:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    sget p3, Lcom/support/progressbar/R$styleable;->COUILoadProgress_couiState:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 11
    sget p4, Lcom/support/progressbar/R$styleable;->COUILoadProgress_couiDefaultDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 12
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :cond_0
    sget p4, Lcom/support/progressbar/R$styleable;->COUILoadProgress_couiProgress:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->init()V

    .line 17
    invoke-static {p0}, Landroidx/core/view/m0;->t(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 18
    invoke-static {p0, p2}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    .line 19
    :cond_1
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/progressbar/COUILoadProgress;)Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressAnimationListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;

    return-object p0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    return-void
.end method

.method private refreshProgressWithAnim(I)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgress:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressProperty:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v0, v3, v4}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v3, Lcom/coui/appcompat/progressbar/COUILoadProgress$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress$2;-><init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;)V

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgress:F

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x33d6bf95    # 1.0E-7f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgress:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartVelocity(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->start()V

    iput-boolean v3, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;Lcom/coui/appcompat/progressbar/COUILoadProgress$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private skipAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->skipToEnd()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    return p0
.end method

.method public getMax(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/coui/appcompat/progressbar/COUILoadProgress;->DEFAULT_SET:[I

    invoke-static {p1, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->ING_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->WAIT_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->FAIL_SET:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_3
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->skipAnimation()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onProgressRefresh(I)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1}, Ld0/c;->b(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->scheduleAccessibilityEventSender()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->mState:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget p1, p1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFreezesText(Z)V

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v0

    iput v0, v1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->mState:I

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    iput p0, v1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->mProgress:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->skipAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->toggle()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonResource:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonResource:I

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonResource:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawableReverseColor:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_1

    .line 16
    :cond_2
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawableReverseColor:Landroid/graphics/drawable/Drawable;

    .line 18
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonResource:I

    :goto_1
    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mOnStateChangeListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mOnStateChangeWidgetListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    if-nez p2, :cond_4

    .line 3
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    if-eq p1, p2, :cond_2

    .line 4
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    .line 5
    :cond_2
    iget-boolean p2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    if-eqz p2, :cond_3

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->onProgressRefresh(I)V

    goto :goto_0

    .line 9
    :cond_4
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    if-eq p1, p2, :cond_5

    .line 10
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    .line 11
    :cond_5
    invoke-direct {p0, p2}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->refreshProgressWithAnim(I)V

    :goto_0
    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mBroadcasting:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mBroadcasting:Z

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mOnStateChangeListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    invoke-interface {p1, p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;->onStateChanged(Lcom/coui/appcompat/progressbar/COUILoadProgress;I)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mOnStateChangeWidgetListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    invoke-interface {p1, p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;->onStateChanged(Lcom/coui/appcompat/progressbar/COUILoadProgress;I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mBroadcasting:Z

    :cond_3
    return-void
.end method

.method public setVisualProgressAnimationListener(Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgressAnimationListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;

    return-void
.end method

.method public toggle()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
