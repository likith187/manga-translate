.class public abstract Lkotlinx/coroutines/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/i;Lkotlinx/coroutines/p0;)V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/q0;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/q0;-><init>(Lkotlinx/coroutines/p0;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/l;->c(Lkotlinx/coroutines/i;Lkotlinx/coroutines/h;)V

    return-void
.end method

.method public static final b(Lkotlin/coroutines/d;)Lkotlinx/coroutines/j;
    .locals 2

    instance-of v0, p0, Lkotlinx/coroutines/internal/j;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/j;-><init>(Lkotlin/coroutines/d;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/j;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->n()Lkotlinx/coroutines/j;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->N()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Lkotlinx/coroutines/j;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/j;-><init>(Lkotlin/coroutines/d;I)V

    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/i;Lkotlinx/coroutines/h;)V
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/j;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/j;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j;->G(Lkotlinx/coroutines/h;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "third-party implementation of CancellableContinuation is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
