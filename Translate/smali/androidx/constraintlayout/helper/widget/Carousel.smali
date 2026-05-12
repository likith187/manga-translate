.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$b;
    }
.end annotation


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:I

.field private G:I

.field H:I

.field I:Ljava/lang/Runnable;

.field private final q:Ljava/util/ArrayList;

.field private r:I

.field private s:I

.field private t:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private u:I

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    .line 4
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    .line 6
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:Z

    .line 7
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    .line 10
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    const v1, 0x3f666666    # 0.9f

    .line 11
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:F

    .line 12
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    const/4 p1, 0x4

    .line 13
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 15
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:F

    .line 16
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:I

    const/16 p1, 0xc8

    .line 17
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->G:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->H:I

    .line 19
    new-instance p1, Landroidx/constraintlayout/helper/widget/Carousel$a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/Carousel$a;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->I:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    .line 23
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    const/4 v1, -0x1

    .line 24
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    .line 25
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:Z

    .line 26
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    .line 27
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    .line 28
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    .line 29
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    const v2, 0x3f666666    # 0.9f

    .line 30
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:F

    .line 31
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    const/4 v0, 0x4

    .line 32
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 34
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:F

    .line 35
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:I

    const/16 v0, 0xc8

    .line 36
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->G:I

    .line 37
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->H:I

    .line 38
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$a;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->I:Ljava/lang/Runnable;

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->J(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 42
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    .line 43
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    .line 45
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:Z

    .line 46
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    .line 48
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    const v1, 0x3f666666    # 0.9f

    .line 50
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:F

    .line 51
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    const/4 p3, 0x4

    .line 52
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/4 p3, 0x1

    .line 53
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 54
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:I

    const/16 p3, 0xc8

    .line 56
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->G:I

    .line 57
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->H:I

    .line 58
    new-instance p3, Landroidx/constraintlayout/helper/widget/Carousel$a;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/helper/widget/Carousel$a;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->I:Ljava/lang/Runnable;

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->J(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic F(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object p0
.end method

.method static synthetic G(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->K()V

    return-void
.end method

.method static synthetic H(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    return p0
.end method

.method static synthetic I(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private J(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_b

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    goto/16 :goto_1

    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    goto/16 :goto_1

    :cond_1
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    goto :goto_1

    :cond_2
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    if-ne v1, v2, :cond_3

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    goto :goto_1

    :cond_3
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    goto :goto_1

    :cond_4
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    if-ne v1, v2, :cond_5

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    goto :goto_1

    :cond_5
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    if-ne v1, v2, :cond_6

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:F

    goto :goto_1

    :cond_6
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    goto :goto_1

    :cond_7
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    if-ne v1, v2, :cond_8

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:F

    goto :goto_1

    :cond_8
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    if-ne v1, v2, :cond_9

    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:Z

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method

.method private K()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->H:I

    return-void
.end method

.method public d(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 1

    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    if-ne p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    :cond_1
    :goto_0
    iget-boolean p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    throw p1

    :cond_2
    throw p1
.end method

.method public getCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    if-ne v4, v2, :cond_0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->V(I)Landroidx/constraintlayout/motion/widget/p$b;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/p$b;->G(I)V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->V(I)Landroidx/constraintlayout/motion/widget/p$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/p$b;->G(I)V

    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->K()V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$b;)V
    .locals 0

    return-void
.end method

.method public setInfinite(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:Z

    return-void
.end method
