.class public final Lg9/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lg9/n;

.field private final b:Lkotlin/jvm/internal/c0;

.field public c:Lg9/a$d;

.field private f:J

.field private h:J

.field private i:I

.field private volatile indexInArray:I

.field public j:Z

.field final synthetic k:Lg9/a;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private volatile synthetic workerCtl$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg9/a$c;

    const-string v1, "workerCtl$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg9/a$c;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lg9/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lg9/a$c;->k:Lg9/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    new-instance p1, Lg9/n;

    invoke-direct {p1}, Lg9/n;-><init>()V

    iput-object p1, p0, Lg9/a$c;->a:Lg9/n;

    .line 5
    new-instance p1, Lkotlin/jvm/internal/c0;

    invoke-direct {p1}, Lkotlin/jvm/internal/c0;-><init>()V

    iput-object p1, p0, Lg9/a$c;->b:Lkotlin/jvm/internal/c0;

    .line 6
    sget-object p1, Lg9/a$d;->DORMANT:Lg9/a$d;

    iput-object p1, p0, Lg9/a$c;->c:Lg9/a$d;

    .line 7
    sget-object p1, Lg9/a;->o:Lkotlinx/coroutines/internal/g0;

    iput-object p1, p0, Lg9/a$c;->nextParkedWorker:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-int p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a

    .line 9
    :goto_0
    iput p1, p0, Lg9/a$c;->i:I

    return-void
.end method

