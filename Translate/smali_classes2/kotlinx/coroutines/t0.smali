.class public abstract Lkotlinx/coroutines/t0;
.super Lkotlinx/coroutines/u0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/t0$a;,
        Lkotlinx/coroutines/t0$b;,
        Lkotlinx/coroutines/t0$c;
    }
.end annotation


# static fields
.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _delayed$volatile:Ljava/lang/Object;

.field private volatile synthetic _isCompleted$volatile:I

.field private volatile synthetic _queue$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue$volatile"

    const-class v1, Lkotlinx/coroutines/t0;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/t0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/t0;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/t0;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/u0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/t0;->_isCompleted$volatile:I

    return-void
.end method

.method public static final synthetic R0(Lkotlinx/coroutines/t0;)Z
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/t0;->Z0()Z

    move-result p0

    return p0
.end method

.method private final S0()V
    .locals 5

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lkotlinx/coroutines/w0;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/internal/t;

    if-eqz v2, :cond_2

    check-cast v1, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->d()Z

    return-void

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/w0;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-void

    :cond_3
    new-instance v2, Lkotlinx/coroutines/internal/t;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/internal/t;-><init>(IZ)V

    const-string v3, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private final T0()Ljava/lang/Runnable;
    .locals 5

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    instance-of v3, v1, Lkotlinx/coroutines/internal/t;

    if-eqz v3, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/t;->m()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/internal/t;->h:Lkotlinx/coroutines/internal/g0;

    if-eq v3, v4, :cond_2

    check-cast v3, Ljava/lang/Runnable;

    return-object v3

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/t;->l()Lkotlinx/coroutines/internal/t;

    move-result-object v2

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/w0;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v3

    if-ne v1, v3, :cond_4

    return-object v2

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    return-object v1
.end method

.method private final V0(Ljava/lang/Runnable;)Z
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lkotlinx/coroutines/t0;->Z0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_2
    instance-of v4, v1, Lkotlinx/coroutines/internal/t;

    if-eqz v4, :cond_6

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v4, p1}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_4

    const/4 v1, 0x2

    if-eq v5, v1, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/t;->l()Lkotlinx/coroutines/internal/t;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/w0;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v4

    if-ne v1, v4, :cond_7

    return v3

    :cond_7
    new-instance v3, Lkotlinx/coroutines/internal/t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/internal/t;-><init>(IZ)V

    const-string v4, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2
.end method

.method private static final synthetic W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t0;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic X0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t0;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private static final synthetic Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final Z0()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/t0;->X0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final c1()V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/t0$c;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/m0;->j()Lkotlinx/coroutines/internal/n0;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/t0$b;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/u0;->P0(JLkotlinx/coroutines/t0$b;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final f1(JLkotlinx/coroutines/t0$b;)I
    .locals 3

    invoke-direct {p0}, Lkotlinx/coroutines/t0;->Z0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t0$c;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/t0$c;

    invoke-direct {v1, p1, p2}, Lkotlinx/coroutines/t0$c;-><init>(J)V

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/t0$c;

    :cond_1
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/t0$b;->h(JLkotlinx/coroutines/t0$c;Lkotlinx/coroutines/t0;)I

    move-result p0

    return p0
.end method

.method private final g1(Z)V
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/t0;->X0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method private final h1(Lkotlinx/coroutines/t0$b;)Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t0$c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/m0;->f()Lkotlinx/coroutines/internal/n0;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t0$b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method protected I0()J
    .locals 6

    invoke-super {p0}, Lkotlinx/coroutines/s0;->I0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    instance-of v1, v0, Lkotlinx/coroutines/internal/t;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/t;->j()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v2

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/w0;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    if-ne v0, p0, :cond_2

    return-wide v4

    :cond_2
    return-wide v2

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t0$c;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/m0;->f()Lkotlinx/coroutines/internal/n0;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t0$b;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lkotlinx/coroutines/t0$b;->a:J

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lb9/d;->d(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    :goto_0
    return-wide v4
.end method

.method public U0(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/t0;->V0(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/u0;->Q0()V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlinx/coroutines/h0;->INSTANCE:Lkotlinx/coroutines/h0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->U0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected a1()Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/s0;->M0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t0$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m0;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    instance-of v2, p0, Lkotlinx/coroutines/internal/t;

    if-eqz v2, :cond_3

    check-cast p0, Lkotlinx/coroutines/internal/t;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->j()Z

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/w0;->a()Lkotlinx/coroutines/internal/g0;

    move-result-object v2

    if-ne p0, v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public b1()J
    .locals 9

    invoke-virtual {p0}, Lkotlinx/coroutines/s0;->N0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t0$c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m0;->e()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m0;->b()Lkotlinx/coroutines/internal/n0;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-nez v5, :cond_2

    monitor-exit v0

    goto :goto_1

    :cond_2
    :try_start_1
    check-cast v5, Lkotlinx/coroutines/t0$b;

    invoke-virtual {v5, v3, v4}, Lkotlinx/coroutines/t0$b;->i(J)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-direct {p0, v5}, Lkotlinx/coroutines/t0;->V0(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    move v5, v8

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {v0, v8}, Lkotlinx/coroutines/internal/m0;->i(I)Lkotlinx/coroutines/internal/n0;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    :goto_1
    check-cast v6, Lkotlinx/coroutines/t0$b;

    if-nez v6, :cond_1

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_5
    :goto_3
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->T0()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/t0;->I0()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final d1()V
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/t0;->Y0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/t0;->W0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e1(JLkotlinx/coroutines/t0$b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/t0;->f1(JLkotlinx/coroutines/t0$b;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/u0;->P0(JLkotlinx/coroutines/t0$b;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lkotlinx/coroutines/t0;->h1(Lkotlinx/coroutines/t0$b;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/u0;->Q0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 4

    sget-object v0, Lkotlinx/coroutines/z1;->INSTANCE:Lkotlinx/coroutines/z1;

    invoke-virtual {v0}, Lkotlinx/coroutines/z1;->b()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/t0;->g1(Z)V

    invoke-direct {p0}, Lkotlinx/coroutines/t0;->S0()V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/t0;->b1()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/t0;->c1()V

    return-void
.end method

.method public x(JLkotlinx/coroutines/i;)V
    .locals 3

    invoke-static {p1, p2}, Lkotlinx/coroutines/w0;->c(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Lkotlinx/coroutines/t0$a;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lkotlinx/coroutines/t0$a;-><init>(Lkotlinx/coroutines/t0;JLkotlinx/coroutines/i;)V

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/t0;->e1(JLkotlinx/coroutines/t0$b;)V

    invoke-static {p3, v2}, Lkotlinx/coroutines/l;->a(Lkotlinx/coroutines/i;Lkotlinx/coroutines/p0;)V

    :cond_0
    return-void
.end method

.method public final x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/t0;->U0(Ljava/lang/Runnable;)V

    return-void
.end method
