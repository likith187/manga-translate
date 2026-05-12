.class public Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BIG_CARD_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.07f

.field private static final DEFAULT_FLOATING_BUTTON_HEIGHT:I = 0x9c

.field private static final DEFAULT_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.1f

.field private static final DEFAULT_PRESS_FEEDBACK_ANIMATION_DURATION:I = 0xc8

.field private static final DEFAULT_PRESS_FEEDBACK_SCALE_MAX_VALUE:F = 1.0f

.field private static final DEFAULT_PRESS_FEEDBACK_SCALE_MIN_VALUE:F = 0.9f

.field private static final DEFAULT_RELEASE_ANIMATION_DURATION:I = 0x154

.field private static final DEFAULT_TARGET_GUARANTEED_VALUE_THRESHOLD_HEIGHT:I = 0x258

.field private static final PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SMALL_CARD_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.35f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePressAnimation(Landroid/view/View;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;
    .locals 5

    if-eqz p0, :cond_0

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->setTargetView(Landroid/view/View;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given view is empty. Please provide a valid view."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePressAnimationRecord()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public static generateResumeAnimation(Landroid/view/View;F)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;
    .locals 4

    if-eqz p0, :cond_0

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-object p1, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->setTargetView(Landroid/view/View;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given view is empty. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGuaranteedAnimationValue(Landroid/view/View;)F
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const p0, 0x3f7e353f    # 0.993f

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v0, 0x9c

    if-lt p0, v0, :cond_1

    const p0, 0x3f770a3d    # 0.965f

    goto :goto_0

    :cond_1
    const p0, 0x3f7d70a4    # 0.99f

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given view is empty. Please provide a valid view."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
