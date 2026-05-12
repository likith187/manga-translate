.class final Lkotlinx/coroutines/d1;
.super Lkotlinx/coroutines/h1;
.source "SourceFile"


# static fields
.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked$volatile:I

.field private final h:Lkotlinx/coroutines/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/d1;

    const-string v1, "_invoked$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/d1;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/c1;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/h1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/d1;->h:Lkotlinx/coroutines/c1;

    return-void
.end method

.method private static final synthetic x()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/d1;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/d1;->x()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/d1;->h:Lkotlinx/coroutines/c1;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
