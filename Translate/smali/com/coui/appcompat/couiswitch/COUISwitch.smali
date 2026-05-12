.class public Lcom/coui/appcompat/couiswitch/COUISwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_VALUE_30:I = 0x4dffffff

.field private static final DEFAULT_STATE_SPRING_BOUNCE:F = 0.0f

.field private static final DEFAULT_STATE_SPRING_RESPONSE:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "COUISwitch"


# instance fields
.field private mBarCheckedColor:I

.field private mBarCheckedDisabledColor:I

.field private mBarHeight:I

.field private mBarTrackCurrentColor:I

.field private mBarUnCheckedColor:I

.field private mBarUncheckedDisabledColor:I

.field private mCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mCirclePadding:I

.field private mCircleScale:F

.field private mCircleScaleX:F

.field private mCircleTranslation:I

.field private mDefaultTranslation:I

.field private mEnableHapticFeedback:Z

.field private mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private mInnerCircleAlpha:F

.field private mInnerCircleCheckedDisabledColor:I

.field private mInnerCircleColor:I

.field private mInnerCirclePaint:Landroid/graphics/Paint;

.field private mInnerCircleRectF:Landroid/graphics/RectF;

.field private mInnerCircleUncheckedDisabledColor:I

.field private mInnerCircleWidth:I

.field private mIsAttachedToWindow:Z

.field private mIsLoading:Z

.field private mIsLoadingStyle:Z

.field private mIsMeasured:Z

.field private mIsThemedEnabled:Z

.field private mLoadingAlpha:F

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoadingRotation:F

.field private mLoadingScale:F

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mOnLoadingStateChangedListener:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

.field private mOuterCircleCheckedDisabledColor:I

.field private mOuterCircleColor:I

.field private mOuterCirclePaint:Landroid/graphics/Paint;

.field private mOuterCircleRectF:Landroid/graphics/RectF;

.field private mOuterCircleStrokeWidth:I

.field private mOuterCircleUnCheckedColor:I

.field private mOuterCircleUncheckedDisabledColor:I

.field private mOuterCircleWidth:I

.field private mPadding:I

.field private mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private mShouldPlaySound:Z

.field private mStartLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

.field private mStopLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

.field private mStyle:I

.field private mSwitchLoadingStr:Ljava/lang/String;

.field private mSwitchOffStr:Ljava/lang/String;

.field private mSwitchOnStr:Ljava/lang/String;

.field private final mSwitchRect:Landroid/graphics/RectF;

.field private mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

.field private mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

.field private mToggleAnimator:Landroid/animation/AnimatorSet;

