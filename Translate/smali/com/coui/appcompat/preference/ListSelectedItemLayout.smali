.class public Lcom/coui/appcompat/preference/ListSelectedItemLayout;
.super Lcom/coui/appcompat/preference/COUICheckedLinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/list/IListSelectedItem;
.implements Lcom/coui/appcompat/list/ICardListSelectedItem;


# static fields
.field protected static final APPEAR_DURATION:I = 0x96
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final DISAPPEAR_DURATION:I = 0x16f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final STATE_BACKGROUND_APPEAR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final STATE_BACKGROUND_DISAPPEAR:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected mAppearInterpolator:Landroid/view/animation/Interpolator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mBackgroundAnimationEnabled:Z

.field protected mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mConsumeDispatchingEventForState:Z

.field protected mDisappearInterpolator:Landroid/view/animation/Interpolator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mLayoutRect:Landroid/graphics/RectF;

.field private mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

.field protected mNeedAutoStartDisAppear:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mState:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUICheckedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mLayoutRect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mBackgroundAnimationEnabled:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mConsumeDispatchingEventForState:Z

    .line 8
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mNeedAutoStartDisAppear:Z

    const/4 p2, 0x2

    .line 9
    iput p2, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mState:I

    .line 10
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3f2b851f    # 0.67f

    const/high16 p4, 0x3f800000    # 1.0f

    const v0, 0x3e2e147b    # 0.17f

    invoke-direct {p2, v0, v0, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    new-instance p2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 12
    invoke-direct {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->initStateEffectBackground()V

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method

.method private handlePressAnimationInternal(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mBackgroundAnimationEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->startDisAppearAnimationOrNot()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->startAppearAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

.method private initStateEffectBackground()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->getLayoutPath()Landroid/graphics/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v2, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mLayoutRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskRect(Landroid/graphics/RectF;FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v0

    aput-object v2, v4, v3

    new-instance v0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mBackgroundAnimationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setAnimateEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public consumeDispatchingEventForState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mConsumeDispatchingEventForState:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mConsumeDispatchingEventForState:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v0, v1, v1, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setHoverStateLocked(ZZZ)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setHoverStateLocked(ZZZ)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mConsumeDispatchingEventForState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->handlePressAnimationInternal(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected getLayoutPath()Landroid/graphics/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initAnimation(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public isCardType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mLayoutRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mConsumeDispatchingEventForState:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->handlePressAnimationInternal(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public refreshCardBg(I)V
    .locals 0

    return-void
.end method

.method public resetBackgroundAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

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

.method public setBackgroundAnimationDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setBackgroundAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mBackgroundAnimationEnabled:Z

    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setAnimateEnabled(Z)V

    return-void
.end method

.method public setConfigurationChangeListener(Lcom/coui/appcompat/list/ConfigurationChangedListener;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->startDisAppearAnimationOrNot()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setPositionInGroup(I)V
    .locals 0

    return-void
.end method

.method public setPressScaleEffectEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->enableScaleEffect(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->disableScaleEffect()V

    :goto_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->startAppearAnimation(Z)V

    return-void
.end method

.method public startAppearAnimation(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setAnimateEnabled(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    if-nez p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setAnimateEnabled(Z)V

    :cond_2
    return-void
.end method

.method public startDisAppearAnimationOrNot()V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->startDisAppearAnimationOrNot(Z)V

    return-void
.end method

.method public startDisAppearAnimationOrNot(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setAnimateEnabled(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    if-nez p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setAnimateEnabled(Z)V

    :cond_2
    return-void
.end method
