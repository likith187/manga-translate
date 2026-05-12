.class public abstract Lkotlinx/coroutines/flow/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end method

.method public final collect(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lkotlinx/coroutines/flow/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/a$a;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/a$a;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/a$a;-><init>(Lkotlinx/coroutines/flow/a;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/a$a;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/a$a;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/a$a;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/internal/g;

    :try_start_0
    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V

    new-instance p2, Lkotlinx/coroutines/flow/internal/g;

    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lkotlinx/coroutines/flow/internal/g;-><init>(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/g;)V

    :try_start_1
    iput-object p2, v0, Lkotlinx/coroutines/flow/a$a;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/a$a;->label:I

    invoke-virtual {p0, p2, v0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/g;->releaseIntercepted()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/g;->releaseIntercepted()V

    throw p1
.end method
