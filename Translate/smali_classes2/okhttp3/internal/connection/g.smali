.class public final Lokhttp3/internal/connection/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/g$a;
    }
.end annotation


# static fields
.field public static final f:Lokhttp3/internal/connection/g$a;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ll9/d;

.field private final d:Lokhttp3/internal/connection/g$b;

.field private final e:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/g;->f:Lokhttp3/internal/connection/g$a;

    return-void
.end method

.method public constructor <init>(Ll9/e;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lokhttp3/internal/connection/g;->a:I

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/connection/g;->b:J

    invoke-virtual {p1}, Ll9/e;->i()Ll9/d;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/g;->c:Ll9/d;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Li9/d;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ConnectionPool"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lokhttp3/internal/connection/g$b;

    invoke-direct {p2, p0, p1}, Lokhttp3/internal/connection/g$b;-><init>(Lokhttp3/internal/connection/g;Ljava/lang/String;)V

    iput-object p2, p0, Lokhttp3/internal/connection/g;->d:Lokhttp3/internal/connection/g$b;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "keepAliveDuration <= 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d(Lokhttp3/internal/connection/f;J)I
    .locals 6

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lokhttp3/internal/connection/f;->n()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "null cannot be cast to non-null type okhttp3.internal.connection.RealCall.CallReference"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lokhttp3/internal/connection/e$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {v5}, Lp9/h$a;->g()Lp9/h;

    move-result-object v5

    invoke-virtual {v3}, Lokhttp3/internal/connection/e$a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lp9/h;->l(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lokhttp3/internal/connection/f;->C(Z)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v2, p0, Lokhttp3/internal/connection/g;->b:J

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/connection/f;->B(J)V

    return v1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lokhttp3/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/f;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v0, p1, p3}, Lokhttp3/internal/connection/f;->t(Lokhttp3/a;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/e;->a(Lokhttp3/internal/connection/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    :try_start_1
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final b(J)J
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    move-wide v5, v4

    move-object v4, v3

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/connection/f;

    const-string v8, "connection"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, v7, p1, p2}, Lokhttp3/internal/connection/g;->d(Lokhttp3/internal/connection/f;J)I

    move-result v8

    if-lez v8, :cond_0

    add-int/2addr v3, v0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v0

    invoke-virtual {v7}, Lokhttp3/internal/connection/f;->o()J

    move-result-wide v8

    sub-long v8, p1, v8

    cmp-long v10, v8, v5

    if-lez v10, :cond_1

    move-object v4, v7

    move-wide v5, v8

    :cond_1
    sget-object v8, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_2
    iget-wide v7, p0, Lokhttp3/internal/connection/g;->b:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_6

    iget v1, p0, Lokhttp3/internal/connection/g;->a:I

    if-le v2, v1, :cond_3

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    sub-long/2addr v7, v5

    return-wide v7

    :cond_4
    if-lez v3, :cond_5

    return-wide v7

    :cond_5
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_6
    :goto_2
    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    monitor-enter v4

    :try_start_1
    invoke-virtual {v4}, Lokhttp3/internal/connection/f;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_7

    monitor-exit v4

    return-wide v2

    :cond_7
    :try_start_2
    invoke-virtual {v4}, Lokhttp3/internal/connection/f;->o()J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-long/2addr v7, v5

    cmp-long p1, v7, p1

    if-eqz p1, :cond_8

    monitor-exit v4

    return-wide v2

    :cond_8
    :try_start_3
    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/f;->C(Z)V

    iget-object p1, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    invoke-virtual {v4}, Lokhttp3/internal/connection/f;->D()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Li9/d;->m(Ljava/net/Socket;)V

    iget-object p1, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lokhttp3/internal/connection/g;->c:Ll9/d;

    invoke-virtual {p0}, Ll9/d;->a()V

    :cond_9
    return-wide v2

    :catchall_1
    move-exception p0

    monitor-exit v4

    throw p0
.end method

.method public final c(Lokhttp3/internal/connection/f;)Z
    .locals 7

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lokhttp3/internal/connection/f;->p()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lokhttp3/internal/connection/g;->a:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/connection/g;->c:Ll9/d;

    iget-object v2, p0, Lokhttp3/internal/connection/g;->d:Lokhttp3/internal/connection/g$b;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Ll9/d;->j(Ll9/d;Ll9/a;JILjava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lokhttp3/internal/connection/f;->C(Z)V

    iget-object v1, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lokhttp3/internal/connection/g;->c:Ll9/d;

    invoke-virtual {p0}, Ll9/d;->a()V

    :cond_4
    move p0, v0

    :goto_2
    return p0
.end method

.method public final e(Lokhttp3/internal/connection/f;)V
    .locals 7

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/g;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lokhttp3/internal/connection/g;->c:Ll9/d;

    iget-object v2, p0, Lokhttp3/internal/connection/g;->d:Lokhttp3/internal/connection/g$b;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Ll9/d;->j(Ll9/d;Ll9/a;JILjava/lang/Object;)V

    return-void
.end method
