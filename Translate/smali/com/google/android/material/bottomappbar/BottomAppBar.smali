.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# static fields
.field private static final D:I

.field private static final E:I

.field private static final F:I


# instance fields
.field private A:I

.field B:Landroid/animation/AnimatorListenerAdapter;

.field C:Lx3/k;

.field private a:Ljava/lang/Integer;

.field private final b:Lcom/google/android/material/shape/i;

.field private c:Landroid/animation/Animator;

.field private f:Landroid/animation/Animator;

.field private h:I

.field private i:I

.field private j:I

.field private final k:I

.field private l:I

.field private m:I

.field private final n:Z

.field private o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private s:I

.field private t:Ljava/util/ArrayList;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->D:I

    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:I

    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 3
    sget v6, Lcom/google/android/material/bottomappbar/BottomAppBar;->D:I

    invoke-static {p1, p2, p3, v6}, Lm4/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/google/android/material/shape/i;

    invoke-direct {p1}, Lcom/google/android/material/shape/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    const/4 v7, 0x0

    .line 5
    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    .line 6
    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:I

    .line 7
    iput-boolean v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:Z

    const/4 v8, 0x1

    .line 8
    iput-boolean v8, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:Z

    .line 9
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:Landroid/animation/AnimatorListenerAdapter;

    .line 10
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:Lx3/k;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 12
    sget-object v2, Lcom/google/android/material/R$styleable;->BottomAppBar:[I

    new-array v5, v7, [I

    move-object v0, v9

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 14
    sget v1, Lcom/google/android/material/R$styleable;->BottomAppBar_backgroundTint:I

    .line 15
    invoke-static {v9, v0, v1}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 16
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_navigationIconTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 17
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_navigationIconTint:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setNavigationIconTint(I)V

    .line 18
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_elevation:I

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 19
    sget v4, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleMargin:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    .line 20
    sget v5, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    .line 21
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    .line 22
    sget v10, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    .line 23
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    int-to-float v10, v10

    .line 24
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAlignmentMode:I

    .line 25
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    .line 26
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAnimationMode:I

    .line 27
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:I

    .line 28
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAnchorMode:I

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:I

    .line 29
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_removeEmbeddedFabElevation:I

    .line 30
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Z

    .line 31
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_menuAlignmentMode:I

    .line 32
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    .line 33
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_hideOnScroll:I

    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Z

    .line 34
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_paddingBottomSystemWindowInsets:I

    .line 35
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Z

    .line 36
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_paddingLeftSystemWindowInsets:I

    .line 37
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Z

    .line 38
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_paddingRightSystemWindowInsets:I

    .line 39
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Z

    .line 40
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAlignmentModeEndMargin:I

    .line 41
    invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    .line 42
    sget v3, Lcom/google/android/material/R$styleable;->BottomAppBar_addElevationShadow:I

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v11, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:I

    .line 45
    new-instance v0, Lcom/google/android/material/bottomappbar/b;

    invoke-direct {v0, v4, v5, v10}, Lcom/google/android/material/bottomappbar/b;-><init>(FFF)V

    .line 46
    invoke-static {}, Lcom/google/android/material/shape/n;->a()Lcom/google/android/material/shape/n$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/n$b;->D(Lcom/google/android/material/shape/g;)Lcom/google/android/material/shape/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/i;->setShadowCompatibilityMode(I)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1, v8}, Lcom/google/android/material/shape/i;->setShadowCompatibilityMode(I)V

    .line 50
    invoke-virtual {p0, v7}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    .line 51
    invoke-virtual {p0, v7}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 52
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/i;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    invoke-virtual {p1, v9}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    int-to-float v0, v2

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setElevation(F)V

    .line 55
    invoke-static {p1, v1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 56
    invoke-static {p0, p1}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$c;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-static {p0, p2, p3, v6, p1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n0(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method static synthetic B(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Z()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    return p0
.end method

.method static synthetic D(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    move-result p0

    return p0
.end method

.method static synthetic E(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getLeftInset()I

    move-result p0

    return p0
.end method

.method static synthetic F(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->f0(IZ)V

    return-void
.end method

.method static synthetic G(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getRightInset()I

    move-result p0

    return p0
.end method

.method static synthetic H(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:I

    return p0
.end method

.method static synthetic I(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic J(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o0(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V

    return-void
.end method

.method static synthetic K(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Z

    return p0
.end method

.method static synthetic L(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->S(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method static synthetic M(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:I

    return p0
.end method

.method static synthetic N(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    return-object p0
.end method

.method static synthetic O(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/b;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic P(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Z

    return p0
.end method

.method static synthetic Q(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:I

    return p1
.end method

.method static synthetic R(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Z

    return p0
.end method

.method private S(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$i;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$i;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:Lx3/k;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f(Lx3/k;)V

    return-void
.end method

.method private T()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->c:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private V(ILjava/util/List;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Z()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c0(I)F

    move-result p1

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "translationX"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabAlignmentAnimationDuration()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private W(IZLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabAlignmentAnimationDuration()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v1, [F

    aput v4, v5, v0

    const-string v6, "alpha"

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v3

    float-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_1

    new-array v4, v1, [F

    const/4 v7, 0x0

    aput v7, v4, v0

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v6

    float-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$g;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$g;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v4, p1, v0

    aput-object v5, p1, v1

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_2

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private X()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private Y()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private Z()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private a0()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v2, :cond_1

    :cond_2
    return-object v0

    :cond_3
    return-object v1
.end method

.method private c0(I)F
    .locals 5

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0()Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:I

    :goto_0
    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    add-int/2addr p1, v3

    :goto_1
    add-int/2addr v2, p1

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v2

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    mul-int/2addr p0, v1

    int-to-float p0, p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private d0()Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Z()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic e0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private f0(IZ)V
    .locals 3

    invoke-static {p0}, Landroidx/core/view/m0;->O(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:Z

    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->h0(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0()Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v1

    move p2, p1

    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->W(IZLjava/util/List;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Landroid/animation/Animator;

    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$f;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$f;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private g0(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    if-eq v0, p1, :cond_3

    invoke-static {p0}, Landroidx/core/view/m0;->O(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->V(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->U(ILjava/util/List;)V

    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->F:I

    sget-object v2, Lx3/a;->a:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, v2}, Lg4/i;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->c:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$d;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$d;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->c:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBottomInset()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:I

    return p0
.end method

.method private getFabAlignmentAnimationDuration()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:I

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Lg4/i;->f(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private getFabTranslationX()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c0(I)F

    move-result p0

    return p0
.end method

.method private getFabTranslationY()F
    .locals 2

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/b;->d()F

    move-result p0

    neg-float p0, p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v1, p0

    neg-int p0, v1

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method private getLeftInset()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    return p0
.end method

.method private getRightInset()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:I

    return p0
.end method

.method private getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShapeAppearanceModel()Lcom/google/android/material/shape/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/n;->p()Lcom/google/android/material/shape/g;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/bottomappbar/b;

    return-object p0
.end method

.method public static synthetic h(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:Z

    return p0
.end method

.method private i0()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Landroid/animation/Animator;

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:Z

    return p1
.end method

.method private j0()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/b;->o(F)V

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    iget-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/i;->setInterpolation(F)V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    return p0
.end method

.method static synthetic l(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    return p0
.end method

.method static synthetic m(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    return p1
.end method

.method private m0(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n0(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lv/a;->n(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-object p1
.end method

.method static synthetic n(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Z

    return p0
.end method

.method private n0(Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 1

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$h;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    if-eqz p4, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:I

    return p0
.end method

.method private static o0(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    const/16 v0, 0x11

    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I

    :cond_0
    if-nez p0, :cond_1

    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I

    or-int/lit8 p0, p0, 0x50

    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I

    :cond_1
    return-void
.end method

.method static synthetic p(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:I

    return p1
.end method

.method static synthetic q(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->T()V

    return-void
.end method

.method static synthetic r(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0()V

    return-void
.end method

.method static synthetic s(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->i0()V

    return-void
.end method

.method static synthetic t(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Y()V

    return-void
.end method

.method static synthetic u(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->X()V

    return-void
.end method

.method static synthetic v(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->c:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic w(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c0(I)F

    move-result p0

    return p0
.end method

.method static synthetic x(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:Z

    return p0
.end method

.method static synthetic y(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic z(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:I

    return p0
.end method


# virtual methods
.method protected U(ILjava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Z()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Y()V

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$e;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b0(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 5

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne p2, v2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    goto :goto_0

    :cond_2
    move p3, v1

    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroidx/appcompat/widget/Toolbar$g;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$g;

    iget v3, v3, Landroidx/appcompat/app/a$a;->gravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    const v4, 0x800003

    if-ne v3, v4, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_3
    if-eqz p2, :cond_7

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    neg-int v0, v0

    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/google/android/material/R$dimen;->m3_bottomappbar_horizontal_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    if-eqz p2, :cond_8

    :goto_5
    move v1, p0

    goto :goto_6

    :cond_8
    neg-int p0, p0

    goto :goto_5

    :cond_9
    :goto_6
    add-int/2addr p1, v0

    add-int/2addr p1, v1

    sub-int/2addr p3, p1

    return p3
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object p0
.end method

.method public getCradleVerticalOffset()F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/b;->d()F

    move-result p0

    return p0
.end method

.method public getFabAlignmentMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    return p0
.end method

.method public getFabAlignmentModeEndMargin()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    return p0
.end method

.method public getFabAnchorMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:I

    return p0
.end method

.method public getFabAnimationMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:I

    return p0
.end method

.method public getFabCradleMargin()F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/b;->f()F

    move-result p0

    return p0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/b;->g()F

    move-result p0

    return p0
.end method

.method public getHideOnScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Z

    return p0
.end method

.method public getMenuAlignmentMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    return p0
.end method

.method public h0(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    :cond_0
    return-void
.end method

.method public k0(II)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:Z

    iget-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->f0(IZ)V

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->g0(I)V

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    return-void
.end method

.method l0(I)Z
    .locals 1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/b;->h()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/b;->n(F)V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/j;->f(Landroid/view/View;Lcom/google/android/material/shape/i;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->T()V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0()V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/view/m0;->O(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/material/bottomappbar/a;

    invoke-direct {p2, p1}, Lcom/google/android/material/bottomappbar/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->i0()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->a:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->b:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->a:I

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:Z

    iput-boolean p0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->b:Z

    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-static {p0, p1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/b;->j(F)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p1}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/i;->setElevation(F)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p1}, Lcom/google/android/material/shape/i;->getShadowRadius()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {v0}, Lcom/google/android/material/shape/i;->getShadowOffsetY()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->e(Landroid/view/View;I)V

    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k0(II)V

    return-void
.end method

.method public setFabAlignmentModeEndMargin(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0()V

    :cond_0
    return-void
.end method

.method public setFabAnchorMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:I

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0()V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o0(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:I

    return-void
.end method

.method setFabCornerSize(F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/b;->e()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/b;->k(F)V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/b;->l(F)V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/b;->m(F)V

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Z

    return-void
.end method

.method public setMenuAlignmentMode(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_0
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIconTint(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
