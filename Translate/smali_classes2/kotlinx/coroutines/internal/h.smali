.class public abstract Lkotlinx/coroutines/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/internal/g;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/z;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/z;->b0(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lkotlinx/coroutines/internal/l; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {p1, v1}, Lkotlinx/coroutines/a0;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/internal/g;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lkotlinx/coroutines/internal/i;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/i;-><init>(Lkotlin/coroutines/g;)V

    invoke-static {p1, v0}, Ln8/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {p1}, Lkotlinx/coroutines/internal/g;->b(Ljava/lang/Throwable;)V

    return-void
.end method
