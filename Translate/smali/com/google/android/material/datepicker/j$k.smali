.class Lcom/google/android/material/datepicker/j$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/j;->u(Landroid/view/View;Lcom/google/android/material/datepicker/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/o;

.field final synthetic b:Lcom/google/android/material/datepicker/j;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/j;Lcom/google/android/material/datepicker/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/j$k;->b:Lcom/google/android/material/datepicker/j;

    iput-object p2, p0, Lcom/google/android/material/datepicker/j$k;->a:Lcom/google/android/material/datepicker/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/datepicker/j$k;->b:Lcom/google/android/material/datepicker/j;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/j;->C()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/material/datepicker/j$k;->b:Lcom/google/android/material/datepicker/j;

    invoke-static {v0}, Lcom/google/android/material/datepicker/j;->n(Lcom/google/android/material/datepicker/j;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/j$k;->b:Lcom/google/android/material/datepicker/j;

    iget-object p0, p0, Lcom/google/android/material/datepicker/j$k;->a:Lcom/google/android/material/datepicker/o;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/o;->g(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/datepicker/j;->F(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void
.end method
