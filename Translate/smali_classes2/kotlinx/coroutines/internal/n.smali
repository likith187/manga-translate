.class public final Lkotlinx/coroutines/internal/n;
.super Lkotlinx/coroutines/y;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/n$a;
    }
.end annotation


# static fields
.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final c:Lkotlinx/coroutines/y;

.field private final f:I

.field private final synthetic h:Lkotlinx/coroutines/j0;

.field private final i:Lkotlinx/coroutines/internal/s;

.field private final j:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/n;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/n;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/y;I)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/y;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->c:Lkotlinx/coroutines/y;

    iput p2, p0, Lkotlinx/coroutines/internal/n;->f:I

    instance-of p2, p1, Lkotlinx/coroutines/j0;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/j0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/i0;->a()Lkotlinx/coroutines/j0;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->h:Lkotlinx/coroutines/j0;

    new-instance p1, Lkotlinx/coroutines/internal/s;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/s;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->i:Lkotlinx/coroutines/internal/s;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->j:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic F0(Lkotlinx/coroutines/internal/n;)Lkotlinx/coroutines/y;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/n;->c:Lkotlinx/coroutines/y;

    return-object p0
.end method

.method public static final synthetic G0(Lkotlinx/coroutines/internal/n;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;->I0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic H0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/n;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final I0()Ljava/lang/Runnable;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->i:Lkotlinx/coroutines/internal/s;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/n;->H0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v1, p0, Lkotlinx/coroutines/internal/n;->i:Lkotlinx/coroutines/internal/s;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->c()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/n;->H0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method private final J0()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/n;->H0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lkotlinx/coroutines/internal/n;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/n;->H0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public x(JLkotlinx/coroutines/i;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/n;->h:Lkotlinx/coroutines/j0;

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/j0;->x(JLkotlinx/coroutines/i;)V

    return-void
.end method

.method public x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/internal/n;->i:Lkotlinx/coroutines/internal/s;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lkotlinx/coroutines/internal/n;->H0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/internal/n;->f:I

    if-ge p1, p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;->J0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;->I0()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/n$a;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/n$a;-><init>(Lkotlinx/coroutines/internal/n;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/n;->c:Lkotlinx/coroutines/y;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/y;->x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
