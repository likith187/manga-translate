.class Landroidx/constraintlayout/motion/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static G:[Ljava/lang/String;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:I

.field public a:F

.field b:I

.field c:I

.field f:Ljava/util/LinkedHashMap;

.field h:I

.field i:[D

.field j:[D

.field private k:F

.field private l:Z

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Lm/c;

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "height"

    const-string v5, "pathRotate"

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/l;->G:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->b:I

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/l;->f:Ljava/util/LinkedHashMap;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->h:I

    const/16 v2, 0x12

    new-array v3, v2, [D

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/l;->i:[D

    new-array v2, v2, [D

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/l;->j:[D

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/l;->l:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->r:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->s:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->t:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->u:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->v:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->x:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->D:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->E:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->F:I

    return-void
.end method

.method private e(FF)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method


# virtual methods
.method public a(Ljava/util/HashMap;I)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/d;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "alpha"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "transitionPathRotate"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "elevation"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "rotation"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "transformPivotY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "transformPivotX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "scaleY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_7
    const-string v7, "scaleX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_8
    const-string v7, "progress"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_9
    const-string v7, "translationZ"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_a
    const-string v7, "translationY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_1

    :cond_c
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_b
    const-string v7, "translationX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_1

    :cond_d
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_c
    const-string v7, "rotationY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_1

    :cond_e
    move v6, v0

    goto :goto_1

    :sswitch_d
    const-string v7, "rotationX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_1

    :cond_f
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    const-string v4, "CUSTOM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "MotionPaths"

    if-eqz v4, :cond_11

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/l;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/l;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/a;

    instance-of v6, v3, Lq/d$b;

    if-eqz v6, :cond_10

    check-cast v3, Lq/d$b;

    invoke-virtual {v3, p2, v4}, Lq/d$b;->i(ILandroidx/constraintlayout/widget/a;)V

    goto/16 :goto_0

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ViewSpline not a CustomSet frame = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/a;->e()F

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN spline "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_2

    :cond_12
    iget v4, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    :goto_2
    invoke-virtual {v3, p2, v4}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->D:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_3

    :cond_13
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->D:F

    :goto_3
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4

    :cond_14
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    :goto_4
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_5

    :cond_15
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    :goto_5
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->s:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_6

    :cond_16
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->s:F

    :goto_6
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->r:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_7

    :cond_17
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->r:F

    :goto_7
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_8

    :cond_18
    iget v4, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    :goto_8
    invoke-virtual {v3, p2, v4}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    iget v4, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    :goto_9
    invoke-virtual {v3, p2, v4}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->E:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_a

    :cond_1a
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->E:F

    :goto_a
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->v:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_b

    :cond_1b
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->v:F

    :goto_b
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->u:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_c

    :cond_1c
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->u:F

    :goto_c
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_b
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->t:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_d

    :cond_1d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->t:F

    :goto_d
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_e

    :cond_1e
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    :goto_e
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :pswitch_d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_f

    :cond_1f
    iget v5, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    :goto_f
    invoke-virtual {v3, p2, v5}, Lm/j;->c(IF)V

    goto/16 :goto_0

    :cond_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/l;->l:Z

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->r:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->s:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->t:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->u:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/l;->v:F

    return-void
.end method

.method public c(Landroidx/constraintlayout/widget/c$a;)V
    .locals 4

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget v1, v0, Landroidx/constraintlayout/widget/c$d;->c:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->b:I

    iget v2, v0, Landroidx/constraintlayout/widget/c$d;->b:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->c:I

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroidx/constraintlayout/widget/c$d;->d:F

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/c$e;->m:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/l;->l:Z

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->n:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->b:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->c:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->d:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->e:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->f:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->g:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->r:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->h:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->s:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->j:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->t:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$e;->k:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->u:F

    iget v0, v0, Landroidx/constraintlayout/widget/c$e;->l:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->v:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    iget-object v0, v0, Landroidx/constraintlayout/widget/c$c;->d:Ljava/lang/String;

    invoke-static {v0}, Lm/c;->c(Ljava/lang/String;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/l;->w:Lm/c;

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    iget v1, v0, Landroidx/constraintlayout/widget/c$c;->i:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->D:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$c;->f:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->x:I

    iget v0, v0, Landroidx/constraintlayout/widget/c$c;->b:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->F:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget v0, v0, Landroidx/constraintlayout/widget/c$d;->e:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->E:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/a;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/l;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/constraintlayout/motion/widget/l;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/l;->d(Landroidx/constraintlayout/motion/widget/l;)I

    move-result p0

    return p0
.end method

.method public d(Landroidx/constraintlayout/motion/widget/l;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/l;->y:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/l;->y:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method f(Landroidx/constraintlayout/motion/widget/l;Ljava/util/HashSet;)V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->k:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    const-string v1, "alpha"

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/l;->m:F

    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "elevation"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->c:I

    iget v2, p1, Landroidx/constraintlayout/motion/widget/l;->c:I

    if-eq v0, v2, :cond_3

    iget v3, p0, Landroidx/constraintlayout/motion/widget/l;->b:I

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->n:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "rotation"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->D:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroidx/constraintlayout/motion/widget/l;->D:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "transitionPathRotate"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->E:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Landroidx/constraintlayout/motion/widget/l;->E:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "progress"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->o:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "rotationX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->a:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "rotationY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->r:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->r:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "transformPivotX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->s:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->s:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "transformPivotY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->p:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "scaleX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->q:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "scaleY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->t:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->t:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "translationX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->u:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/l;->u:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "translationY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->v:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/l;->v:F

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/l;->e(FF)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "translationZ"

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method g(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/l;->z:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->A:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/l;->B:F

    iput p4, p0, Landroidx/constraintlayout/motion/widget/l;->C:F

    return-void
.end method

.method public h(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/c;II)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/motion/widget/l;->g(FFFF)V

    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/c;->B(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/l;->c(Landroidx/constraintlayout/widget/c$a;)V

    const/4 p1, 0x1

    const/high16 p2, 0x42b40000    # 90.0f

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    add-float/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    const/high16 p2, 0x43340000    # 180.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    const/high16 p2, 0x43b40000    # 360.0f

    sub-float/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    :cond_2
    :goto_0
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/l;->g(FFFF)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/l;->b(Landroid/view/View;)V

    return-void
.end method
