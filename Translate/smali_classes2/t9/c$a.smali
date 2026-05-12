.class public final Lt9/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt9/c$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lt9/c$a;Lt9/c;)Z
    .locals 0

    invoke-direct {p0, p1}, Lt9/c$a;->d(Lt9/c;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lt9/c$a;Lt9/c;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lt9/c$a;->g(Lt9/c;JZ)V

    return-void
.end method

.method private final d(Lt9/c;)Z
    .locals 3

    sget-object p0, Lt9/c;->i:Lt9/c$a;

    invoke-virtual {p0}, Lt9/c$a;->f()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lt9/c;->m(Lt9/c;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    invoke-static {p1, v1}, Lt9/c;->s(Lt9/c;Z)V

    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-static {p1}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object v2

    invoke-static {v0, v2}, Lt9/c;->t(Lt9/c;Lt9/c;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lt9/c;->t(Lt9/c;Lt9/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-static {v0}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final g(Lt9/c;JZ)V
    .locals 4

    sget-object p0, Lt9/c;->i:Lt9/c$a;

    invoke-virtual {p0}, Lt9/c$a;->f()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lt9/c;->m(Lt9/c;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lt9/c;->s(Lt9/c;Z)V

    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lt9/c;

    invoke-direct {v0}, Lt9/c;-><init>()V

    invoke-static {v0}, Lt9/c;->r(Lt9/c;)V

    new-instance v0, Lt9/c$b;

    invoke-direct {v0}, Lt9/c$b;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lt9/b0;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lt9/c;->u(Lt9/c;J)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lt9/c;->u(Lt9/c;J)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_6

    invoke-virtual {p1}, Lt9/b0;->c()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lt9/c;->u(Lt9/c;J)V

    :goto_1
    invoke-static {p1, v0, v1}, Lt9/c;->q(Lt9/c;J)J

    move-result-wide p2

    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_2
    invoke-static {p4}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p4}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lt9/c;->q(Lt9/c;J)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p4}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {p4}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object p2

    invoke-static {p1, p2}, Lt9/c;->t(Lt9/c;Lt9/c;)V

    invoke-static {p4, p1}, Lt9/c;->t(Lt9/c;Lt9/c;)V

    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object p1

    if-ne p4, p1, :cond_5

    sget-object p1, Lt9/c;->i:Lt9/c$a;

    invoke-virtual {p1}, Lt9/c$a;->e()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_5
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    const-string p1, "Unbalanced enter/exit"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public final c()Lt9/c;
    .locals 6

    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lt9/c$a;->e()Ljava/util/concurrent/locks/Condition;

    move-result-object p0

    invoke-static {}, Lt9/c;->k()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v4, v5, v0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {}, Lt9/c;->l()J

    move-result-wide v2

    cmp-long p0, v4, v2

    if-ltz p0, :cond_0

    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lt9/c;->q(Lt9/c;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lt9/c$a;->e()Ljava/util/concurrent/locks/Condition;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-object v1

    :cond_2
    invoke-static {}, Lt9/c;->j()Lt9/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lt9/c;->o(Lt9/c;)Lt9/c;

    move-result-object v2

    invoke-static {p0, v2}, Lt9/c;->t(Lt9/c;Lt9/c;)V

    invoke-static {v0, v1}, Lt9/c;->t(Lt9/c;Lt9/c;)V

    return-object v0
.end method

.method public final e()Ljava/util/concurrent/locks/Condition;
    .locals 0

    invoke-static {}, Lt9/c;->i()Ljava/util/concurrent/locks/Condition;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    invoke-static {}, Lt9/c;->n()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0
.end method
