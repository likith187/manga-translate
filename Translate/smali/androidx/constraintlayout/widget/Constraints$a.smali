.class public Landroidx/constraintlayout/widget/Constraints$a;
.super Landroidx/constraintlayout/widget/ConstraintLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:Z

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/Constraints$a;->a:F

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->b:Z

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->c:F

    .line 5
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->d:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->e:F

    .line 7
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->f:F

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/Constraints$a;->g:F

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/Constraints$a;->h:F

    .line 10
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->i:F

    .line 11
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->j:F

    .line 12
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->k:F

    .line 13
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->l:F

    .line 14
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$a;->m:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->a:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->b:Z

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->c:F

    .line 19
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->d:F

    .line 20
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->e:F

    .line 21
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->f:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->g:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->h:F

    .line 24
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->i:F

    .line 25
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->j:F

    .line 26
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->k:F

    .line 27
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->l:F

    .line 28
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->m:F

    .line 29
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 32
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_0

    .line 33
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->a:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->a:F

    goto/16 :goto_1

    .line 34
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_1

    .line 35
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->c:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->c:F

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->b:Z

    goto/16 :goto_1

    .line 37
    :cond_1
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_2

    .line 38
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->e:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->e:F

    goto/16 :goto_1

    .line 39
    :cond_2
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_3

    .line 40
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->f:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->f:F

    goto/16 :goto_1

    .line 41
    :cond_3
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_4

    .line 42
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->d:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->d:F

    goto :goto_1

    .line 43
    :cond_4
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_5

    .line 44
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->g:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->g:F

    goto :goto_1

    .line 45
    :cond_5
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_6

    .line 46
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->h:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->h:F

    goto :goto_1

    .line 47
    :cond_6
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_7

    .line 48
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->i:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->i:F

    goto :goto_1

    .line 49
    :cond_7
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_8

    .line 50
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->j:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->j:F

    goto :goto_1

    .line 51
    :cond_8
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_9

    .line 52
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->k:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->k:F

    goto :goto_1

    .line 53
    :cond_9
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_a

    .line 54
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->l:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->l:F

    goto :goto_1

    .line 55
    :cond_a
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_b

    .line 56
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->m:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->m:F

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 57
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
