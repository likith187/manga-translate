.class public final Lkotlinx/coroutines/l0;
.super Lkotlinx/coroutines/internal/c0;
.source "SourceFile"


# static fields
.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decision$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/l0;

    const-string v1, "_decision$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/l0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/c0;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    return-void
.end method

.method public static final synthetic C0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/l0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final D0()Z
    .locals 5

    invoke-static {}, Lkotlinx/coroutines/l0;->C0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/l0;->C0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method private final E0()Z
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/l0;->C0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    if-ne v1, p0, :cond_1

    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/l0;->C0()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method


# virtual methods
.method public final B0()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/l0;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/n1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/t;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    check-cast p0, Lkotlinx/coroutines/t;

    iget-object p0, p0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method protected m(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/l0;->x0(Ljava/lang/Object;)V

    return-void
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/l0;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-static {p1, p0}, Lkotlinx/coroutines/w;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, v1}, Lkotlinx/coroutines/internal/k;->c(Lkotlin/coroutines/d;Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)V

    return-void
.end method
