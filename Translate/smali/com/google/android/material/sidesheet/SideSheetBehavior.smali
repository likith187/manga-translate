.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

# interfaces
.implements Lg4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;,
        Lcom/google/android/material/sidesheet/SideSheetBehavior$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;",
        "Lg4/b;"
    }
.end annotation


# static fields
.field private static final C:I

.field private static final D:I


# instance fields
.field private final A:Ljava/util/Set;

.field private final B:Landroidx/customview/widget/c$c;

.field private a:Lcom/google/android/material/sidesheet/c;

.field private b:F

.field private c:Lcom/google/android/material/shape/i;

.field private f:Landroid/content/res/ColorStateList;

.field private h:Lcom/google/android/material/shape/n;

.field private final i:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

.field private j:F

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroidx/customview/widget/c;

.field private o:Z

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/lang/ref/WeakReference;

.field private v:Ljava/lang/ref/WeakReference;

.field private w:I

.field private x:Landroid/view/VelocityTracker;

.field private y:Lg4/h;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$string;->side_sheet_accessibility_pane_title:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->C:I

    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SideSheet:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->D:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Z

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    .line 5
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    const v0, 0x3dcccccd    # 0.1f

    .line 6
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:F

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w:I

    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:Ljava/util/Set;

    .line 9
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->B:Landroidx/customview/widget/c$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Z

    const/4 v1, 0x5

    .line 13
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    .line 14
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    const v1, 0x3dcccccd    # 0.1f

    .line 15
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:F

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w:I

    .line 17
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:Ljava/util/Set;

    .line 18
    new-instance v2, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->B:Landroidx/customview/widget/c$c;

    .line 19
    sget-object v2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 20
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_backgroundTint:I

    .line 22
    invoke-static {p1, v2, v3}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:Landroid/content/res/ColorStateList;

    .line 23
    :cond_0
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 24
    sget v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;->D:I

    .line 25
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/material/shape/n;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/n$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Lcom/google/android/material/shape/n;

    .line 26
    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_coplanarSiblingViewId:I

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 27
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_coplanarSiblingViewId:I

    .line 28
    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 29
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->T(I)V

    .line 30
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(Landroid/content/Context;)V

    .line 31
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_android_elevation:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:F

    .line 32
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setDraggable(Z)V

    .line 33
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:F

    return-void
.end method

