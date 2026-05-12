.class final Landroidx/lifecycle/g0$a$a$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/g0$a$a$a;->onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $block:Lw8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/p;"
        }
    .end annotation
.end field

.field final synthetic $mutex:Lkotlinx/coroutines/sync/a;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/a;Lw8/p;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/a;",
            "Lw8/p;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/g0$a$a$a$a;->$mutex:Lkotlinx/coroutines/sync/a;

    iput-object p2, p0, Landroidx/lifecycle/g0$a$a$a$a;->$block:Lw8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Landroidx/lifecycle/g0$a$a$a$a;

    iget-object v0, p0, Landroidx/lifecycle/g0$a$a$a$a;->$mutex:Lkotlinx/coroutines/sync/a;

    iget-object p0, p0, Landroidx/lifecycle/g0$a$a$a$a;->$block:Lw8/p;

    invoke-direct {p1, v0, p0, p2}, Landroidx/lifecycle/g0$a$a$a$a;-><init>(Lkotlinx/coroutines/sync/a;Lw8/p;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/g0$a$a$a$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/g0$a$a$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/g0$a$a$a$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/g0$a$a$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/lifecycle/g0$a$a$a$a;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/g0$a$a$a$a;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/a;

    :try_start_0
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/g0$a$a$a$a;->L$1:Ljava/lang/Object;

    check-cast v1, Lw8/p;

    iget-object v3, p0, Landroidx/lifecycle/g0$a$a$a$a;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/a;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/g0$a$a$a$a;->$mutex:Lkotlinx/coroutines/sync/a;

    iget-object v1, p0, Landroidx/lifecycle/g0$a$a$a$a;->$block:Lw8/p;

    iput-object p1, p0, Landroidx/lifecycle/g0$a$a$a$a;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/g0$a$a$a$a;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/lifecycle/g0$a$a$a$a;->label:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/sync/a;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    :try_start_1
    new-instance v3, Landroidx/lifecycle/g0$a$a$a$a$a;

    invoke-direct {v3, v1, v4}, Landroidx/lifecycle/g0$a$a$a$a$a;-><init>(Lw8/p;Lkotlin/coroutines/d;)V

    iput-object p1, p0, Landroidx/lifecycle/g0$a$a$a$a;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/lifecycle/g0$a$a$a$a;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/lifecycle/g0$a$a$a$a;->label:I

    invoke-static {v3, p0}, Lkotlinx/coroutines/d0;->d(Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    move-object p0, p1

    :goto_1
    :try_start_2
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/a;->b(Ljava/lang/Object;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :catchall_1
    move-exception p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_2
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/a;->b(Ljava/lang/Object;)V

    throw p1
.end method
