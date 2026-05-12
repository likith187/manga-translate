.class Landroidx/recyclerview/widget/COUIGridRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIGridRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/COUIGridRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    rem-int/2addr p4, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p4, v0, :cond_1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    rem-int/2addr p4, v0

    int-to-float p4, p4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p4, v1

    mul-float/2addr v0, p4

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    mul-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr v0, p4

    iget-object p4, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p4}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p4

    add-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->m0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iput p4, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mHorizontalGap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->g0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " horizontalGap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " getChildAdapterPosition = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " outRect = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "COUIGridRecyclerView"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p4, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->e0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result p3

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p3, p4

    if-ge p2, p3, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$a;->a:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->n0(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method
