.class final Landroidx/window/embedding/EmbeddingAdapter$translateActivityPairPredicates$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/p;"
    }
.end annotation


# instance fields
.field final synthetic $splitPairFilters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$translateActivityPairPredicates$1;->$splitPairFilters:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/app/Activity;Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$translateActivityPairPredicates$1;->$splitPairFilters:Ljava/util/Set;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/embedding/SplitPairFilter;

    .line 5
    invoke-virtual {v1, p1, p2}, Landroidx/window/embedding/SplitPairFilter;->b(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 6
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/Activity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroidx/window/embedding/EmbeddingAdapter$translateActivityPairPredicates$1;->invoke(Landroid/app/Activity;Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