.method private F()Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private G()Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->F()Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private H()Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->F()Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private I(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->W()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n(FF)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    invoke-virtual {p0}, Landroidx/customview/widget/c;->z()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private J(F)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/c;->k(F)Z

    move-result p0

    return p0
.end method

.method private K(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/core/view/m0;->N(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private L(Landroid/view/View;IZ)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->B(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->E()Landroidx/customview/widget/c;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/customview/widget/c;->O(II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/c;->Q(Landroid/view/View;II)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private synthetic M(ILandroid/view/View;Ld0/k$a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic N(Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    const/4 v0, 0x0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-static {p2, v0, p4}, Lx3/a;->c(IIF)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/sidesheet/c;->o(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic O(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Y(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private Q(Landroid/view/View;Ld0/h$a;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q(I)Ld0/k;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Landroidx/core/view/m0;->e0(Landroid/view/View;Ld0/h$a;Ljava/lang/CharSequence;Ld0/k;)V

    return-void
.end method

.method private R()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private S(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->K(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private U(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/c;->j()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Lcom/google/android/material/sidesheet/b;

    invoke-direct {p1, p0}, Lcom/google/android/material/sidesheet/b;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Lcom/google/android/material/shape/n;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->H()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Lcom/google/android/material/shape/n;

    invoke-virtual {p1}, Lcom/google/android/material/shape/n;->v()Lcom/google/android/material/shape/n$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/n$b;->M(F)Lcom/google/android/material/shape/n$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/n$b;->B(F)Lcom/google/android/material/shape/n$b;

    invoke-virtual {p1}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a0(Lcom/google/android/material/shape/n;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    new-instance p1, Lcom/google/android/material/sidesheet/a;

    invoke-direct {p1, p0}, Lcom/google/android/material/sidesheet/a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Lcom/google/android/material/shape/n;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->G()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Lcom/google/android/material/shape/n;

    invoke-virtual {p1}, Lcom/google/android/material/shape/n;->v()Lcom/google/android/material/shape/n$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/n$b;->H(F)Lcom/google/android/material/shape/n$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/n$b;->w(F)Lcom/google/android/material/shape/n$b;

    invoke-virtual {p1}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a0(Lcom/google/android/material/shape/n;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sheet edge position value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Must be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private V(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    iget p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    invoke-static {p1, p2}, Landroidx/core/view/j;->b(II)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->U(I)V

    return-void
.end method

.method private W()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private X(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/core/view/m0;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Y(Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->L(Landroid/view/View;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;->b(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    :goto_0
    return-void
.end method

.method private Z()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/sidesheet/c;->o(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/sidesheet/SideSheetBehavior;ILandroid/view/View;Ld0/k$a;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->M(ILandroid/view/View;Ld0/k$a;)Z

    move-result p0

    return p0
.end method

.method private a0(Lcom/google/android/material/shape/n;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Lcom/google/android/material/shape/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->O(I)V

    return-void
.end method

.method private b0(Landroid/view/View;)V
    .locals 1

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->N(Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Lcom/google/android/material/sidesheet/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Z

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;FF)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o(Landroid/view/View;FF)I

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Y(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    return p0
.end method

.method static synthetic l(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Landroidx/customview/widget/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    return-object p0
.end method

.method private m(ILandroid/view/View;)I
    .locals 2

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/c;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/c;->h(Landroid/view/View;)I

    move-result p0

    sub-int p0, p1, p0

    :goto_0
    return p0
.end method

.method private n(FF)F
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method private o(Landroid/view/View;FF)I
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->J(F)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/sidesheet/c;->m(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/c;->l(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    invoke-static {p2, p3}, Lcom/google/android/material/sidesheet/d;->a(FF)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getExpandedOffset()I

    move-result p2

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/c;->e()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p2, p0, :cond_1

    :cond_4
    :goto_0
    return v1
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private q(I)Ld0/k;
    .locals 1

    new-instance v0, Ll4/a;

    invoke-direct {v0, p0, p1}, Ll4/a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    return-object v0
.end method

.method private r(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Lcom/google/android/material/shape/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/material/shape/i;

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Lcom/google/android/material/shape/n;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Lcom/google/android/material/shape/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Lcom/google/android/material/shape/i;

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1010031

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Lcom/google/android/material/shape/i;

    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setTint(I)V

    :goto_0
    return-void
.end method

.method private s(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p1, p2}, Lcom/google/android/material/sidesheet/c;->b(I)F

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

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

.method private t(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Landroidx/core/view/m0;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->C:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/core/view/m0;->m0(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private u(IIII)I
    .locals 0

    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    if-eq p1, p2, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    const/high16 p0, -0x80000000

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private updateAccessibilityActions()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroidx/core/view/m0;->c0(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Landroidx/core/view/m0;->c0(Landroid/view/View;I)V

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    sget-object v1, Ld0/h$a;->y:Ld0/h$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Q(Landroid/view/View;Ld0/h$a;I)V

    :cond_2
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    sget-object v1, Ld0/h$a;->w:Ld0/h$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Q(Landroid/view/View;Ld0/h$a;I)V

    :cond_3
    return-void
.end method

.method private w()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {v1, v2}, Lcom/google/android/material/sidesheet/c;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    new-instance v3, Ll4/c;

    invoke-direct {v3, p0, v2, v1, v0}, Ll4/c;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;)V

    return-object v3
.end method

.method private y()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    const/4 v0, 0x5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/c;->j()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method A()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    return p0
.end method

.method B(I)I
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/c;->e()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state to get outer edge offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getExpandedOffset()I

    move-result p0

    return p0
.end method

.method C()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:I

    return p0
.end method

.method D()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    return p0
.end method

.method E()Landroidx/customview/widget/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    return-object p0
.end method

.method public T(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w:I

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p()V

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/m0;->O(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public cancelBackProgress()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg4/h;->f()V

    return-void
.end method

.method public getExpandedOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/c;->d()I

    move-result p0

    return p0
.end method

.method public getHideFriction()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:F

    return p0
.end method

.method getSignificantVelocityThreshold()I
    .locals 0

    const/16 p0, 0x1f4

    return p0
.end method

.method public handleBackInvoked()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lg4/a;->c()Landroidx/activity/b;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y()I

    move-result v2

    new-instance v3, Lcom/google/android/material/sidesheet/SideSheetBehavior$b;

    invoke-direct {v3, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$b;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lg4/h;->h(Landroidx/activity/b;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    return-void
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onDetachedFromLayoutParams()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->X(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:Z

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->R()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:Z

    return v0

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z:I

    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:Z

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p3}, Landroidx/customview/widget/c;->P(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move p2, v0

    :goto_1
    return p2
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    invoke-static {p1}, Landroidx/core/view/m0;->s(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/m0;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    new-instance v0, Lg4/h;

    invoke-direct {v0, p2}, Lg4/h;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Lcom/google/android/material/shape/i;

    if-eqz v0, :cond_2

    invoke-static {p2, v0}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Lcom/google/android/material/shape/i;

    iget v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroidx/core/view/m0;->r(Landroid/view/View;)F

    move-result v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/i;->setElevation(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-static {p2, v0}, Landroidx/core/view/m0;->o0(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b0(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateAccessibilityActions()V

    invoke-static {p2}, Landroidx/core/view/m0;->t(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, v1}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    :cond_4
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->V(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->B:Landroidx/customview/widget/c$c;

    invoke-static {p1, v0}, Landroidx/customview/widget/c;->o(Landroid/view/ViewGroup;Landroidx/customview/widget/c$c;)Landroidx/customview/widget/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/c;->h(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p3, p1}, Lcom/google/android/material/sidesheet/c;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {v2, p3}, Lcom/google/android/material/sidesheet/c;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p3

    goto :goto_1

    :cond_7
    const/4 p3, 0x0

    :goto_1
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    invoke-direct {p0, v0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m(ILandroid/view/View;)I

    move-result p3

    invoke-static {p2, p3}, Landroidx/core/view/m0;->T(Landroid/view/View;I)V

    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x1

    invoke-direct {p0, p3, v1, v2, p4}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(IIII)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p4, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, p1

    add-int/2addr p4, p6

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0, p5, p4, v2, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(IIII)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/View;->measure(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1

    check-cast p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_0
    iget p1, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->a:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x5

    :cond_2
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    return-object v0
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    invoke-virtual {v0, p3}, Landroidx/customview/widget/c;->F(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->R()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->W()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:Z

    if-nez p1, :cond_5

    invoke-direct {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->I(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Landroidx/customview/widget/c;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/c;->b(Landroid/view/View;I)V

    :cond_5
    iget-boolean p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Z

    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Ll4/b;

    invoke-direct {v1, p0, p1}, Ll4/b;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->S(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_4

    const-string p1, "DRAGGING"

    goto :goto_3

    :cond_4
    const-string p1, "SETTLING"

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should not be set externally."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setStateInternal(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b0(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateAccessibilityActions()V

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lcom/google/android/material/sidesheet/c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/sidesheet/c;->n(Landroid/view/View;F)Z

    move-result p0

    return p0
.end method

.method public shouldSkipSmoothAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public startBackProgress(Landroidx/activity/b;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lg4/h;->j(Landroidx/activity/b;)V

    return-void
.end method

.method public updateBackProgress(Landroidx/activity/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Lg4/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lg4/h;->l(Landroidx/activity/b;I)V

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Z()V

    return-void
.end method

.method v()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    return p0
.end method

.method public x()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method z()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method
