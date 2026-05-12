.class public final Landroidx/window/embedding/EmbeddingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation


# instance fields
.field private final a:Landroidx/window/core/PredicateAdapter;


# direct methods
.method public constructor <init>(Landroidx/window/core/PredicateAdapter;)V
    .locals 1

    const-string v0, "predicateAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter;->a:Landroidx/window/core/PredicateAdapter;

    return-void
.end method

.method private final a(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;
    .locals 4

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object p0

    const-string v0, "splitInfo.primaryActivityStack"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    new-instance v2, Landroidx/window/embedding/ActivityStack;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    move-result-object p0

    const-string v3, "primaryActivityStack.activities"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v1}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object p0

    const-string v1, "splitInfo.secondaryActivityStack"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v1, Landroidx/window/embedding/ActivityStack;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    move-result-object p0

    const-string v3, "secondaryActivityStack.activities"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    new-instance p0, Landroidx/window/embedding/SplitInfo;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitRatio()F

    move-result p1

    invoke-direct {p0, v2, v1, p1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;F)V

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "splitInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/SplitInfo;

    invoke-direct {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter;->a(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
