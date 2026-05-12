.class public final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;
.super Landroidx/recyclerview/widget/COUILinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1$a;

    invoke-direct {p2, p0, p3, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1$a;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;ILandroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$z;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$p;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method
