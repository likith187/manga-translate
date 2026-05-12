.class public Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIGridRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "COUIGridLayoutManager"
.end annotation


# instance fields
.field final synthetic j:Landroidx/recyclerview/widget/COUIGridRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private d0()F
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->t0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->w0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->w0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->h0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p0

    mul-float/2addr v0, p0

    return v0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->t0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p0

    return p0
.end method

.method private e0()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->k0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    :goto_0
    new-instance v2, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->l0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->p0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->i0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->r0(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->l0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->f0(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mChildWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mHorizontalGap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mColumn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGridPadding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->q0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getWidthWithoutPadding() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->h0()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIGridRecyclerView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f0()V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->h0()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->h0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->f0(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->h0()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->p0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->d0()F

    move-result p0

    invoke-static {v0, p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->u0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    return-void
.end method

.method private g0()V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->h0()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->j0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->j0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->f0(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->h0()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result p0

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->i0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    return-void
.end method

.method private h0()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;ZZ)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;ZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPaddingStart()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->q0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v1, :cond_0

    array-length v1, v1

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v3

    if-ge v2, v3, :cond_3

    move-object/from16 v3, p2

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c(Landroidx/recyclerview/widget/RecyclerView$a0;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d(Landroidx/recyclerview/widget/RecyclerView$w;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v5, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v9, 0x1

    if-nez v2, :cond_4

    iput-boolean v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    return-void

    :cond_4
    iget v2, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    if-ne v2, v9, :cond_5

    move v2, v9

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    const/4 v3, 0x0

    move v4, v1

    move v5, v4

    move v10, v3

    :goto_3
    iget-object v11, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v11}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v11

    if-ge v4, v11, :cond_e

    iget-object v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v11, v11, v4

    if-eqz v11, :cond_d

    iget-object v12, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v12, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/RecyclerView$p;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v11, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/RecyclerView$p;->addDisappearingView(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v11, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->addDisappearingView(Landroid/view/View;I)V

    :goto_4
    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {v6, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$p;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$q;->b:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->top:I

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    iget-object v15, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v15}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->s0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z

    move-result v15

    if-eqz v15, :cond_9

    move v15, v1

    goto :goto_5

    :cond_9
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v9

    :goto_5
    add-int/2addr v14, v15

    iget v9, v13, Landroid/graphics/Rect;->left:I

    iget v15, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v15

    iget-object v15, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v15}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->s0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z

    move-result v15

    if-eqz v15, :cond_a

    move v15, v1

    goto :goto_6

    :cond_a
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v1

    :goto_6
    add-int/2addr v9, v15

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->t0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_b

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v15, v15

    invoke-static {v1, v15}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->u0(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    :cond_b
    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    add-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v10, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v10

    sub-float/2addr v10, v1

    iget v15, v13, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v1, v15

    iget v15, v13, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    add-float/2addr v1, v15

    float-to-int v1, v1

    iget-object v15, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/t;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/t;->m()I

    move-result v15

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v1, v15, v9, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/t;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/t;->o()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getHeightMode()I

    move-result v15

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->t0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v2

    float-to-int v2, v2

    move/from16 v17, v10

    const/4 v10, 0x1

    invoke-static {v3, v15, v14, v2, v10}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/t;

    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "childWidthSpec = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " horizontalInsets = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lp.leftMargin = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  lp.rightMargin = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " decorInsets = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentPosition = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "COUIGridRecyclerView"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v2, v5, :cond_c

    move v5, v2

    :cond_c
    move/from16 v10, v17

    goto :goto_7

    :cond_d
    move/from16 v16, v2

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_e
    iput v5, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    if-ge v10, v0, :cond_14

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v13, v0, v10

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getWidth()I

    move-result v0

    sub-int/2addr v0, v9

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/t;

    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/t;->f(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v4, v0

    move v2, v1

    goto :goto_9

    :cond_f
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/t;

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/t;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v9

    move v4, v0

    move v2, v9

    :goto_9
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v1, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int v1, v0, v1

    move v5, v0

    move v3, v1

    goto :goto_a

    :cond_10
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v1, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v1, v0

    move v3, v0

    move v5, v1

    :goto_a
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$p;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    add-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->o0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v2

    add-float/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v3

    int-to-float v4, v2

    sub-float/2addr v3, v4

    add-int/2addr v9, v2

    add-int/2addr v9, v0

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$q;->c()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$q;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x1

    goto :goto_c

    :goto_b
    iput-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    :goto_c
    iget-boolean v2, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    or-int/2addr v2, v4

    iput-boolean v2, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    move v11, v1

    move v12, v3

    goto :goto_d

    :cond_13
    const/4 v0, 0x1

    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    :cond_14
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->v0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->g0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->f0()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->e0()V

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->j:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->b0(I)V

    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;)V

    return-void
.end method
