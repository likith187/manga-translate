.class abstract synthetic Lkotlinx/coroutines/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;)Lkotlinx/coroutines/f1;
    .locals 1

    invoke-static {p0, p1}, Lkotlinx/coroutines/x;->e(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    invoke-virtual {p2}, Lkotlinx/coroutines/e0;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/o1;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/o1;-><init>(Lkotlin/coroutines/g;Lw8/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/coroutines/v1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/v1;-><init>(Lkotlin/coroutines/g;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/a;->A0(Lkotlinx/coroutines/e0;Ljava/lang/Object;Lw8/p;)V

    return-object p1
.end method

.method public static synthetic b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lkotlinx/coroutines/e0;->DEFAULT:Lkotlinx/coroutines/e0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/f;->a(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;)Lkotlinx/coroutines/f1;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/coroutines/x;->d(Lkotlin/coroutines/g;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/j1;->e(Lkotlin/coroutines/g;)V

    if-ne p0, v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/c0;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/internal/c0;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    invoke-static {v0, v0, p1}, Lf9/b;->b(Lkotlinx/coroutines/internal/c0;Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/coroutines/e;->d:Lkotlin/coroutines/e$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v2

    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/c2;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/c2;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/g;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/k0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, Lf9/b;->b(Lkotlinx/coroutines/internal/c0;Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance v0, Lkotlinx/coroutines/l0;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/l0;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lf9/a;->d(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;Lw8/l;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/l0;->B0()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_2
    return-object p0
.end method
