.class public final Lo9/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:J

.field private b:Z

.field private final c:Lt9/d;

.field private final f:Lt9/d;

.field private h:Lokhttp3/t;

.field private i:Z

.field final synthetic j:Lo9/i;


# direct methods
.method public constructor <init>(Lo9/i;JZ)V
    .locals 0

    iput-object p1, p0, Lo9/i$c;->j:Lo9/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lo9/i$c;->a:J

    iput-boolean p4, p0, Lo9/i$c;->b:Z

    new-instance p1, Lt9/d;

    invoke-direct {p1}, Lt9/d;-><init>()V

    iput-object p1, p0, Lo9/i$c;->c:Lt9/d;

    new-instance p1, Lt9/d;

    invoke-direct {p1}, Lt9/d;-><init>()V

    iput-object p1, p0, Lo9/i$c;->f:Lt9/d;

    return-void
.end method

.method private final B(J)V
    .locals 2

    iget-object v0, p0, Lo9/i$c;->j:Lo9/i;

    sget-boolean v1, Li9/d;->h:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Thread "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " MUST NOT hold lock on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lo9/i$c;->j:Lo9/i;

    invoke-virtual {p0}, Lo9/i;->g()Lo9/f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lo9/f;->h1(J)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lo9/i$c;->i:Z

    return p0
.end method

.method public close()V
    .locals 5

    iget-object v0, p0, Lo9/i$c;->j:Lo9/i;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo9/i$c;->i:Z

    iget-object v1, p0, Lo9/i$c;->f:Lt9/d;

    invoke-virtual {v1}, Lt9/d;->G0()J

    move-result-wide v1

    iget-object v3, p0, Lo9/i$c;->f:Lt9/d;

    invoke-virtual {v3}, Lt9/d;->i()V

    const-string v3, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    invoke-direct {p0, v1, v2}, Lo9/i$c;->B(J)V

    :cond_0
    iget-object p0, p0, Lo9/i$c;->j:Lo9/i;

    invoke-virtual {p0}, Lo9/i;->b()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lo9/i$c;->j:Lo9/i;

    invoke-virtual {p0}, Lo9/i;->m()Lo9/i$d;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lo9/i$c;->b:Z

    return p0
.end method

