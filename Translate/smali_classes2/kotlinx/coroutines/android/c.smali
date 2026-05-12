.class public final Lkotlinx/coroutines/android/c;
.super Lkotlinx/coroutines/android/d;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j0;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final f:Ljava/lang/String;

.field private final h:Z

.field private final i:Lkotlinx/coroutines/android/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/android/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/android/c;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/android/d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/android/c;->f:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lkotlinx/coroutines/android/c;->h:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Lkotlinx/coroutines/android/c;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lkotlinx/coroutines/android/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 6
    :goto_0
    iput-object p3, p0, Lkotlinx/coroutines/android/c;->i:Lkotlinx/coroutines/android/c;

    return-void
.end method

.method public static final synthetic H0(Lkotlinx/coroutines/android/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private final I0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/j1;->c(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/y;->x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public D0(Lkotlin/coroutines/g;)Z
    .locals 0

    iget-boolean p1, p0, Lkotlinx/coroutines/android/c;->h:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic F0()Lkotlinx/coroutines/p1;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/android/c;->J0()Lkotlinx/coroutines/android/c;

    move-result-object p0

    return-object p0
.end method

.method public J0()Lkotlinx/coroutines/android/c;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/android/c;->i:Lkotlinx/coroutines/android/c;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/android/c;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/android/c;

    iget-object v0, p1, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lkotlinx/coroutines/android/c;->h:Z

    iget-boolean p0, p0, Lkotlinx/coroutines/android/c;->h:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-boolean p0, p0, Lkotlinx/coroutines/android/c;->h:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/p1;->G0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/android/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean p0, p0, Lkotlinx/coroutines/android/c;->h:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".immediate"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public x(JLkotlinx/coroutines/i;)V
    .locals 4

    new-instance v0, Lkotlinx/coroutines/android/c$a;

    invoke-direct {v0, p3, p0}, Lkotlinx/coroutines/android/c$a;-><init>(Lkotlinx/coroutines/i;Lkotlinx/coroutines/android/c;)V

    iget-object v1, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Lb9/d;->f(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/android/c$b;

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/android/c$b;-><init>(Lkotlinx/coroutines/android/c;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Lkotlinx/coroutines/i;->f(Lw8/l;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/android/c;->I0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/android/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/android/c;->I0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
