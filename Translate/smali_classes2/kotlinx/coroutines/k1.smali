.class abstract synthetic Lkotlinx/coroutines/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/f1;)Lkotlinx/coroutines/r;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/i1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/i1;-><init>(Lkotlinx/coroutines/f1;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/f1;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/j1;->a(Lkotlinx/coroutines/f1;)Lkotlinx/coroutines/r;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/f1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/f1;->X(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/j1;->c(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final e(Lkotlin/coroutines/g;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/f1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/j1;->f(Lkotlinx/coroutines/f1;)V

    :cond_0
    return-void
.end method

.method public static final f(Lkotlinx/coroutines/f1;)V
    .locals 1

    invoke-interface {p0}, Lkotlinx/coroutines/f1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/f1;->N()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final g(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;)Lkotlinx/coroutines/p0;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/m1;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/m1;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/m1;->P(ZZLkotlinx/coroutines/c1;)Lkotlinx/coroutines/p0;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/k1$a;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/k1$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2, v0}, Lkotlinx/coroutines/f1;->i(ZZLw8/l;)Lkotlinx/coroutines/p0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic h(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;ILjava/lang/Object;)Lkotlinx/coroutines/p0;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/j1;->g(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;)Lkotlinx/coroutines/p0;

    move-result-object p0

    return-object p0
.end method
