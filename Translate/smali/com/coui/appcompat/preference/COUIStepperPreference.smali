.class public Lcom/coui/appcompat/preference/COUIStepperPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/stepper/IStepper;
.implements Lcom/coui/appcompat/stepper/OnStepChangeListener;


# instance fields
.field private mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

.field private mDefaultValue:I

.field private mInitialMaximum:I

.field private mInitialMinimum:I

.field private mInitialValue:I

.field private mOnStepChangeListener:Lcom/coui/appcompat/stepper/OnStepChangeListener;

.field private mUnit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIStepperPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiStepperPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIStepperPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUIStepperPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIStepperPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v0, Lcom/support/preference/R$styleable;->COUIStepperPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/support/preference/R$styleable;->COUIStepperPreference_couiMaximum:I

    const/16 p3, 0x270f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialMaximum:I

    .line 7
    sget p2, Lcom/support/preference/R$styleable;->COUIStepperPreference_couiMinimum:I

    const/16 p3, -0x3e7

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialMinimum:I

    .line 8
    sget p2, Lcom/support/preference/R$styleable;->COUIStepperPreference_couiDefStep:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialValue:I

    .line 9
    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mDefaultValue:I

    .line 10
    sget p2, Lcom/support/preference/R$styleable;->COUIStepperPreference_couiUnit:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mUnit:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public changePersistence(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialValue:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mDefaultValue:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    :goto_0
    return-void
.end method

.method public getCOUIStepperView()Lcom/coui/appcompat/stepper/COUIStepperView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    return-object p0
.end method

.method public getCurStep()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getCurStep()I

    move-result p0

    return p0
.end method

.method public getMaximum()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMaximum()I

    move-result p0

    return p0
.end method

.method public getMinimum()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMinimum()I

    move-result p0

    return p0
.end method

.method public getUnit()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getUnit()I

    move-result p0

    return p0
.end method

.method public minus()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->minus()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcom/support/preference/R$id;->stepper:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/stepper/COUIStepperView;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialMaximum:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIStepperPreference;->setMaximum(I)V

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialMinimum:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIStepperPreference;->setMinimum(I)V

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialValue:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIStepperPreference;->setCurStep(I)V

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mUnit:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIStepperPreference;->setUnit(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->setOnStepChangeListener(Lcom/coui/appcompat/stepper/OnStepChangeListener;)V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreference;->onDetached()V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->release()V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialValue:I

    return-void
.end method

.method public onStepChanged(II)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialValue:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eq p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mOnStepChangeListener:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/stepper/OnStepChangeListener;->onStepChanged(II)V

    :cond_1
    return-void
.end method

.method public plus()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->plus()V

    return-void
.end method

.method public setCurStep(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setCurStep(I)V

    return-void
.end method

.method public setMaximum(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialMaximum:I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMaximum(I)V

    return-void
.end method

.method public setMinimum(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mInitialMinimum:I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMinimum(I)V

    return-void
.end method

.method public setOnStepChangeListener(Lcom/coui/appcompat/stepper/OnStepChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mOnStepChangeListener:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    return-void
.end method

.method public setUnit(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mUnit:I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->mCOUIStepperView:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setUnit(I)V

    return-void
.end method
