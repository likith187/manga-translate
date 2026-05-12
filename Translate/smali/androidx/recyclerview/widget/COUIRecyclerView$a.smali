.class public abstract Landroidx/recyclerview/widget/COUIRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerColor:I

.field private mDividerStrokeWidth:I

.field private mOriginAlpha:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPressDividerAlpha:I

.field private mPressDividerPos:I

.field private mPrevTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->d(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_list_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerStrokeWidth:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mOriginAlpha:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPressDividerAlpha:I

    return-void
.end method


# virtual methods
.method public drawDividerOuterBackground(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public drawExpandableDivider(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 11

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerStrokeWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView$d0;)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView$d0;)I

    move-result v5

    :goto_1
    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v5, v0

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView$d0;)I

    move-result p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView$d0;)I

    move-result p2

    :goto_2
    int-to-float p2, p2

    sub-float/2addr v5, p2

    float-to-int p2, v5

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    int-to-float v6, v4

    int-to-float v7, v3

    int-to-float v8, p2

    int-to-float v9, v2

    iget-object v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4, v3, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    return-void
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerColor()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerColor:I

    return p0
.end method

.method protected getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView$d0;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method protected getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView$d0;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public getDividerStrokeWidth()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerStrokeWidth:I

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v1, -0x1

    iput v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPrevTop:I

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_8

    invoke-virtual {p2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->drawDividerOuterBackground(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v10

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPrevTop:I

    if-ne v5, v4, :cond_2

    goto/16 :goto_6

    :cond_2
    iput v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPrevTop:I

    iget v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerStrokeWidth:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    if-eqz v2, :cond_3

    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v6

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v6

    :goto_2
    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v6, v1

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v1

    :goto_3
    int-to-float v1, v1

    sub-float/2addr v6, v1

    float-to-int v1, v6

    iget v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPressDividerPos:I

    if-eq v2, v11, :cond_6

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v11, :cond_5

    goto :goto_4

    :cond_5
    iget v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mOriginAlpha:I

    goto :goto_5

    :cond_6
    :goto_4
    iget v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPressDividerAlpha:I

    :goto_5
    iget-object v6, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_7

    iget-object v6, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v5

    int-to-float v4, v4

    int-to-float v5, v1

    int-to-float v6, v3

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public setDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method

.method public setDividerColor(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerColor:I

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method

.method public setDividerStrokeWidth(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mDividerStrokeWidth:I

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method

.method public setPressDividerAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPressDividerAlpha:I

    return-void
.end method

.method public setPressDividerPos(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$a;->mPressDividerPos:I

    return-void
.end method

.method public abstract shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;I)Z
.end method
