.class public Lt9/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/b0$b;
    }
.end annotation


# static fields
.field public static final d:Lt9/b0$b;

.field public static final e:Lt9/b0;


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt9/b0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt9/b0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lt9/b0;->d:Lt9/b0$b;

    new-instance v0, Lt9/b0$a;

    invoke-direct {v0}, Lt9/b0$a;-><init>()V

    sput-object v0, Lt9/b0;->e:Lt9/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lt9/b0;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt9/b0;->a:Z

    return-object p0
.end method

.method public b()Lt9/b0;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lt9/b0;->c:J

    return-object p0
.end method

.method public c()J
    .locals 2

    iget-boolean v0, p0, Lt9/b0;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lt9/b0;->b:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No deadline"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(J)Lt9/b0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/b0;->a:Z

    iput-wide p1, p0, Lt9/b0;->b:J

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lt9/b0;->a:Z

    return p0
.end method

.method public f()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lt9/b0;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lt9/b0;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "deadline reached"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "interrupted"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;
    .locals 2

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lt9/b0;->c:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "timeout < 0: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lt9/b0;->c:J

    return-wide v0
.end method
