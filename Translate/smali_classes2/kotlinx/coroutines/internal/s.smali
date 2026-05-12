.class public Lkotlinx/coroutines/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _cur$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_cur$volatile"

    const-class v2, Lkotlinx/coroutines/internal/s;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/coroutines/internal/t;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/t;-><init>(IZ)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/s;->_cur$volatile:Ljava/lang/Object;

    return-void
.end method

.method private static final synthetic d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/internal/s;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/s;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->l()Lkotlinx/coroutines/internal/t;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/internal/s;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/s;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->l()Lkotlinx/coroutines/internal/t;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/s;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/internal/t;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->g()I

    move-result p0

    return p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/internal/s;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->m()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/internal/t;->h:Lkotlinx/coroutines/internal/g0;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/s;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->l()Lkotlinx/coroutines/internal/t;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
