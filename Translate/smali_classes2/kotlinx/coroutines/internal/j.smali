.class public final Lkotlinx/coroutines/internal/j;
.super Lkotlinx/coroutines/m0;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/e;
.implements Lkotlin/coroutines/d;


# static fields
.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final f:Lkotlinx/coroutines/y;

.field public final h:Lkotlin/coroutines/d;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, Lkotlinx/coroutines/internal/j;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/m0;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/j;->f:Lkotlinx/coroutines/y;

    iput-object p2, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    invoke-static {}, Lkotlinx/coroutines/internal/k;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/j;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/k0;->b(Lkotlin/coroutines/g;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/j;->j:Ljava/lang/Object;

    return-void
.end method

.method private final o()Lkotlinx/coroutines/j;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/j;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/j;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final synthetic p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/j;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    instance-of p0, p1, Lkotlinx/coroutines/u;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/u;

    iget-object p0, p1, Lkotlinx/coroutines/u;->b:Lw8/l;

    invoke-interface {p0, p2}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public h()Lkotlin/coroutines/d;
    .locals 0

    return-object p0
.end method

.method public l()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/internal/k;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/internal/j;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/g0;

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final n()Lkotlinx/coroutines/j;
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/g0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/j;

    if-eqz v2, :cond_2

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/g0;

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/j;

    return-object v1

    :cond_2
    sget-object v2, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/g0;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r(Ljava/lang/Throwable;)Z
    .locals 5

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/g0;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Lkotlinx/coroutines/w;->d(Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/internal/j;->f:Lkotlinx/coroutines/y;

    invoke-virtual {v4, v0}, Lkotlinx/coroutines/y;->D0(Lkotlin/coroutines/g;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-object v3, p0, Lkotlinx/coroutines/internal/j;->i:Ljava/lang/Object;

    iput v5, p0, Lkotlinx/coroutines/m0;->c:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/j;->f:Lkotlinx/coroutines/y;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/y;->x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lkotlinx/coroutines/z1;->INSTANCE:Lkotlinx/coroutines/z1;

    invoke-virtual {v0}, Lkotlinx/coroutines/z1;->a()Lkotlinx/coroutines/s0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/s0;->L0()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lkotlinx/coroutines/internal/j;->i:Ljava/lang/Object;

    iput v5, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/s0;->H0(Lkotlinx/coroutines/m0;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/s0;->J0(Z)V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/internal/j;->j:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/k0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    invoke-interface {v5, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/s0;->N0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/s0;->F0(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/m0;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/s0;->F0(Z)V

    throw p0
.end method

.method public final s()V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->m()V

    invoke-direct {p0}, Lkotlinx/coroutines/internal/j;->o()Lkotlinx/coroutines/j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->s()V

    :cond_0
    return-void
.end method

.method public final t(Lkotlinx/coroutines/i;)Ljava/lang/Throwable;
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/g0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_1
    instance-of p1, v1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/internal/j;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-static {p1, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistent state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/j;->f:Lkotlinx/coroutines/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    invoke-static {p0}, Lkotlinx/coroutines/g0;->c(Lkotlin/coroutines/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