.method public constructor <init>(Lg9/a;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lg9/a$c;-><init>(Lg9/a;)V

    .line 11
    invoke-virtual {p0, p2}, Lg9/a$c;->q(I)V

    return-void
.end method

.method public static final synthetic a(Lg9/a$c;)Lg9/a;
    .locals 0

    iget-object p0, p0, Lg9/a$c;->k:Lg9/a;

    return-object p0
.end method

.method private final b(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lg9/a$c;->k:Lg9/a;

    invoke-static {}, Lg9/a;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object p1, p0, Lg9/a$c;->c:Lg9/a$d;

    sget-object v0, Lg9/a$d;->TERMINATED:Lg9/a$d;

    if-eq p1, v0, :cond_1

    sget-object p1, Lg9/a$d;->DORMANT:Lg9/a$d;

    iput-object p1, p0, Lg9/a$c;->c:Lg9/a$d;

    :cond_1
    return-void
.end method

.method private final c(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lg9/a$d;->BLOCKING:Lg9/a$d;

    invoke-virtual {p0, p1}, Lg9/a$c;->u(Lg9/a$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lg9/a$c;->k:Lg9/a;

    invoke-virtual {p0}, Lg9/a;->G0()V

    :cond_1
    return-void
.end method

.method private final d(Lg9/h;)V
    .locals 2

    iget-object v0, p1, Lg9/h;->b:Lg9/i;

    invoke-interface {v0}, Lg9/i;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lg9/a$c;->k(I)V

    invoke-direct {p0, v0}, Lg9/a$c;->c(I)V

    iget-object v1, p0, Lg9/a$c;->k:Lg9/a;

    invoke-virtual {v1, p1}, Lg9/a;->D0(Lg9/h;)V

    invoke-direct {p0, v0}, Lg9/a$c;->b(I)V

    return-void
.end method

.method private final e(Z)Lg9/h;
    .locals 1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg9/a$c;->k:Lg9/a;

    iget p1, p1, Lg9/a;->a:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg9/a$c;->m(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lg9/a$c;->o()Lg9/h;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lg9/a$c;->a:Lg9/n;

    invoke-virtual {v0}, Lg9/n;->k()Lg9/h;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-nez p1, :cond_4

    invoke-direct {p0}, Lg9/a$c;->o()Lg9/h;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_3
    invoke-direct {p0}, Lg9/a$c;->o()Lg9/h;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lg9/a$c;->v(I)Lg9/h;

    move-result-object p0

    return-object p0
.end method

.method private final f()Lg9/h;
    .locals 1

    iget-object v0, p0, Lg9/a$c;->a:Lg9/n;

    invoke-virtual {v0}, Lg9/n;->l()Lg9/h;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    iget-object v0, v0, Lg9/a;->i:Lg9/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg9/a$c;->v(I)Lg9/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final synthetic j()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lg9/a$c;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final k(I)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg9/a$c;->f:J

    iget-object p1, p0, Lg9/a$c;->c:Lg9/a$d;

    sget-object v0, Lg9/a$d;->PARKING:Lg9/a$d;

    if-ne p1, v0, :cond_0

    sget-object p1, Lg9/a$d;->BLOCKING:Lg9/a$d;

    iput-object p1, p0, Lg9/a$c;->c:Lg9/a$d;

    :cond_0
    return-void
.end method

.method private final l()Z
    .locals 1

    iget-object p0, p0, Lg9/a$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object v0, Lg9/a;->o:Lkotlinx/coroutines/internal/g0;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final n()V
    .locals 6

    iget-wide v0, p0, Lg9/a$c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lg9/a$c;->k:Lg9/a;

    iget-wide v4, v4, Lg9/a;->c:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lg9/a$c;->f:J

    :cond_0
    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    iget-wide v0, v0, Lg9/a;->c:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lg9/a$c;->f:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iput-wide v2, p0, Lg9/a$c;->f:J

    invoke-direct {p0}, Lg9/a$c;->w()V

    :cond_1
    return-void
.end method

.method private final o()Lg9/h;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lg9/a$c;->m(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    iget-object v0, v0, Lg9/a;->h:Lg9/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lg9/a$c;->k:Lg9/a;

    iget-object p0, p0, Lg9/a;->i:Lg9/d;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/s;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg9/h;

    return-object p0

    :cond_1
    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    iget-object v0, v0, Lg9/a;->i:Lg9/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lg9/a$c;->k:Lg9/a;

    iget-object p0, p0, Lg9/a;->h:Lg9/d;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/s;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg9/h;

    return-object p0
.end method

.method private final p()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lg9/a$c;->k:Lg9/a;

    invoke-virtual {v2}, Lg9/a;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lg9/a$c;->c:Lg9/a$d;

    sget-object v3, Lg9/a$d;->TERMINATED:Lg9/a$d;

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Lg9/a$c;->j:Z

    invoke-virtual {p0, v2}, Lg9/a$c;->g(Z)Lg9/h;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iput-wide v3, p0, Lg9/a$c;->h:J

    invoke-direct {p0, v2}, Lg9/a$c;->d(Lg9/h;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lg9/a$c;->j:Z

    iget-wide v5, p0, Lg9/a$c;->h:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lg9/a$d;->PARKING:Lg9/a$d;

    invoke-virtual {p0, v1}, Lg9/a$c;->u(Lg9/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v1, p0, Lg9/a$c;->h:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v3, p0, Lg9/a$c;->h:J

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lg9/a$c;->t()V

    goto :goto_1

    :cond_3
    sget-object v0, Lg9/a$d;->TERMINATED:Lg9/a$d;

    invoke-virtual {p0, v0}, Lg9/a$c;->u(Lg9/a$d;)Z

    return-void
.end method

.method private final s()Z
    .locals 9

    iget-object v0, p0, Lg9/a$c;->c:Lg9/a$d;

    sget-object v1, Lg9/a$d;->CPU_ACQUIRED:Lg9/a$d;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    invoke-static {}, Lg9/a;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v3, v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    invoke-static {}, Lg9/a;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lg9/a$d;->CPU_ACQUIRED:Lg9/a$d;

    iput-object v0, p0, Lg9/a$c;->c:Lg9/a$d;

    :goto_0
    return v2
.end method

.method private final t()V
    .locals 3

    invoke-direct {p0}, Lg9/a$c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    invoke-virtual {v0, p0}, Lg9/a;->v0(Lg9/a$c;)Z

    return-void

    :cond_0
    invoke-static {}, Lg9/a$c;->j()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :goto_0
    invoke-direct {p0}, Lg9/a$c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg9/a$c;->j()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    invoke-virtual {v0}, Lg9/a;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg9/a$c;->c:Lg9/a$d;

    sget-object v2, Lg9/a$d;->TERMINATED:Lg9/a$d;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lg9/a$d;->PARKING:Lg9/a$d;

    invoke-virtual {p0, v0}, Lg9/a$c;->u(Lg9/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-direct {p0}, Lg9/a$c;->n()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final v(I)Lg9/h;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lg9/a$c;->k:Lg9/a;

    invoke-static {}, Lg9/a;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v1}, Lg9/a$c;->m(I)I

    move-result v2

    iget-object v4, v0, Lg9/a$c;->k:Lg9/a;

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-wide v8, v5

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v7, v1, :cond_5

    const/4 v12, 0x1

    add-int/2addr v2, v12

    if-le v2, v1, :cond_1

    move v2, v12

    :cond_1
    iget-object v12, v4, Lg9/a;->j:Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v12, v2}, Lkotlinx/coroutines/internal/b0;->b(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg9/a$c;

    if-eqz v12, :cond_3

    if-eq v12, v0, :cond_3

    iget-object v12, v12, Lg9/a$c;->a:Lg9/n;

    iget-object v13, v0, Lg9/a$c;->b:Lkotlin/jvm/internal/c0;

    move/from16 v14, p1

    invoke-virtual {v12, v14, v13}, Lg9/n;->r(ILkotlin/jvm/internal/c0;)J

    move-result-wide v12

    const-wide/16 v15, -0x1

    cmp-long v15, v12, v15

    if-nez v15, :cond_2

    iget-object v0, v0, Lg9/a$c;->b:Lkotlin/jvm/internal/c0;

    iget-object v1, v0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v1, Lg9/h;

    iput-object v3, v0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    return-object v1

    :cond_2
    cmp-long v10, v12, v10

    if-lez v10, :cond_4

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_3
    move/from16 v14, p1

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    cmp-long v1, v8, v5

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-wide v8, v10

    :goto_2
    iput-wide v8, v0, Lg9/a$c;->h:J

    return-object v3
.end method

.method private final w()V
    .locals 8

    iget-object v0, p0, Lg9/a$c;->k:Lg9/a;

    iget-object v1, v0, Lg9/a;->j:Lkotlinx/coroutines/internal/b0;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lg9/a;->isTerminated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lg9/a;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, v0, Lg9/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v3, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lg9/a$c;->j()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_3
    iget v2, p0, Lg9/a$c;->indexInArray:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lg9/a$c;->q(I)V

    invoke-virtual {v0, p0, v2, v3}, Lg9/a;->x0(Lg9/a$c;II)V

    invoke-static {}, Lg9/a;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v6

    and-long v3, v6, v4

    long-to-int v3, v3

    if-eq v3, v2, :cond_3

    iget-object v4, v0, Lg9/a;->j:Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/internal/b0;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v4, Lg9/a$c;

    iget-object v5, v0, Lg9/a;->j:Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v5, v2, v4}, Lkotlinx/coroutines/internal/b0;->c(ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Lg9/a$c;->q(I)V

    invoke-virtual {v0, v4, v3, v2}, Lg9/a;->x0(Lg9/a$c;II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, v0, Lg9/a;->j:Lkotlinx/coroutines/internal/b0;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lkotlinx/coroutines/internal/b0;->c(ILjava/lang/Object;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    sget-object v0, Lg9/a$d;->TERMINATED:Lg9/a$d;

    iput-object v0, p0, Lg9/a$c;->c:Lg9/a$d;

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final g(Z)Lg9/h;
    .locals 1

    invoke-direct {p0}, Lg9/a$c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lg9/a$c;->e(Z)Lg9/h;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lg9/a$c;->f()Lg9/h;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lg9/a$c;->indexInArray:I

    return p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg9/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final m(I)I
    .locals 2

    iget v0, p0, Lg9/a$c;->i:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lg9/a$c;->i:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final q(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg9/a$c;->k:Lg9/a;

    iget-object v1, v1, Lg9/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lg9/a$c;->indexInArray:I

    return-void
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg9/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lg9/a$c;->p()V

    return-void
.end method

.method public final u(Lg9/a$d;)Z
    .locals 6

    iget-object v0, p0, Lg9/a$c;->c:Lg9/a$d;

    sget-object v1, Lg9/a$d;->CPU_ACQUIRED:Lg9/a$d;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lg9/a$c;->k:Lg9/a;

    invoke-static {}, Lg9/a;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lg9/a$c;->c:Lg9/a$d;

    :cond_2
    return v1
.end method
