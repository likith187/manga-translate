.class final Landroidx/activity/result/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/l;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/d$c;->a:Landroidx/lifecycle/l;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/d$c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/result/d$c;->a:Landroidx/lifecycle/l;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    iget-object p0, p0, Landroidx/activity/result/d$c;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/result/d$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/p;

    iget-object v2, p0, Landroidx/activity/result/d$c;->a:Landroidx/lifecycle/l;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/activity/result/d$c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