.field private mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mVibratorExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/appcompat/R$attr;->couiSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoadingStyle:Z

    .line 7
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScaleX:F

    .line 11
    iput v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScale:F

    .line 12
    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsMeasured:Z

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 14
    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_0

    .line 16
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStyle:I

    goto :goto_0

    .line 18
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStyle:I

    .line 19
    :goto_0
    sget-object v1, Lcom/support/appcompat/R$styleable;->COUISwitch:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 20
    invoke-direct {p0, p2, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initAttr(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initAnimator()V

    .line 23
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initPaint()V

    .line 24
    invoke-direct {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initResValue(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initStateEffectBackground()V

    .line 26
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->configStateEffectAnimator()V

    .line 27
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initOutLine()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private animateWhenStateChanged(Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3, v5}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isRtlMode()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_2

    :cond_1
    move v6, v0

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    :goto_0
    iget-object v7, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v7, "circleScaleX"

    invoke-static {p0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x85

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v1, [F

    fill-array-data v10, :array_1

    invoke-static {p0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v8, "circleTranslation"

    filled-new-array {v3, v6}, [I

    move-result-object v3

    invoke-static {p0, v8, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x17f

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleAlpha:F

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    const-string v5, "innerCircleAlpha"

    new-array v1, v1, [F

    aput v6, v1, v0

    const/4 v0, 0x1

    aput v4, v1, v0

    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->getBarColor()I

    move-result v1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    :goto_2
    const-string v4, "barColor"

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-static {p0, v4, p1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0x1c2

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private backgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-object p0
.end method

.method private canDrawBar()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private configStateEffectAnimator()V
    .locals 4

    new-instance v0, Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorHover:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "hover"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/view/View;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    new-instance v0, Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPress:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "press"

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/view/View;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    return-void
.end method

.method private drawBar()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->canDrawBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarTrackCurrentColor:I

    invoke-static {v1, v2}, Lu/d;->o(II)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result p0

    invoke-static {p0, v1}, Lu/d;->o(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedDisabledColor:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUncheckedDisabledColor:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingScale:F

    iget-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingRotation:F

    iget-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawOuterCircle(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScale:F

    iget-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleUnCheckedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleCheckedDisabledColor:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleUncheckedDisabledColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThemedBackground(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->backgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->drawableAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarHeight:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->backgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThemedLoading(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingRotation:F

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawableAlpha()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getBarColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarTrackCurrentColor:I

    return p0
.end method

.method private initAnimator()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initStartLoadingAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initStopLoadingAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initThemedLoadingAnimator()V

    return-void
.end method

.method private initAttr(Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_loadingDrawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_barHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarHeight:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleStrokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleStrokeWidth:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleWidth:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_circlePadding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCirclePadding:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleUncheckedDisabledColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerUnCheckedCircleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleUnCheckedColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleCheckedDisabledColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleUncheckedDisabledColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleCheckedDisabledColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_barUncheckedDisabledColor:I

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p2, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    const v1, 0x4dffffff    # 5.3687088E8f

    and-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedDisabledColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$bool;->coui_switch_theme_enable:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    if-eqz p2, :cond_0

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingCheckedBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedCheckedDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedUncheckedDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private initOutLine()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isOs16()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/couiswitch/COUISwitch$1;-><init>(Lcom/coui/appcompat/couiswitch/COUISwitch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->clearShadow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setPaintShadowLayer()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private initResValue(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_switch_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->switch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->switch_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->switch_loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchLoadingStr:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCirclePadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorControls:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    :goto_0
    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarTrackCurrentColor:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUncheckedDisabledColor:I

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private initStartLoadingAnimator()V
    .locals 8

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    const-string v1, "circleScale"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1b1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const-string v4, "loadingScale"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x226

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v6, "loadingAlpha"

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v2, [F

    fill-array-data v0, :array_3

    const-string v2, "loadingRotation"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private initStateEffectBackground()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/state/COUIStrokeDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->bar_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->bar_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setStrokeRect(Landroid/graphics/RectF;FF)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    new-instance v0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v0, v3}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initStopLoadingAnimator()V
    .locals 4

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    const-string v1, "loadingAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initThemedLoadingAnimator()V
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private isOs16()Z
    .locals 1

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRtlMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performFeedBack()V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isTactileFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/couiswitch/COUISwitch$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/couiswitch/COUISwitch$2;-><init>(Lcom/coui/appcompat/couiswitch/COUISwitch;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    :cond_1
    return-void
.end method

.method private playSoundEffect(Z)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p0, Lcom/support/appcompat/R$raw;->coui_switch_sound_on:I

    :goto_0
    move v1, p0

    goto :goto_1

    :cond_0
    sget p0, Lcom/support/appcompat/R$raw;->coui_switch_sound_off:I

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->play(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private setBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarTrackCurrentColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setInnerCircleRectF()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleStrokeWidth:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v5, v2

    add-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private setOuterCircleRectF()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCirclePadding:I

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScaleX:F

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCirclePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScaleX:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCirclePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScaleX:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCirclePadding:I

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScaleX:F

    goto :goto_0

    :goto_1
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarHeight:I

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private setPaintShadowLayer()V
    .locals 4

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public disableThemed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    return-void
.end method

.method public enableThemed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOuterCircleUncheckedColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleUnCheckedColor:I

    return p0
.end method

.method public isLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    return p0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mEnableHapticFeedback:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsAttachedToWindow:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$raw;->coui_switch_sound_on:I

    sget v1, Lcom/support/appcompat/R$raw;->coui_switch_sound_off:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->register(Landroid/content/Context;[I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->drawThemedBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->drawThemedLoading(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->drawBar()V

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setOuterCircleRectF()V

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setInnerCircleRectF()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->drawOuterCircle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->drawLoading(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoadingStyle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->onMeasure(II)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPadding:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarHeight:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsMeasured:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsMeasured:Z

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isRtlMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    :goto_0
    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    :cond_2
    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleAlpha:F

    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isOs16()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0, v3, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mShouldPlaySound:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mEnableHapticFeedback:Z

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0, v3, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoadingStyle:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->startLoading()V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const v3, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v3, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUISwitch:[I

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUISwitch:[I

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initAttr(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->initResValue(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPress:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorHover:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setViewBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setViewBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setBarCheckedColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarTrackCurrentColor:I

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarStateListDrawable()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBarCheckedDisabledColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedDisabledColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarStateListDrawable()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBarStateListDrawable()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$drawable;->switch_custom_track_on:I

    invoke-static {v0, v1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$drawable;->switch_custom_track_off:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$drawable;->switch_custom_track_on_disable:I

    invoke-static {v2, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$drawable;->switch_custom_track_off_disable:I

    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget v5, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    const v6, 0x101009e

    const v7, 0x10100a0

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    filled-new-array {v7, v6}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    filled-new-array {v7, v6}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    const v5, -0x10100a0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    filled-new-array {v5, v6}, [I

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    filled-new-array {v5, v6}, [I

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_1
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedDisabledColor:I

    const v1, -0x101009e

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedDisabledColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    filled-new-array {v1, v7}, [I

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    filled-new-array {v1, v7}, [I

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_2
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUncheckedDisabledColor:I

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUncheckedDisabledColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    filled-new-array {v1, v5}, [I

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    filled-new-array {v1, v5}, [I

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBarUnCheckedColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarTrackCurrentColor:I

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarStateListDrawable()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBarUncheckedDisabledColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUncheckedDisabledColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarStateListDrawable()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 8
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 10
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 11
    invoke-direct {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->animateWhenStateChanged(Z)V

    goto :goto_5

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->isRtlMode()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    move p2, v1

    goto :goto_0

    .line 13
    :cond_3
    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    :goto_0
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleTranslation(I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 14
    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mDefaultTranslation:I

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_1
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleTranslation(I)V

    :goto_2
    if-eqz p1, :cond_6

    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 15
    :goto_3
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setInnerCircleAlpha(F)V

    if-eqz p1, :cond_7

    .line 16
    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarCheckedColor:I

    goto :goto_4

    :cond_7
    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mBarUnCheckedColor:I

    :goto_4
    invoke-direct {p0, p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarColor(I)V

    .line 17
    :cond_8
    :goto_5
    iget-boolean p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mShouldPlaySound:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsAttachedToWindow:Z

    if-eqz p2, :cond_9

    .line 18
    invoke-direct {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->playSoundEffect(Z)V

    .line 19
    iput-boolean v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mShouldPlaySound:Z

    .line 20
    :cond_9
    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->performFeedBack()V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCircleScale(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScale:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircleScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleScaleX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircleTranslation(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mCircleTranslation:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setPaintShadowLayer()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setHovered(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz p1, :cond_0

    const p1, 0x461c4000    # 10000.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_1
    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerCircleColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mInnerCircleColor:I

    return-void
.end method

.method public setLoadingAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadingRotation(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingRotation:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLoadingScale(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mLoadingScale:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLoadingStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoadingStyle:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    return-void
.end method

.method public setOuterCircleColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleColor:I

    return-void
.end method

.method public setOuterCircleStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleStrokeWidth:I

    return-void
.end method

.method public final setOuterCircleUncheckedColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOuterCircleUnCheckedColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShouldPlaySound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mShouldPlaySound:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mEnableHapticFeedback:Z

    return-void
.end method

.method public setThemedLoadingCheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setThemedLoadingUncheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setUncheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public startLoading()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchLoadingStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;->onStartLoading()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoadingStyle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsThemedEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleScale(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mIsLoading:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;->onStopLoading()V

    :cond_5
    return-void
.end method
