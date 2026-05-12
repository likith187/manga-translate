.class public abstract Lkotlinx/coroutines/m0;
.super Lg9/h;
.source "SourceFile"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lg9/h;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/m0;->c:I

    return-void
.end method


# virtual methods
.method public abstract c(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract h()Lkotlin/coroutines/d;
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Lkotlinx/coroutines/t;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/t;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Ln8/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Lkotlinx/coroutines/f0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/f0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/m0;->h()Lkotlin/coroutines/d;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/a0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract l()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    iget-object v0, p0, Lg9/h;->b:Lg9/i;

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m0;->h()Lkotlin/coroutines/d;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/internal/j;

    iget-object v2, v1, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    iget-object v1, v1, Lkotlinx/coroutines/internal/j;->j:Ljava/lang/Object;

    invoke-interface {v2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/k0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkotlinx/coroutines/internal/k0;->a:Lkotlinx/coroutines/internal/g0;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/x;->g(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Ljava/lang/Object;)Lkotlinx/coroutines/c2;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    move-object v4, v5

    :goto_0
    :try_start_1
    invoke-interface {v2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v6

    invoke-virtual {p0}, Lkotlinx/coroutines/m0;->l()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lkotlinx/coroutines/m0;->i(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_1

    iget v9, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-static {v9}, Lkotlinx/coroutines/n0;->b(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {v6, v9}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/f1;

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lkotlinx/coroutines/f1;->isActive()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v6}, Lkotlinx/coroutines/f1;->N()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lkotlinx/coroutines/m0;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v7, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v6}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    sget-object v6, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v8}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v6, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0, v7}, Lkotlinx/coroutines/m0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Lkotlinx/coroutines/c2;->B0()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-interface {v0}, Lg9/i;->a()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/m0;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_4
    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Lkotlinx/coroutines/c2;->B0()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_7
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    :try_start_5
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {v0}, Lg9/i;->a()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/m0;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