.method public i0(Lt9/d;J)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_9

    :goto_0
    iget-object v6, v0, Lo9/i$c;->j:Lo9/i;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v6}, Lo9/i;->m()Lo9/i$d;

    move-result-object v7

    invoke-virtual {v7}, Lt9/c;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Lo9/i;->h()Lo9/b;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-boolean v7, v0, Lo9/i$c;->b:Z

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lo9/i;->i()Ljava/io/IOException;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v7, Lo9/n;

    invoke-virtual {v6}, Lo9/i;->h()Lo9/b;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v7, v8}, Lo9/n;-><init>(Lo9/b;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const/4 v7, 0x0

    :cond_1
    :goto_1
    iget-boolean v8, v0, Lo9/i$c;->i:Z

    if-nez v8, :cond_8

    iget-object v8, v0, Lo9/i$c;->f:Lt9/d;

    invoke-virtual {v8}, Lt9/d;->G0()J

    move-result-wide v8

    cmp-long v8, v8, v4

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    if-lez v8, :cond_2

    iget-object v8, v0, Lo9/i$c;->f:Lt9/d;

    invoke-virtual {v8}, Lt9/d;->G0()J

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v8, v1, v12, v13}, Lt9/d;->i0(Lt9/d;J)J

    move-result-wide v12

    invoke-virtual {v6}, Lo9/i;->l()J

    move-result-wide v14

    add-long/2addr v14, v12

    invoke-virtual {v6, v14, v15}, Lo9/i;->A(J)V

    invoke-virtual {v6}, Lo9/i;->l()J

    move-result-wide v14

    invoke-virtual {v6}, Lo9/i;->k()J

    move-result-wide v16

    sub-long v14, v14, v16

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lo9/i;->g()Lo9/f;

    move-result-object v8

    invoke-virtual {v8}, Lo9/f;->M0()Lo9/m;

    move-result-object v8

    invoke-virtual {v8}, Lo9/m;->c()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v4, v8

    cmp-long v4, v14, v4

    if-ltz v4, :cond_4

    invoke-virtual {v6}, Lo9/i;->g()Lo9/f;

    move-result-object v4

    invoke-virtual {v6}, Lo9/i;->j()I

    move-result v5

    invoke-virtual {v4, v5, v14, v15}, Lo9/f;->n1(IJ)V

    invoke-virtual {v6}, Lo9/i;->l()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lo9/i;->z(J)V

    goto :goto_2

    :cond_2
    iget-boolean v4, v0, Lo9/i$c;->b:Z

    if-nez v4, :cond_3

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lo9/i;->D()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    :cond_3
    move-wide v12, v9

    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Lo9/i;->m()Lo9/i$d;

    move-result-object v4

    invoke-virtual {v4}, Lo9/i$d;->C()V

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    if-eqz v11, :cond_5

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_5
    cmp-long v0, v12, v9

    if-eqz v0, :cond_6

    return-wide v12

    :cond_6
    if-nez v7, :cond_7

    return-wide v9

    :cond_7
    throw v7

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_8
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {v6}, Lo9/i;->m()Lo9/i$d;

    move-result-object v1

    invoke-virtual {v1}, Lo9/i$d;->C()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit v6

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final k(Lt9/f;J)V
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/i$c;->j:Lo9/i;

    sget-boolean v1, Li9/d;->h:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Thread "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " MUST NOT hold lock on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    move-wide v0, p2

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    iget-object v4, p0, Lo9/i$c;->j:Lo9/i;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lo9/i$c;->b:Z

    iget-object v6, p0, Lo9/i$c;->f:Lt9/d;

    invoke-virtual {v6}, Lt9/d;->G0()J

    move-result-wide v6

    add-long/2addr v6, v0

    iget-wide v8, p0, Lo9/i$c;->a:J

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    sget-object v9, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    if-eqz v6, :cond_3

    invoke-interface {p1, v0, v1}, Lt9/f;->A(J)V

    iget-object p0, p0, Lo9/i$c;->j:Lo9/i;

    sget-object p1, Lo9/b;->FLOW_CONTROL_ERROR:Lo9/b;

    invoke-virtual {p0, p1}, Lo9/i;->f(Lo9/b;)V

    return-void

    :cond_3
    if-eqz v5, :cond_4

    invoke-interface {p1, v0, v1}, Lt9/f;->A(J)V

    return-void

    :cond_4
    iget-object v4, p0, Lo9/i$c;->c:Lt9/d;

    invoke-interface {p1, v4, v0, v1}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v4

    const-wide/16 v9, -0x1

    cmp-long v6, v4, v9

    if-eqz v6, :cond_8

    sub-long/2addr v0, v4

    iget-object v4, p0, Lo9/i$c;->j:Lo9/i;

    monitor-enter v4

    :try_start_1
    iget-boolean v5, p0, Lo9/i$c;->i:Z

    if-eqz v5, :cond_5

    iget-object v2, p0, Lo9/i$c;->c:Lt9/d;

    invoke-virtual {v2}, Lt9/d;->i()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lo9/i$c;->f:Lt9/d;

    invoke-virtual {v5}, Lt9/d;->G0()J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-nez v2, :cond_6

    move v7, v8

    :cond_6
    iget-object v2, p0, Lo9/i$c;->f:Lt9/d;

    iget-object v3, p0, Lo9/i$c;->c:Lt9/d;

    invoke-virtual {v2, v3}, Lt9/d;->N0(Lt9/a0;)J

    if-eqz v7, :cond_7

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_3
    monitor-exit v4

    goto :goto_1

    :goto_4
    monitor-exit v4

    throw p0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_9
    invoke-direct {p0, p2, p3}, Lo9/i$c;->B(J)V

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lo9/i$c;->b:Z

    return-void
.end method

.method public final x(Lokhttp3/t;)V
    .locals 0

    iput-object p1, p0, Lo9/i$c;->h:Lokhttp3/t;

    return-void
.end method
