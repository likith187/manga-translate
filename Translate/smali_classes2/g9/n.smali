.class public final Lg9/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile synthetic blockingTasksInBuffer$volatile:I

.field private volatile synthetic consumerIndex$volatile:I

.field private volatile synthetic lastScheduledTask$volatile:Ljava/lang/Object;

.field private volatile synthetic producerIndex$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "lastScheduledTask$volatile"

    const-class v2, Lg9/n;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg9/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "producerIndex$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg9/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "consumerIndex$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg9/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "blockingTasksInBuffer$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg9/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lg9/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method private final b(Lg9/h;)Lg9/h;
    .locals 3

    invoke-direct {p0}, Lg9/n;->e()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lg9/h;->b:Lg9/i;

    invoke-interface {v0}, Lg9/i;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Lg9/n;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_1
    invoke-static {}, Lg9/n;->h()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    and-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lg9/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lg9/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-static {}, Lg9/n;->h()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private final c(Lg9/h;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg9/h;->b:Lg9/i;

    invoke-interface {p1}, Lg9/i;->b()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lg9/n;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method private static final synthetic d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lg9/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final e()I
    .locals 2

    invoke-static {}, Lg9/n;->h()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lg9/n;->f()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private static final synthetic f()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lg9/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private static final synthetic g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lg9/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic h()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lg9/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final m()Lg9/h;
    .locals 5

    :cond_0
    :goto_0
    invoke-static {}, Lg9/n;->f()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lg9/n;->h()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    invoke-static {}, Lg9/n;->f()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg9/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lg9/n;->c(Lg9/h;)V

    return-object v0
.end method

.method private final n(Lg9/d;)Z
    .locals 0

    invoke-direct {p0}, Lg9/n;->m()Lg9/h;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private final o(Z)Lg9/h;
    .locals 4

    :cond_0
    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lg9/h;->b:Lg9/i;

    invoke-interface {v2}, Lg9/i;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ne v3, p1, :cond_3

    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_3
    :goto_1
    invoke-static {}, Lg9/n;->f()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lg9/n;->h()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    :cond_4
    if-eq v0, v2, :cond_6

    if-eqz p1, :cond_5

    invoke-static {}, Lg9/n;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, p1}, Lg9/n;->q(IZ)Lg9/h;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_6
    return-object v1
.end method

.method private final p(I)Lg9/h;
    .locals 4

    invoke-static {}, Lg9/n;->f()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lg9/n;->h()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eq v0, v1, :cond_3

    if-eqz v2, :cond_1

    invoke-static {}, Lg9/n;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 p1, v0, 0x1

    invoke-direct {p0, v0, v2}, Lg9/n;->q(IZ)Lg9/h;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    return-object p1
.end method

.method private final q(IZ)Lg9/h;
    .locals 4

    and-int/lit8 p1, p1, 0x7f

    iget-object v0, p0, Lg9/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lg9/h;->b:Lg9/i;

    invoke-interface {v2}, Lg9/i;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v3, p2, :cond_2

    iget-object v2, p0, Lg9/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v2, p1, v0, v1}, Lkotlinx/coroutines/channels/h;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {}, Lg9/n;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method private final s(ILkotlin/jvm/internal/c0;)J
    .locals 6

    :cond_0
    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget-object v3, v0, Lg9/h;->b:Lg9/i;

    invoke-interface {v3}, Lg9/i;->b()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    and-int v3, v4, p1

    if-nez v3, :cond_3

    return-wide v1

    :cond_3
    sget-object v1, Lg9/l;->f:Lg9/g;

    invoke-virtual {v1}, Lg9/g;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lg9/h;->a:J

    sub-long/2addr v1, v3

    sget-wide v3, Lg9/l;->b:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    sub-long/2addr v3, v1

    return-wide v3

    :cond_4
    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p2, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    const-wide/16 p0, -0x1

    return-wide p0
.end method


# virtual methods
.method public final a(Lg9/h;Z)Lg9/h;
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lg9/n;->b(Lg9/h;)Lg9/h;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/h;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-direct {p0, p1}, Lg9/n;->b(Lg9/h;)Lg9/h;

    move-result-object p0

    return-object p0
.end method

.method public final i()I
    .locals 1

    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lg9/n;->e()I

    move-result p0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public final j(Lg9/d;)V
    .locals 2

    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1}, Lg9/n;->n(Lg9/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final k()Lg9/h;
    .locals 2

    invoke-static {}, Lg9/n;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lg9/n;->m()Lg9/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final l()Lg9/h;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg9/n;->o(Z)Lg9/h;

    move-result-object p0

    return-object p0
.end method

.method public final r(ILkotlin/jvm/internal/c0;)J
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lg9/n;->m()Lg9/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lg9/n;->p(I)Lg9/h;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iput-object v0, p2, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    invoke-direct {p0, p1, p2}, Lg9/n;->s(ILkotlin/jvm/internal/c0;)J

    move-result-wide p0

    return-wide p0
.end method
