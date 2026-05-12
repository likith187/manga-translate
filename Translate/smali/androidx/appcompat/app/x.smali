.class public Landroidx/appcompat/app/x;
.super Landroidx/appcompat/app/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/x$d;
    }
.end annotation


# static fields
.field private static final E:Landroid/view/animation/Interpolator;

.field private static final F:Landroid/view/animation/Interpolator;


# instance fields
.field A:Z

.field final B:Landroidx/core/view/v0;

.field final C:Landroidx/core/view/v0;

.field final D:Landroidx/core/view/x0;

.field a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field e:Landroidx/appcompat/widget/ActionBarContainer;

.field f:Landroidx/appcompat/widget/t;

.field g:Landroidx/appcompat/widget/ActionBarContextView;

.field h:Landroid/view/View;

.field i:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field private j:Ljava/util/ArrayList;

.field private k:I

.field private l:Z

.field m:Landroidx/appcompat/app/x$d;

.field n:Landroidx/appcompat/view/b;

.field o:Landroidx/appcompat/view/b$a;

.field private p:Z

.field private q:Ljava/util/ArrayList;

.field private r:Z

.field private s:I

.field t:Z

.field u:Z

.field v:Z

.field private w:Z

.field private x:Z

.field y:Landroidx/appcompat/view/h;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/x;->E:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/x;->F:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/x;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/app/x;->k:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/x;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/app/x;->s:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/x;->t:Z

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/app/x;->x:Z

    .line 8
    new-instance v0, Landroidx/appcompat/app/x$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/x$a;-><init>(Landroidx/appcompat/app/x;)V

    iput-object v0, p0, Landroidx/appcompat/app/x;->B:Landroidx/core/view/v0;

    .line 9
    new-instance v0, Landroidx/appcompat/app/x$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/x$b;-><init>(Landroidx/appcompat/app/x;)V

    iput-object v0, p0, Landroidx/appcompat/app/x;->C:Landroidx/core/view/v0;

    .line 10
    new-instance v0, Landroidx/appcompat/app/x$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/x$c;-><init>(Landroidx/appcompat/app/x;)V

    iput-object v0, p0, Landroidx/appcompat/app/x;->D:Landroidx/core/view/x0;

    .line 11
    iput-object p1, p0, Landroidx/appcompat/app/x;->c:Landroid/app/Activity;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/app/x;->E(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/x;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/x;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Landroidx/appcompat/app/x;->k:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/x;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Landroidx/appcompat/app/x;->s:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Landroidx/appcompat/app/x;->t:Z

    .line 22
    iput-boolean v0, p0, Landroidx/appcompat/app/x;->x:Z

    .line 23
    new-instance v0, Landroidx/appcompat/app/x$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/x$a;-><init>(Landroidx/appcompat/app/x;)V

    iput-object v0, p0, Landroidx/appcompat/app/x;->B:Landroidx/core/view/v0;

    .line 24
    new-instance v0, Landroidx/appcompat/app/x$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/x$b;-><init>(Landroidx/appcompat/app/x;)V

    iput-object v0, p0, Landroidx/appcompat/app/x;->C:Landroidx/core/view/v0;

    .line 25
    new-instance v0, Landroidx/appcompat/app/x$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/x$c;-><init>(Landroidx/appcompat/app/x;)V

    iput-object v0, p0, Landroidx/appcompat/app/x;->D:Landroidx/core/view/x0;

    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/x;->E(Landroid/view/View;)V

    return-void
.end method

.method private B(Landroid/view/View;)Landroidx/appcompat/widget/t;
    .locals 2

    instance-of p0, p1, Landroidx/appcompat/widget/t;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/appcompat/widget/t;

    return-object p1

    :cond_0
    instance-of p0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/t;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private D()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/x;->w:Z

    iget-object v1, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/x;->M(Z)V

    :cond_1
    return-void
.end method

.method private E(Landroid/view/View;)V
    .locals 5

    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/x;->B(Landroid/view/View;)Landroidx/appcompat/widget/t;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    iget-object p1, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p1}, Landroidx/appcompat/widget/t;->p()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v0, p0, Landroidx/appcompat/app/x;->l:Z

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/a;->b(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/x;->J(Z)V

    invoke-virtual {v2}, Landroidx/appcompat/view/a;->g()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/x;->H(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/x;->I(Z)V

    :cond_5
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/x;->G(F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private H(Z)V
    .locals 4

    iput-boolean p1, p0, Landroidx/appcompat/app/x;->r:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/t;->k(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    iget-object p1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/x;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    iget-object p1, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    iget-object v0, p0, Landroidx/appcompat/app/x;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/t;->k(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/x;->C()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/x;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/core/view/m0;->f0(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    iget-boolean v3, p0, Landroidx/appcompat/app/x;->r:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/t;->w(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean p0, p0, Landroidx/appcompat/app/x;->r:Z

    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private K()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    return p0
.end method

.method private L()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->w:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/x;->w:Z

    iget-object v1, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/x;->M(Z)V

    :cond_1
    return-void
.end method

.method private M(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->u:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/x;->v:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/x;->w:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/x;->x(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->x:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/x;->x:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/x;->A(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/x;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/x;->x:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/x;->z(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static x(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroidx/appcompat/app/x;->s:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->z:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    filled-new-array {v1, v1}, [I

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Landroidx/appcompat/view/h;

    invoke-direct {p1}, Landroidx/appcompat/view/h;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/view/u0;->n(F)Landroidx/core/view/u0;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/app/x;->D:Landroidx/core/view/x0;

    invoke-virtual {v1, v3}, Landroidx/core/view/u0;->l(Landroidx/core/view/x0;)Landroidx/core/view/u0;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/u0;)Landroidx/appcompat/view/h;

    iget-boolean v1, p0, Landroidx/appcompat/app/x;->t:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/app/x;->h:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/x;->h:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/core/view/u0;->n(F)Landroidx/core/view/u0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/u0;)Landroidx/appcompat/view/h;

    :cond_3
    sget-object v0, Landroidx/appcompat/app/x;->F:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->f(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/h;->e(J)Landroidx/appcompat/view/h;

    iget-object v0, p0, Landroidx/appcompat/app/x;->C:Landroidx/core/view/v0;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->g(Landroidx/core/view/v0;)Landroidx/appcompat/view/h;

    iput-object p1, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    invoke-virtual {p1}, Landroidx/appcompat/view/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Landroidx/appcompat/app/x;->t:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/x;->h:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/x;->C:Landroidx/core/view/v0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/v0;->b(Landroid/view/View;)V

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_6

    invoke-static {p0}, Landroidx/core/view/m0;->f0(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public C()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->s()I

    move-result p0

    return p0
.end method

.method public F(II)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->p()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/x;->l:Z

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/t;->o(I)V

    return-void
.end method

.method public G(F)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p0, p1}, Landroidx/core/view/m0;->r0(Landroid/view/View;F)V

    return-void
.end method

.method public I(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/app/x;->A:Z

    iget-object p0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public J(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/t;->m(Z)V

    return-void
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/x;->v:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/app/x;->M(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/x;->s:I

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/app/x;->t:Z

    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/x;->v:Z

    invoke-direct {p0, v0}, Landroidx/appcompat/app/x;->M(Z)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->collapseActionView()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->p:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/x;->p:Z

    iget-object p1, p0, Landroidx/appcompat/app/x;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/x;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->p()I

    move-result p0

    return p0
.end method

.method public k()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/x;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/x;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/x;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/x;->b:Landroid/content/Context;

    return-object p0
.end method

.method public m(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->b(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/a;->g()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/x;->H(Z)V

    return-void
.end method

.method public o(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p0, p0, Landroidx/appcompat/app/x;->m:Landroidx/appcompat/app/x$d;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/x$d;->c()Landroid/view/Menu;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public r(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/x;->s(Z)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/x;->F(II)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/app/x;->z:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/h;->a()V

    :cond_0
    return-void
.end method

.method public u(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/t;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/x;->m:Landroidx/appcompat/app/x$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/x$d;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    new-instance v0, Landroidx/appcompat/app/x$d;

    iget-object v1, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/x$d;-><init>(Landroidx/appcompat/app/x;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/x$d;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Landroidx/appcompat/app/x;->m:Landroidx/appcompat/app/x$d;

    invoke-virtual {v0}, Landroidx/appcompat/app/x$d;->i()V

    iget-object p1, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Landroidx/appcompat/view/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/x;->w(Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public w(Z)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/app/x;->L()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/x;->D()V

    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/x;->K()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p1, v2, v6, v7}, Landroidx/appcompat/widget/t;->t(IJ)Landroidx/core/view/u0;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Landroidx/core/view/u0;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p1, v3, v4, v5}, Landroidx/appcompat/widget/t;->t(IJ)Landroidx/core/view/u0;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Landroidx/core/view/u0;

    move-result-object p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_1
    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/view/h;->d(Landroidx/core/view/u0;Landroidx/core/view/u0;)Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->h()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p1, v2}, Landroidx/appcompat/widget/t;->j(I)V

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/x;->f:Landroidx/appcompat/widget/t;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/t;->j(I)V

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method y()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/x;->o:Landroidx/appcompat/view/b$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/x;->n:Landroidx/appcompat/view/b;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/x;->n:Landroidx/appcompat/view/b;

    iput-object v0, p0, Landroidx/appcompat/app/x;->o:Landroidx/appcompat/view/b$a;

    :cond_0
    return-void
.end method

.method public z(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    :cond_0
    iget v0, p0, Landroidx/appcompat/app/x;->s:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->z:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/u0;->n(F)Landroidx/core/view/u0;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/x;->D:Landroidx/core/view/x0;

    invoke-virtual {p1, v1}, Landroidx/core/view/u0;->l(Landroidx/core/view/x0;)Landroidx/core/view/u0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/u0;)Landroidx/appcompat/view/h;

    iget-boolean p1, p0, Landroidx/appcompat/app/x;->t:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/x;->h:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/u0;->n(F)Landroidx/core/view/u0;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/u0;)Landroidx/appcompat/view/h;

    :cond_3
    sget-object p1, Landroidx/appcompat/app/x;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->f(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/h;->e(J)Landroidx/appcompat/view/h;

    iget-object p1, p0, Landroidx/appcompat/app/x;->B:Landroidx/core/view/v0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->g(Landroidx/core/view/v0;)Landroidx/appcompat/view/h;

    iput-object v0, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/appcompat/app/x;->B:Landroidx/core/view/v0;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/core/view/v0;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method
