.class final Landroidx/lifecycle/g0$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/g0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/c0;

.field final synthetic $block:Lw8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/p;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/lifecycle/l$b;

.field final synthetic $this_repeatOnLifecycle:Landroidx/lifecycle/l;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lkotlinx/coroutines/c0;Lw8/p;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/l;",
            "Landroidx/lifecycle/l$b;",
            "Lkotlinx/coroutines/c0;",
            "Lw8/p;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/g0$a$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/g0$a$a;->$state:Landroidx/lifecycle/l$b;

    iput-object p3, p0, Landroidx/lifecycle/g0$a$a;->$$this$coroutineScope:Lkotlinx/coroutines/c0;

    iput-object p4, p0, Landroidx/lifecycle/g0$a$a;->$block:Lw8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Landroidx/lifecycle/g0$a$a;

    iget-object v1, p0, Landroidx/lifecycle/g0$a$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    iget-object v2, p0, Landroidx/lifecycle/g0$a$a;->$state:Landroidx/lifecycle/l$b;

    iget-object v3, p0, Landroidx/lifecycle/g0$a$a;->$$this$coroutineScope:Lkotlinx/coroutines/c0;

    iget-object v4, p0, Landroidx/lifecycle/g0$a$a;->$block:Lw8/p;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/g0$a$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lkotlinx/coroutines/c0;Lw8/p;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/g0$a$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/g0$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/g0$a$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/g0$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Landroidx/lifecycle/g0$a$a;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v0, v1, Landroidx/lifecycle/g0$a$a;->L$5:Ljava/lang/Object;

    check-cast v0, Lw8/p;

    iget-object v0, v1, Landroidx/lifecycle/g0$a$a;->L$4:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/c0;

    iget-object v0, v1, Landroidx/lifecycle/g0$a$a;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/l;

    iget-object v0, v1, Landroidx/lifecycle/g0$a$a;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/l$b;

    iget-object v0, v1, Landroidx/lifecycle/g0$a$a;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/c0;

    iget-object v0, v1, Landroidx/lifecycle/g0$a$a;->L$0:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/internal/c0;

    :try_start_0
    invoke-static/range {p1 .. p1}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/lifecycle/g0$a$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    invoke-virtual {v2}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v2

    sget-object v5, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    if-ne v2, v5, :cond_2

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object v0

    :cond_2
    new-instance v2, Lkotlin/jvm/internal/c0;

    invoke-direct {v2}, Lkotlin/jvm/internal/c0;-><init>()V

    new-instance v13, Lkotlin/jvm/internal/c0;

    invoke-direct {v13}, Lkotlin/jvm/internal/c0;-><init>()V

    :try_start_1
    iget-object v5, v1, Landroidx/lifecycle/g0$a$a;->$state:Landroidx/lifecycle/l$b;

    iget-object v14, v1, Landroidx/lifecycle/g0$a$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    iget-object v8, v1, Landroidx/lifecycle/g0$a$a;->$$this$coroutineScope:Lkotlinx/coroutines/c0;

    iget-object v12, v1, Landroidx/lifecycle/g0$a$a;->$block:Lw8/p;

    iput-object v2, v1, Landroidx/lifecycle/g0$a$a;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Landroidx/lifecycle/g0$a$a;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/lifecycle/g0$a$a;->L$2:Ljava/lang/Object;

    iput-object v14, v1, Landroidx/lifecycle/g0$a$a;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/lifecycle/g0$a$a;->L$4:Ljava/lang/Object;

    iput-object v12, v1, Landroidx/lifecycle/g0$a$a;->L$5:Ljava/lang/Object;

    iput v4, v1, Landroidx/lifecycle/g0$a$a;->label:I

    new-instance v15, Lkotlinx/coroutines/j;

    invoke-static/range {p0 .. p0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v6

    invoke-direct {v15, v6, v4}, Lkotlinx/coroutines/j;-><init>(Lkotlin/coroutines/d;I)V

    invoke-virtual {v15}, Lkotlinx/coroutines/j;->D()V

    sget-object v6, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v6, v5}, Landroidx/lifecycle/l$a$a;->d(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object v7

    invoke-virtual {v6, v5}, Landroidx/lifecycle/l$a$a;->a(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object v9

    const/4 v5, 0x0

    invoke-static {v5, v4, v3}, Lkotlinx/coroutines/sync/c;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object v11

    new-instance v10, Landroidx/lifecycle/g0$a$a$a;

    move-object v5, v10

    move-object v6, v7

    move-object v7, v2

    move-object v3, v10

    move-object v10, v15

    invoke-direct/range {v5 .. v12}, Landroidx/lifecycle/g0$a$a$a;-><init>(Landroidx/lifecycle/l$a;Lkotlin/jvm/internal/c0;Lkotlinx/coroutines/c0;Landroidx/lifecycle/l$a;Lkotlinx/coroutines/i;Lkotlinx/coroutines/sync/a;Lw8/p;)V

    iput-object v3, v13, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    const-string v5, "null cannot be cast to non-null type androidx.lifecycle.LifecycleEventObserver"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v3

    check-cast v10, Landroidx/lifecycle/p;

    invoke-virtual {v14, v10}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    invoke-virtual {v15}, Lkotlinx/coroutines/j;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_3

    invoke-static/range {p0 .. p0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v2

    move-object v2, v13

    goto :goto_2

    :cond_3
    :goto_0
    if-ne v3, v0, :cond_4

    return-object v0

    :cond_4
    move-object v5, v2

    move-object v2, v13

    :goto_1
    iget-object v0, v5, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/f1;

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    invoke-static {v0, v3, v4, v3}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_5
    iget-object v0, v2, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/p;

    if-eqz v0, :cond_6

    iget-object v1, v1, Landroidx/lifecycle/g0$a$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    :cond_6
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object v0

    :goto_2
    iget-object v3, v5, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/f1;

    if-eqz v3, :cond_7

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_7
    iget-object v2, v2, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/p;

    if-eqz v2, :cond_8

    iget-object v1, v1, Landroidx/lifecycle/g0$a$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    :cond_8
    throw v0
.end method
