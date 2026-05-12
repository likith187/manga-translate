.class public abstract Lkotlinx/coroutines/u0;
.super Lkotlinx/coroutines/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/s0;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract O0()Ljava/lang/Thread;
.end method

.method protected P0(JLkotlinx/coroutines/t0$b;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/h0;->INSTANCE:Lkotlinx/coroutines/h0;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/t0;->e1(JLkotlinx/coroutines/t0$b;)V

    return-void
.end method

.method protected final Q0()V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/u0;->O0()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
