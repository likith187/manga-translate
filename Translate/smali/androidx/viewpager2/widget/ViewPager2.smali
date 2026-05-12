.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$g;,
        Landroidx/viewpager2/widget/ViewPager2$j;,
        Landroidx/viewpager2/widget/ViewPager2$f;,
        Landroidx/viewpager2/widget/ViewPager2$e;,
        Landroidx/viewpager2/widget/ViewPager2$k;,
        Landroidx/viewpager2/widget/ViewPager2$i;,
        Landroidx/viewpager2/widget/ViewPager2$n;,
        Landroidx/viewpager2/widget/ViewPager2$l;,
        Landroidx/viewpager2/widget/ViewPager2$h;,
        Landroidx/viewpager2/widget/ViewPager2$m;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;
    }
.end annotation


# static fields
.field static x:Z = true


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Rect;

.field private c:Landroidx/viewpager2/widget/b;

.field f:I

.field h:Z

.field private i:Landroidx/recyclerview/widget/RecyclerView$j;

.field private j:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private k:I

.field private l:Landroid/os/Parcelable;

.field m:Landroidx/recyclerview/widget/RecyclerView;

.field private n:Landroidx/recyclerview/widget/u;

.field o:Landroidx/viewpager2/widget/e;

.field private p:Landroidx/viewpager2/widget/b;

.field private q:Landroidx/viewpager2/widget/c;

.field private r:Landroidx/viewpager2/widget/d;

.field private s:Landroidx/recyclerview/widget/RecyclerView$m;

.field private t:Z

.field private u:Z

.field private v:I

.field w:Landroidx/viewpager2/widget/ViewPager2$e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroidx/viewpager2/widget/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/b;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Z

    .line 6
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 9
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    .line 11
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->v:I

    .line 12
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Landroidx/viewpager2/widget/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/b;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Z

    .line 18
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 21
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    .line 23
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->v:I

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    .line 27
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 28
    new-instance p3, Landroidx/viewpager2/widget/b;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/b;

    const/4 p3, 0x0

    .line 29
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Z

    .line 30
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 33
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    const/4 p3, 0x1

    .line 34
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    .line 35
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:I

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()Landroidx/recyclerview/widget/RecyclerView$r;
    .locals 1

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$d;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$d;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->x:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$j;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$j;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$f;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$f;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    :goto_0
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$m;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$m;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Landroidx/core/view/m0;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$h;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$h;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->l(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    new-instance p1, Landroidx/viewpager2/widget/e;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/e;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    new-instance p2, Landroidx/viewpager2/widget/c;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p0, p1, v0}, Landroidx/viewpager2/widget/c;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/e;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/c;

    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$l;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$l;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/u;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/y;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    new-instance p1, Landroidx/viewpager2/widget/b;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/b;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/e;->setOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$b;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$b;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$c;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$c;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/b;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/b;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/b;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/b;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2$e;->h(Landroidx/viewpager2/widget/b;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/b;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/b;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    new-instance p1, Landroidx/viewpager2/widget/d;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/d;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/d;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/b;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/b;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$h;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    instance-of v3, v0, Lx0/a;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lx0/a;

    invoke-interface {v3, v2}, Lx0/a;->restoreState(Landroid/os/Parcelable;)V

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/os/Parcelable;

    :cond_3
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$e;->m()V

    return-void
.end method

.method private l(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    sget-object v0, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v3, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Landroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private m(Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$h;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/c;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/c;->a()Z

    move-result p0

    return p0
.end method

.method public canScrollHorizontally(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public canScrollVertically(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method d()Z
    .locals 1

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->i()V

    return-void
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    return p0
.end method

.method public g(Landroidx/viewpager2/widget/ViewPager2$i;)V
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/b;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/b;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$e;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    return p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method getPageSize()I
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    :goto_0
    sub-int/2addr p0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public getScrollState()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/e;->getScrollState()I

    move-result p0

    return p0
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/d;->getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$k;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->getRelativeScrollPosition()D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    sub-double/2addr v0, v3

    double-to-float v0, v0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/d;

    invoke-virtual {p0, v2, v0, v1}, Landroidx/viewpager2/widget/d;->onPageScrolled(IFI)V

    return-void
.end method

.method public j(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->k(IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method k(IZ)V
    .locals 8

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    return-void

    :cond_4
    int-to-double v0, v0

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2$e;->q()V

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/e;->isIdle()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->getRelativeScrollPosition()D

    move-result-wide v0

    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    invoke-virtual {v2, p1, p2}, Landroidx/viewpager2/widget/e;->notifyProgrammaticScroll(IZ)V

    if-nez p2, :cond_6

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_6
    int-to-double v2, p1

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_8

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    cmpl-double v0, v2, v0

    if-lez v0, :cond_7

    add-int/lit8 v0, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p1, 0x3

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$n;

    invoke-direct {p2, p1, p0}, Landroidx/viewpager2/widget/ViewPager2$n;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_8
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method

.method n()V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/u;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/b;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/b;->onPageSelected(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->i(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->n()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/os/Parcelable;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p0

    instance-of v0, p0, Lx0/a;

    if-eqz v0, :cond_2

    check-cast p0, Lx0/a;

    invoke-interface {p0}, Lx0/a;->saveState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not support direct child views"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$e;->c(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$e;->l(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$e;->f(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->m(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:I

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->i()V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->e(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->f(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->j(IZ)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$e;->p()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->v:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$e;->r()V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$k;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/recyclerview/widget/RecyclerView$m;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$m;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/recyclerview/widget/RecyclerView$m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/d;->getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$k;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/d;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$k;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->h()V

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->w:Landroidx/viewpager2/widget/ViewPager2$e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$e;->s()V

    return-void
.end method
