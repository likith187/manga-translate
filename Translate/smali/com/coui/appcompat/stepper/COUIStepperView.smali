.class public Lcom/coui/appcompat/stepper/COUIStepperView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/stepper/IStepper;
.implements Ljava/util/Observer;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/coui/appcompat/stepper/OnStepChangeListener;

.field private mMinusImage:Landroid/widget/ImageView;

.field private mMinusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

.field private final mMinusRunnable:Ljava/lang/Runnable;

.field private mPlusImage:Landroid/widget/ImageView;

.field private mPlusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

.field private final mPlusRunnable:Ljava/lang/Runnable;

.field private mStep:Lcom/coui/appcompat/stepper/ObservableStep;

.field private mStyle:I

.field private mUnit:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/stepper/R$attr;->couiStepperViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string v0, "COUIStepperView"

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->TAG:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/coui/appcompat/stepper/b;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/stepper/b;-><init>(Lcom/coui/appcompat/stepper/COUIStepperView;)V

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusRunnable:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/coui/appcompat/stepper/c;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/stepper/c;-><init>(Lcom/coui/appcompat/stepper/COUIStepperView;)V

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusRunnable:Ljava/lang/Runnable;

    .line 7
    iput-object p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/stepper/COUIStepperView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private configEffectDrawableForButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/stepper/COUIStepperView;->configEffectDrawableForButton(Landroid/widget/ImageView;Lcom/coui/appcompat/stepper/LongPressProxy;)V

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/stepper/COUIStepperView;->configEffectDrawableForButton(Landroid/widget/ImageView;Lcom/coui/appcompat/stepper/LongPressProxy;)V

    return-void
.end method

.method private configEffectDrawableForButton(Landroid/widget/ImageView;Lcom/coui/appcompat/stepper/LongPressProxy;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/stepper/R$dimen;->stepper_button_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 4
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {v4, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    float-to-int v3, v0

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    new-instance v3, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    .line 9
    invoke-virtual {v3, v2, v0, v0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskRect(Landroid/graphics/RectF;FF)V

    .line 10
    new-instance v5, Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/coui/appcompat/state/COUIStrokeDrawable;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v5, v2, v0, v0}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setStrokeRect(Landroid/graphics/RectF;FF)V

    const/4 p0, 0x3

    .line 12
    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    aput-object v1, p0, v4

    const/4 v0, 0x1

    aput-object v3, p0, v0

    const/4 v0, 0x2

    aput-object v5, p0, v0

    .line 13
    new-instance v1, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-virtual {v1, p1, v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->enableScaleEffect(Landroid/view/View;I)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    new-instance p0, Lcom/coui/appcompat/stepper/a;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/stepper/a;-><init>(Lcom/coui/appcompat/state/COUIStateEffectDrawable;)V

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/stepper/LongPressProxy;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private getNumForMaxWidth()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v0, v2

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static synthetic h(Lcom/coui/appcompat/stepper/COUIStepperView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic i(Lcom/coui/appcompat/state/COUIStateEffectDrawable;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/stepper/COUIStepperView;->lambda$configEffectDrawableForButton$2(Lcom/coui/appcompat/state/COUIStateEffectDrawable;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private initAttr(Landroid/content/res/TypedArray;)V
    .locals 4

    :try_start_0
    sget v0, Lcom/support/stepper/R$styleable;->COUIStepperView_couiStepperTextStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v2, Lcom/support/stepper/R$styleable;->COUIStepperView_couiStepperPlusImage:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v3, Lcom/support/stepper/R$styleable;->COUIStepperView_couiStepperMinusImage:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->configEffectDrawableForButton()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "COUIStepperView"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static synthetic j(Lcom/coui/appcompat/stepper/COUIStepperView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->lambda$new$1()V

    return-void
.end method

.method private static synthetic lambda$configEffectDrawableForButton$2(Lcom/coui/appcompat/state/COUIStateEffectDrawable;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_2
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/16 v0, 0x134

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->plus()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const/16 v0, 0x134

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->minus()V

    return-void
.end method


# virtual methods
.method public getCurStep()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/ObservableStep;->getStep()I

    move-result p0

    return p0
.end method

.method public getMaximum()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/ObservableStep;->getMaximum()I

    move-result p0

    return p0
.end method

.method public getMinimum()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/ObservableStep;->getMinimum()I

    move-result p0

    return p0
.end method

.method public getUnit()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mUnit:I

    return p0
.end method

.method protected init(Landroid/util/AttributeSet;I)V
    .locals 4

    sget v0, Lcom/support/stepper/R$style;->COUIStepperViewDefStyle:I

    iput v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStyle:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/stepper/R$layout;->coui_stepper_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/support/stepper/R$id;->plus:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusImage:Landroid/widget/ImageView;

    sget v0, Lcom/support/stepper/R$id;->minus:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusImage:Landroid/widget/ImageView;

    sget v0, Lcom/support/stepper/R$id;->indicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mValueText:Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object v1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/stepper/LongPressProxy;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

    new-instance v0, Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object v1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/stepper/LongPressProxy;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/stepper/R$styleable;->COUIStepperView:[I

    sget v2, Lcom/support/stepper/R$style;->COUIStepperViewDefStyle:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/stepper/R$styleable;->COUIStepperView_couiMaximum:I

    const/16 v0, 0x270f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Lcom/support/stepper/R$styleable;->COUIStepperView_couiMinimum:I

    const/16 v1, -0x3e7

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lcom/support/stepper/R$styleable;->COUIStepperView_couiDefStep:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/support/stepper/R$styleable;->COUIStepperView_couiUnit:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mUnit:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->initAttr(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-direct {p1}, Lcom/coui/appcompat/stepper/ObservableStep;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMaximum(I)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMinimum(I)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setCurStep(I)V

    return-void
.end method

.method public minus()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {v0}, Lcom/coui/appcompat/stepper/ObservableStep;->getStep()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getUnit()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/stepper/ObservableStep;->setStep(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getNumForMaxWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMaximum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mValueText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public plus()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {v0}, Lcom/coui/appcompat/stepper/ObservableStep;->getStep()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getUnit()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/stepper/ObservableStep;->setStep(I)V

    return-void
.end method

.method public refresh()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/stepper/R$styleable;->COUIStepperView:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;->initAttr(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-virtual {v0}, Lcom/coui/appcompat/stepper/LongPressProxy;->release()V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusLongPressProxy:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-virtual {v0}, Lcom/coui/appcompat/stepper/LongPressProxy;->release()V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mListener:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    return-void
.end method

.method public setCurStep(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->setStep(I)V

    return-void
.end method

.method public setMaximum(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->setMaximum(I)V

    return-void
.end method

.method public setMinimum(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mStep:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->setMinimum(I)V

    return-void
.end method

.method public setOnStepChangeListener(Lcom/coui/appcompat/stepper/OnStepChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mListener:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    return-void
.end method

.method public setUnit(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mUnit:I

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p1}, Lcom/coui/appcompat/stepper/ObservableStep;->getStep()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mPlusImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMaximum()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mMinusImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMinimum()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mValueText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->mListener:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/stepper/OnStepChangeListener;->onStepChanged(II)V

    :cond_2
    return-void
.end method
