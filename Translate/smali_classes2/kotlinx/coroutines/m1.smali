.class public Lkotlinx/coroutines/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/f1;
.implements Lkotlinx/coroutines/q;
.implements Lkotlinx/coroutines/t1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/m1$a;,
        Lkotlinx/coroutines/m1$b;
    }
.end annotation


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state$volatile"

    const-class v1, Lkotlinx/coroutines/m1;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/m1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/m1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/n1;->c()Lkotlinx/coroutines/r0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/n1;->d()Lkotlinx/coroutines/r0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/m1;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final A(Lkotlinx/coroutines/m1$b;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/m1$b;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/g1;

    invoke-static {p0}, Lkotlinx/coroutines/m1;->b(Lkotlinx/coroutines/m1;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/g1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/f1;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    instance-of p1, p0, Lkotlinx/coroutines/a2;

    if-eqz p1, :cond_7

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    if-eq v0, p0, :cond_5

    instance-of v0, v0, Lkotlinx/coroutines/a2;

    if-eqz v0, :cond_5

    move-object v1, p2

    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p0
.end method

.method private final E(Lkotlinx/coroutines/a1;)Lkotlinx/coroutines/q1;
    .locals 2

    invoke-interface {p1}, Lkotlinx/coroutines/a1;->c()Lkotlinx/coroutines/q1;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlinx/coroutines/r0;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/q1;

    invoke-direct {v0}, Lkotlinx/coroutines/q1;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/l1;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/l1;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->i0(Lkotlinx/coroutines/l1;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static final synthetic J()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/m1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/m1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final S()Z
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/a1;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/m1;->l0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private final T(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lkotlinx/coroutines/j;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/j;-><init>(Lkotlin/coroutines/d;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->D()V

    new-instance v6, Lkotlinx/coroutines/u1;

    invoke-direct {v6, v0}, Lkotlinx/coroutines/u1;-><init>(Lkotlin/coroutines/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/j1;->h(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlinx/coroutines/l;->a(Lkotlinx/coroutines/i;Lkotlinx/coroutines/p0;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method private final U(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/m1$b;

    if-eqz v3, :cond_7

    monitor-enter v2

    :try_start_0
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v3}, Lkotlinx/coroutines/m1$b;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/n1;->f()Lkotlinx/coroutines/internal/g0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v3}, Lkotlinx/coroutines/m1$b;->i()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->w(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/m1$b;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/m1$b;->a(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/m1$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/m1$b;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_5

    move-object v0, p1

    :cond_5
    monitor-exit v2

    if-eqz v0, :cond_6

    check-cast v2, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v2}, Lkotlinx/coroutines/m1$b;->c()Lkotlinx/coroutines/q1;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/m1;->c0(Lkotlinx/coroutines/q1;Ljava/lang/Throwable;)V

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0

    :goto_0
    monitor-exit v2

    throw p0

    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/a1;

    if-eqz v3, :cond_b

    if-nez v1, :cond_8

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->w(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_8
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/a1;

    invoke-interface {v3}, Lkotlinx/coroutines/a1;->isActive()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, v3, v1}, Lkotlinx/coroutines/m1;->s0(Lkotlinx/coroutines/a1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v3, Lkotlinx/coroutines/t;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/m1;->t0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v4

    if-eq v3, v4, :cond_a

    invoke-static {}, Lkotlinx/coroutines/n1;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object v2

    if-eq v3, v2, :cond_0

    return-object v3

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot happen in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {}, Lkotlinx/coroutines/n1;->f()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0
.end method

.method private final W(Lkotlinx/coroutines/c1;Z)Lkotlinx/coroutines/l1;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    instance-of p2, p1, Lkotlinx/coroutines/h1;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/h1;

    :cond_0
    if-nez v0, :cond_4

    new-instance v0, Lkotlinx/coroutines/d1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/d1;-><init>(Lkotlinx/coroutines/c1;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lkotlinx/coroutines/l1;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/l1;

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lkotlinx/coroutines/e1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/e1;-><init>(Lkotlinx/coroutines/c1;)V

    :cond_4
    :goto_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/l1;->w(Lkotlinx/coroutines/m1;)V

    return-object v0
.end method

.method private final Z(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/p;
    .locals 0

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->m()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->l()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->q()Z

    move-result p0

    if-nez p0, :cond_0

    instance-of p0, p1, Lkotlinx/coroutines/p;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlinx/coroutines/p;

    return-object p1

    :cond_1
    instance-of p0, p1, Lkotlinx/coroutines/q1;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/coroutines/m1;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c0(Lkotlinx/coroutines/q1;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/m1;->e0(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->k()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lkotlinx/coroutines/h1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/l1;

    :try_start_0
    invoke-interface {v2, p2}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Ln8/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lkotlinx/coroutines/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->l()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/m1;->M(Ljava/lang/Throwable;)V

    :cond_3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/m1;->q(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final d0(Lkotlinx/coroutines/q1;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->k()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lkotlinx/coroutines/l1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/l1;

    :try_start_0
    invoke-interface {v2, p2}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Ln8/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lkotlinx/coroutines/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->l()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/m1;->M(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public static final synthetic h(Lkotlinx/coroutines/m1;Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/m1;->u(Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)V

    return-void
.end method

.method private final h0(Lkotlinx/coroutines/r0;)V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/q1;

    invoke-direct {v0}, Lkotlinx/coroutines/q1;-><init>()V

    invoke-virtual {p1}, Lkotlinx/coroutines/r0;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/z0;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/z0;-><init>(Lkotlinx/coroutines/q1;)V

    move-object v0, v1

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final i0(Lkotlinx/coroutines/l1;)V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/q1;

    invoke-direct {v0}, Lkotlinx/coroutines/q1;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/r;->g(Lkotlinx/coroutines/internal/r;)Z

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->l()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final j(Ljava/lang/Object;Lkotlinx/coroutines/q1;Lkotlinx/coroutines/l1;)Z
    .locals 1

    new-instance v0, Lkotlinx/coroutines/m1$c;

    invoke-direct {v0, p3, p0, p1}, Lkotlinx/coroutines/m1$c;-><init>(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/m1;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/r;->m()Lkotlinx/coroutines/internal/r;

    move-result-object p0

    invoke-virtual {p0, p3, p2, v0}, Lkotlinx/coroutines/internal/r;->u(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r$a;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private final l(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eq v0, p1, :cond_1

    if-eq v0, p1, :cond_1

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Ln8/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final l0(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Lkotlinx/coroutines/r0;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/r0;

    invoke-virtual {v0}, Lkotlinx/coroutines/r0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/n1;->c()Lkotlinx/coroutines/r0;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->g0()V

    return v1

    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/z0;

    if-eqz v0, :cond_4

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/z0;

    invoke-virtual {v3}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/q1;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->g0()V

    return v1

    :cond_4
    return v3
.end method

.method private final m0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of p0, p1, Lkotlinx/coroutines/m1$b;

    const-string v0, "Active"

    if-eqz p0, :cond_1

    check-cast p1, Lkotlinx/coroutines/m1$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/m1$b;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/m1$b;->j()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v0, "Completing"

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lkotlinx/coroutines/a1;

    if-eqz p0, :cond_3

    check-cast p1, Lkotlinx/coroutines/a1;

    invoke-interface {p1}, Lkotlinx/coroutines/a1;->isActive()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "New"

    goto :goto_0

    :cond_3
    instance-of p0, p1, Lkotlinx/coroutines/t;

    if-eqz p0, :cond_4

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v0, "Completed"

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static synthetic o0(Lkotlinx/coroutines/m1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/m1;->n0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/a1;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlinx/coroutines/m1$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v1}, Lkotlinx/coroutines/m1$b;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlinx/coroutines/t;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->w(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/m1;->t0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/n1;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0
.end method

.method private final q(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->R()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->F()Lkotlinx/coroutines/o;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v2, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/o;->e(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private final r0(Lkotlinx/coroutines/a1;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {p2}, Lkotlinx/coroutines/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/m1;->e0(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/m1;->f0(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/m1;->t(Lkotlinx/coroutines/a1;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final s0(Lkotlinx/coroutines/a1;Ljava/lang/Throwable;)Z
    .locals 4

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->E(Lkotlinx/coroutines/a1;)Lkotlinx/coroutines/q1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Lkotlinx/coroutines/m1$b;

    invoke-direct {v2, v0, v1, p2}, Lkotlinx/coroutines/m1$b;-><init>(Lkotlinx/coroutines/q1;ZLjava/lang/Throwable;)V

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, p1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/m1;->c0(Lkotlinx/coroutines/q1;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final t(Lkotlinx/coroutines/a1;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->F()Lkotlinx/coroutines/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/p0;->a()V

    sget-object v0, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/m1;->k0(Lkotlinx/coroutines/o;)V

    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lkotlinx/coroutines/t;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    :cond_2
    instance-of p2, p1, Lkotlinx/coroutines/l1;

    if-eqz p2, :cond_3

    :try_start_0
    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/l1;

    invoke-interface {p2, v1}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/m1;->M(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/a1;->c()Lkotlinx/coroutines/q1;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/m1;->d0(Lkotlinx/coroutines/q1;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final t0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/a1;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/r0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/l1;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/p;

    if-nez v0, :cond_3

    instance-of v0, p2, Lkotlinx/coroutines/t;

    if-nez v0, :cond_3

    check-cast p1, Lkotlinx/coroutines/a1;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/m1;->r0(Lkotlinx/coroutines/a1;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p2

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/n1;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p1, Lkotlinx/coroutines/a1;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/m1;->u0(Lkotlinx/coroutines/a1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final u(Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlinx/coroutines/m1;->Z(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/p;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/m1;->w0(Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/m1;->x(Lkotlinx/coroutines/m1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->m(Ljava/lang/Object;)V

    return-void
.end method

.method private final u0(Lkotlinx/coroutines/a1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->E(Lkotlinx/coroutines/a1;)Lkotlinx/coroutines/q1;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/n1;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, p1, Lkotlinx/coroutines/m1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/m1$b;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v1, Lkotlinx/coroutines/m1$b;

    invoke-direct {v1, v0, v3, v2}, Lkotlinx/coroutines/m1$b;-><init>(Lkotlinx/coroutines/q1;ZLjava/lang/Throwable;)V

    :cond_2
    new-instance v3, Lkotlin/jvm/internal/c0;

    invoke-direct {v3}, Lkotlin/jvm/internal/c0;-><init>()V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lkotlinx/coroutines/m1$b;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/m1$b;->m(Z)V

    if-eq v1, p1, :cond_4

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlinx/coroutines/n1;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lkotlinx/coroutines/m1$b;->i()Z

    move-result v4

    instance-of v5, p2, Lkotlinx/coroutines/t;

    if-eqz v5, :cond_5

    move-object v5, p2

    check-cast v5, Lkotlinx/coroutines/t;

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v5, v5, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lkotlinx/coroutines/m1$b;->a(Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {v1}, Lkotlinx/coroutines/m1$b;->e()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v4, :cond_7

    move-object v2, v5

    :cond_7
    iput-object v2, v3, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_8

    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/m1;->c0(Lkotlinx/coroutines/q1;Ljava/lang/Throwable;)V

    :cond_8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->y(Lkotlinx/coroutines/a1;)Lkotlinx/coroutines/p;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v1, p1, p2}, Lkotlinx/coroutines/m1;->w0(Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p0, Lkotlinx/coroutines/n1;->b:Lkotlinx/coroutines/internal/g0;

    return-object p0

    :cond_9
    invoke-direct {p0, v1, p2}, Lkotlinx/coroutines/m1;->x(Lkotlinx/coroutines/m1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method private final w(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    new-instance p1, Lkotlinx/coroutines/g1;

    invoke-static {p0}, Lkotlinx/coroutines/m1;->b(Lkotlinx/coroutines/m1;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/g1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/f1;)V

    goto :goto_1

    :cond_1
    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/t1;

    invoke-interface {p1}, Lkotlinx/coroutines/t1;->I()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private final w0(Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)Z
    .locals 6

    :cond_0
    iget-object v0, p2, Lkotlinx/coroutines/p;->h:Lkotlinx/coroutines/q;

    new-instance v3, Lkotlinx/coroutines/m1$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lkotlinx/coroutines/m1$a;-><init>(Lkotlinx/coroutines/m1;Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j1;->h(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/m1;->Z(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/p;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method private final x(Lkotlinx/coroutines/m1$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lkotlinx/coroutines/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/t;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/m1$b;->i()Z

    move-result v2

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/m1$b;->l(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/m1;->A(Lkotlinx/coroutines/m1$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Lkotlinx/coroutines/m1;->l(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    monitor-exit p1

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p2, Lkotlinx/coroutines/t;

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p2, v4, v0, v3, v1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    if-eqz v4, :cond_6

    invoke-direct {p0, v4}, Lkotlinx/coroutines/m1;->q(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/m1;->L(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/t;

    invoke-virtual {v0}, Lkotlinx/coroutines/t;->c()Z

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/m1;->e0(Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/m1;->f0(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {p2}, Lkotlinx/coroutines/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/m1;->t(Lkotlinx/coroutines/a1;Ljava/lang/Object;)V

    return-object p2

    :goto_4
    monitor-exit p1

    throw p0
.end method

.method private final y(Lkotlinx/coroutines/a1;)Lkotlinx/coroutines/p;
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/p;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/a1;->c()Lkotlinx/coroutines/q1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->Z(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/p;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final z(Ljava/lang/Object;)Ljava/lang/Throwable;
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


# virtual methods
.method public B()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public C()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final F()Lkotlinx/coroutines/o;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/m1;->J()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/o;

    return-object p0
.end method

.method public final G(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/m1;->S()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/j1;->e(Lkotlin/coroutines/g;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->T(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final H()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/z;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public I()Ljava/util/concurrent/CancellationException;
    .locals 5

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/m1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v1}, Lkotlinx/coroutines/m1$b;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/t;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/t;

    iget-object v1, v1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/a1;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/g1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/m1;->m0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/g1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/f1;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected L(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public M(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method public final N()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/m1$b;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v0}, Lkotlinx/coroutines/m1$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/g0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/m1;->n0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/a1;

    if-nez v1, :cond_3

    instance-of v1, v0, Lkotlinx/coroutines/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/t;

    iget-object v0, v0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/m1;->o0(Lkotlinx/coroutines/m1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlinx/coroutines/g1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/g0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/g1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/f1;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final O(Lkotlinx/coroutines/f1;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->k0(Lkotlinx/coroutines/o;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/f1;->start()Z

    invoke-interface {p1, p0}, Lkotlinx/coroutines/f1;->v0(Lkotlinx/coroutines/q;)Lkotlinx/coroutines/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->k0(Lkotlinx/coroutines/o;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/p0;->a()V

    sget-object p1, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->k0(Lkotlinx/coroutines/o;)V

    :cond_1
    return-void
.end method

.method public final P(ZZLkotlinx/coroutines/c1;)Lkotlinx/coroutines/p0;
    .locals 6

    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/m1;->W(Lkotlinx/coroutines/c1;Z)Lkotlinx/coroutines/l1;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/r0;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/r0;

    invoke-virtual {v2}, Lkotlinx/coroutines/r0;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-static {v2, p0, v1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Lkotlinx/coroutines/m1;->h0(Lkotlinx/coroutines/r0;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/a1;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/a1;

    invoke-interface {v2}, Lkotlinx/coroutines/a1;->c()Lkotlinx/coroutines/q1;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/l1;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/m1;->i0(Lkotlinx/coroutines/l1;)V

    goto :goto_0

    :cond_3
    sget-object v4, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    if-eqz p1, :cond_8

    instance-of v5, v1, Lkotlinx/coroutines/m1$b;

    if-eqz v5, :cond_8

    monitor-enter v1

    :try_start_0
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v3}, Lkotlinx/coroutines/m1$b;->e()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v5, p3, Lkotlinx/coroutines/p;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/m1$b;

    invoke-virtual {v5}, Lkotlinx/coroutines/m1$b;->j()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/m1;->j(Ljava/lang/Object;Lkotlinx/coroutines/q1;Lkotlinx/coroutines/l1;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    monitor-exit v1

    return-object v0

    :cond_6
    move-object v4, v0

    :cond_7
    :try_start_1
    sget-object v5, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1

    throw p0

    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    invoke-interface {p3, v3}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V

    :cond_9
    return-object v4

    :cond_a
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/m1;->j(Ljava/lang/Object;Lkotlinx/coroutines/q1;Lkotlinx/coroutines/l1;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_b
    if-eqz p2, :cond_e

    instance-of p0, v1, Lkotlinx/coroutines/t;

    if-eqz p0, :cond_c

    check-cast v1, Lkotlinx/coroutines/t;

    goto :goto_4

    :cond_c
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_d

    iget-object v3, v1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    :cond_d
    invoke-interface {p3, v3}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V

    :cond_e
    sget-object p0, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    return-object p0
.end method

.method public final Q()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/a1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected R()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final V(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/m1;->t0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/n1;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->z(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public X(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/g1;

    invoke-static {p0}, Lkotlinx/coroutines/m1;->b(Lkotlinx/coroutines/m1;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/g1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/f1;)V

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->o(Ljava/lang/Throwable;)V

    return-void
.end method

.method public Y()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/g0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a0(Lkotlinx/coroutines/t1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->n(Ljava/lang/Object;)Z

    return-void
.end method

.method protected e0(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected f0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/f1$a;->b(Lkotlinx/coroutines/f1;Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected g0()V
    .locals 0

    return-void
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/f1$a;->c(Lkotlinx/coroutines/f1;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lkotlin/coroutines/g$c;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    return-object p0
.end method

.method public getParent()Lkotlinx/coroutines/f1;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->F()Lkotlinx/coroutines/o;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/o;->getParent()Lkotlinx/coroutines/f1;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final i(ZZLw8/l;)Lkotlinx/coroutines/p0;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/c1$a;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/c1$a;-><init>(Lw8/l;)V

    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/coroutines/m1;->P(ZZLkotlinx/coroutines/c1;)Lkotlinx/coroutines/p0;

    move-result-object p0

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/a1;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/a1;

    invoke-interface {p0}, Lkotlinx/coroutines/a1;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j0(Lkotlinx/coroutines/l1;)V
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/l1;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/m1;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/n1;->c()Lkotlinx/coroutines/r0;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    instance-of p0, v0, Lkotlinx/coroutines/a1;

    if-eqz p0, :cond_3

    check-cast v0, Lkotlinx/coroutines/a1;

    invoke-interface {v0}, Lkotlinx/coroutines/a1;->c()Lkotlinx/coroutines/q1;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->r()Z

    :cond_3
    return-void
.end method

.method public final k0(Lkotlinx/coroutines/o;)V
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/m1;->J()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected m(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/f1$a;->d(Lkotlinx/coroutines/f1;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->C()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/n1;->b:Lkotlinx/coroutines/internal/g0;

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lkotlinx/coroutines/n1;->b:Lkotlinx/coroutines/internal/g0;

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/n1;->f()Lkotlinx/coroutines/internal/g0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/m1;->m(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method protected final n0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/g1;

    if-nez p2, :cond_1

    invoke-static {p0}, Lkotlinx/coroutines/m1;->b(Lkotlinx/coroutines/m1;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/g1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/f1;)V

    :cond_2
    return-object v0
.end method

.method public o(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->n(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/m1;->m0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/f1$a;->e(Lkotlinx/coroutines/f1;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method protected r()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public s(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->n(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->B()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final start()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/m1;->l0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/g0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0(Lkotlinx/coroutines/q;)Lkotlinx/coroutines/o;
    .locals 6

    new-instance v3, Lkotlinx/coroutines/p;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/p;-><init>(Lkotlinx/coroutines/q;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j1;->h(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/o;

    return-object p0
.end method
