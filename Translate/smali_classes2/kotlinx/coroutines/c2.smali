.class public final Lkotlinx/coroutines/c2;
.super Lkotlinx/coroutines/internal/c0;
.source "SourceFile"


# instance fields
.field private final h:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/d2;->INSTANCE:Lkotlinx/coroutines/d2;

    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/internal/c0;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/c2;->h:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    sget-object v0, Lkotlin/coroutines/e;->d:Lkotlin/coroutines/e$b;

    invoke-interface {p2, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/coroutines/y;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/k0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c2;->C0(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 2

    iget-boolean v0, p0, Lkotlinx/coroutines/c2;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/c2;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lkotlinx/coroutines/c2;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final C0(Lkotlin/coroutines/g;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/coroutines/c2;->threadLocalIsSet:Z

    iget-object p0, p0, Lkotlinx/coroutines/c2;->h:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, Lkotlinx/coroutines/c2;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/c2;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/g;

    invoke-virtual {v0}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/c2;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-static {p1, v0}, Lkotlinx/coroutines/w;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/k0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/internal/k0;->a:Lkotlinx/coroutines/internal/g0;

    if-eq v3, v4, :cond_2

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/x;->g(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Ljava/lang/Object;)Lkotlinx/coroutines/c2;

    move-result-object v2

    :cond_2
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlinx/coroutines/c2;->B0()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {v1, v3}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lkotlinx/coroutines/c2;->B0()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-static {v1, v3}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_6
    throw p0
.end method
