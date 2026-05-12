.class public Landroidx/preference/l;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/SparseArray;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p0, 0x1020010

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p0, 0x1020006

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget p0, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p0, 0x102003e

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/l;->b:Z

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/l;->c:Z

    return p0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/l;->b:Z

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/l;->c:Z

    return-void
.end method
