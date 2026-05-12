.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$k;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$m;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;
    }
.end annotation


# static fields
.field private static final L:I

.field static final M:Landroid/util/Property;

.field static final N:Landroid/util/Property;

.field static final O:Landroid/util/Property;

.field static final P:Landroid/util/Property;


# instance fields
.field private final A:I

.field private B:I

.field private C:I

.field private final D:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

.field private E:Z

.field private F:Z

.field private G:Z

.field protected H:Landroid/content/res/ColorStateList;

.field private I:I

.field private J:I

.field private final K:I

.field private u:I

.field private final v:Lcom/google/android/material/floatingactionbutton/a;

.field private final w:Lcom/google/android/material/floatingactionbutton/f;

.field private final x:Lcom/google/android/material/floatingactionbutton/f;

.field private final y:Lcom/google/android/material/floatingactionbutton/f;

.field private final z:Lcom/google/android/material/floatingactionbutton/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->L:I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;

    const-string v1, "width"

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->M:Landroid/util/Property;

    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;

    const-string v1, "height"

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->N:Landroid/util/Property;

    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;

    const-string v1, "paddingStart"

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->O:Landroid/util/Property;

    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

    const-string v1, "paddingEnd"

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->P:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->extendedFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 3
    sget v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->L:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lm4/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v10, 0x0

    .line 4
    iput v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    .line 5
    new-instance v1, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lcom/google/android/material/floatingactionbutton/a;

    .line 6
    new-instance v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$m;

    invoke-direct {v11, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$m;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v11, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:Lcom/google/android/material/floatingactionbutton/f;

    .line 7
    new-instance v12, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$k;

    invoke-direct {v12, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$k;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v12, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Lcom/google/android/material/floatingactionbutton/f;

    const/4 v13, 0x1

    .line 8
    iput-boolean v13, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    .line 9
    iput-boolean v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:Z

    .line 10
    iput-boolean v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Z

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 12
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v1, v14, v7}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 13
    sget-object v3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton:[I

    new-array v6, v10, [I

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 16
    invoke-static {v14, v1, v2}, Lx3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lx3/h;

    move-result-object v2

    .line 17
    sget v3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 18
    invoke-static {v14, v1, v3}, Lx3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lx3/h;

    move-result-object v3

    .line 19
    sget v4, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 20
    invoke-static {v14, v1, v4}, Lx3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lx3/h;

    move-result-object v4

    .line 21
    sget v5, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 22
    invoke-static {v14, v1, v5}, Lx3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lx3/h;

    move-result-object v5

    .line 23
    sget v6, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_collapsedSize:I

    const/4 v15, -0x1

    .line 24
    invoke-virtual {v1, v6, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:I

    .line 25
    sget v6, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_extendStrategy:I

    .line 26
    invoke-virtual {v1, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->K:I

    .line 27
    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->A(Landroid/view/View;)I

    move-result v15

    iput v15, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:I

    .line 28
    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->z(Landroid/view/View;)I

    move-result v15

    iput v15, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:I

    .line 29
    new-instance v15, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v15}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    .line 30
    new-instance v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;

    .line 31
    invoke-direct {v0, v6}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v(I)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;

    move-result-object v6

    invoke-direct {v10, v0, v15, v6, v13}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;Z)V

    iput-object v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/f;

    .line 32
    new-instance v6, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;

    new-instance v13, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

    invoke-direct {v13, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    const/4 v7, 0x0

    invoke-direct {v6, v0, v15, v13, v7}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;Z)V

    iput-object v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/f;

    .line 33
    invoke-interface {v11, v2}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    .line 34
    invoke-interface {v12, v3}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    .line 35
    invoke-interface {v10, v4}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    .line 36
    invoke-interface {v6, v5}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    .line 37
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    sget-object v1, Lcom/google/android/material/shape/n;->m:Lcom/google/android/material/shape/d;

    move-object/from16 v2, p2

    .line 39
    invoke-static {v14, v2, v8, v9, v1}, Lcom/google/android/material/shape/n;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/d;)Lcom/google/android/material/shape/n$b;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z()V

    return-void
.end method

.method private A()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->O(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic i(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:I

    return p0
.end method

.method static synthetic k(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->J:I

    return p0
.end method

.method static synthetic l(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->J:I

    return p1
.end method

.method static synthetic m(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->I:I

    return p0
.end method

.method static synthetic n(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->I:I

    return p1
.end method

.method static synthetic o(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ILcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(ILcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V

    return-void
.end method

.method static synthetic p(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    return p0
.end method

.method static synthetic q(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    return p1
.end method

.method static synthetic r(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:Z

    return p1
.end method

.method static synthetic s(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    return p1
.end method

.method static synthetic t(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x()Z

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w()Z

    move-result p0

    return p0
.end method

.method private v(I)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;
    .locals 3

    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;)V

    new-instance v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$n;)V

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-object v2

    :cond_0
    return-object v1

    :cond_1
    return-object v0
.end method

.method private w()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private x()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    if-eq p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private y(ILcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V
    .locals 3

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/f;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown strategy type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/f;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Lcom/google/android/material/floatingactionbutton/f;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:Lcom/google/android/material/floatingactionbutton/f;

    :goto_0
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/f;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/f;->c()V

    invoke-interface {v1, p2}, Lcom/google/android/material/floatingactionbutton/f;->g(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V

    return-void

    :cond_5
    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_6

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->I:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->J:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->I:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->J:I

    :cond_7
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->measure(II)V

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/f;->e()Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private z()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->H:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method protected B(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    return-object p0
.end method

.method getCollapsedPadding()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getCollapsedSize()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:I

    if-gez v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/m0;->A(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/core/view/m0;->z(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getExtendMotionSpec()Lx3/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->d()Lx3/h;

    move-result-object p0

    return-object p0
.end method

.method public getHideMotionSpec()Lx3/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->d()Lx3/h;

    move-result-object p0

    return-object p0
.end method

.method public getShowMotionSpec()Lx3/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->d()Lx3/h;

    move-result-object p0

    return-object p0
.end method

.method public getShrinkMotionSpec()Lx3/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->d()Lx3/h;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->c()V

    :cond_0
    return-void
.end method

.method public setAnimateShowBeforeLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Z

    return-void
.end method

.method public setExtendMotionSpec(Lx3/h;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lx3/h;->d(Landroid/content/Context;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lx3/h;)V

    return-void
.end method

.method public setExtended(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/f;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/f;

    :goto_0
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->c()V

    return-void
.end method

.method public setHideMotionSpec(Lx3/h;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lx3/h;->d(Landroid/content/Context;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lx3/h;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:Z

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/m0;->A(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:I

    invoke-static {p0}, Landroidx/core/view/m0;->z(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:I

    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:Z

    if-nez p2, :cond_0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:I

    iput p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:I

    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lx3/h;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lx3/h;->d(Landroid/content/Context;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lx3/h;)V

    return-void
.end method

.method public setShrinkMotionSpec(Lx3/h;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->i(Lx3/h;)V

    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lx3/h;->d(Landroid/content/Context;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lx3/h;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z()V

    return-void
.end method
