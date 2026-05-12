.class public abstract Lkotlinx/coroutines/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/f;

    sget-object v1, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/j1;->b(Lkotlinx/coroutines/f1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlin/coroutines/g;)V

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/c0;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-interface {p0}, Lkotlinx/coroutines/c0;->c()Lkotlin/coroutines/g;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/f1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/f1;->X(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(Lkotlinx/coroutines/c0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/d0;->b(Lkotlinx/coroutines/c0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final d(Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/c0;

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/c0;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    invoke-static {v0, v0, p0}, Lf9/b;->b(Lkotlinx/coroutines/internal/c0;Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_0
    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/c0;)Z
    .locals 1

    invoke-interface {p0}, Lkotlinx/coroutines/c0;->c()Lkotlin/coroutines/g;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/f1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/f1;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
