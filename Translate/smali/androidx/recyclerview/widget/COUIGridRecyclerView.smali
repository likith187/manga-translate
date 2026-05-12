.class public Landroidx/recyclerview/widget/COUIGridRecyclerView;
.super Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;,
        Landroidx/recyclerview/widget/COUIGridRecyclerView$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private f:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->p:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->p:Z

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->x0(Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->y0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->p:Z

    .line 9
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->x0(Landroid/util/AttributeSet;I)V

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->y0()V

    return-void
.end method

.method static synthetic e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->k:I

    return p0
.end method

.method static synthetic f0(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->k:I

    return p1
.end method

.method static synthetic g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->a:F

    return p0
.end method

.method static synthetic h0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->f:F

    return p0
.end method

.method static synthetic i0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->a:F

    return p1
.end method

.method static synthetic j0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->b:F

    return p0
.end method

.method static synthetic k0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->m:I

    return p0
.end method

.method static synthetic l0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->l:I

    return p0
.end method

.method static synthetic m0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->z0()Z

    move-result p0

    return p0
.end method

.method static synthetic n0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->c:F

    return p0
.end method

.method static synthetic o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->j:F

    return p0
.end method

.method static synthetic p0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->j:F

    return p1
.end method

.method static synthetic q0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o:I

    return p0
.end method

.method static synthetic r0(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o:I

    return p1
.end method

.method static synthetic s0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->p:Z

    return p0
.end method

.method static synthetic t0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->i:F

    return p0
.end method

.method static synthetic u0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->i:F

    return p1
.end method

.method static synthetic v0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->n:I

    return p0
.end method

.method static synthetic w0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->h:F

    return p0
.end method

.method private x0(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/grid/R$styleable;->COUIGridRecyclerView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_couiHorizontalGap:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->a:F

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_minHorizontalGap:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->b:F

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_couiVerticalGap:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->c:F

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_childMinWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->f:F

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_childMinHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->h:F

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_childHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->i:F

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_childWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->j:F

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_childGridNumber:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->l:I

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_gridMarginType:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->m:I

    sget p2, Lcom/support/grid/R$styleable;->COUIGridRecyclerView_specificType:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->n:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private y0()V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;-><init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;-><init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->setPercentIndentEnabled(Z)V

    return-void
.end method

.method private z0()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setChildGridNumber(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->l:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildHeight(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->i:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildMinHeight(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->h:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildMinWidth(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->f:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildWidth(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->j:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setGridMarginType(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->m:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->a:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setIsIgnoreChildMargin(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->p:Z

    return-void
.end method

.method public setMinHorizontalGap(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->b:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->c:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
