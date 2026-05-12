.class public abstract Lf9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 3

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/k0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v2, p0, Lkotlin/coroutines/jvm/internal/a;

    if-nez v2, :cond_0

    invoke-static {p0, p1, v0}, Lkotlin/coroutines/intrinsics/b;->d(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw8/p;

    invoke-interface {p0, p1, v0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_3
    return-void
.end method

.method public static final b(Lkotlinx/coroutines/internal/c0;Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    instance-of v1, p2, Lkotlin/coroutines/jvm/internal/a;

    if-nez v1, :cond_0

    invoke-static {p2, p1, p0}, Lkotlin/coroutines/intrinsics/b;->d(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw8/p;

    invoke-interface {p2, p1, p0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance p2, Lkotlinx/coroutines/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, p2

    :goto_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/n1;->b:Lkotlinx/coroutines/internal/g0;

    if-ne p0, p1, :cond_2

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    instance-of p1, p0, Lkotlinx/coroutines/t;

    if-nez p1, :cond_3

    invoke-static {p0}, Lkotlinx/coroutines/n1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    check-cast p0, Lkotlinx/coroutines/t;

    iget-object p0, p0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    throw p0
.end method
