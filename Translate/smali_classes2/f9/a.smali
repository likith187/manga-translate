.class public abstract Lf9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Lkotlin/coroutines/d;Lkotlin/coroutines/d;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/k;->c(Lkotlin/coroutines/d;Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lf9/a;->a(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;Lw8/l;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/intrinsics/b;->a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/k;->b(Lkotlin/coroutines/d;Ljava/lang/Object;Lw8/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Lf9/a;->a(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;Lw8/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lf9/a;->c(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;Lw8/l;)V

    return-void
.end method
