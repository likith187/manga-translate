.class public final Lo9/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo9/h$c;
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final a:Lo9/h;

.field final synthetic b:Lo9/f;


# direct methods
.method public constructor <init>(Lo9/f;Lo9/h;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo9/f$d;->b:Lo9/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo9/f$d;->a:Lo9/h;

    return-void
.end method


# virtual methods
.method public a(ILo9/b;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v0, p1}, Lo9/f;->Z0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {p0, p1, p2}, Lo9/f;->Y0(ILo9/b;)V

    return-void

    :cond_0
    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {p0, p1}, Lo9/f;->a1(I)Lo9/i;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lo9/i;->y(Lo9/b;)V

    :cond_1
    return-void
.end method

.method public b(ZILt9/f;I)V
    .locals 1

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v0, p2}, Lo9/f;->Z0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {p0, p2, p3, p4, p1}, Lo9/f;->V0(ILt9/f;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v0, p2}, Lo9/f;->O0(I)Lo9/i;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lo9/f$d;->b:Lo9/f;

    sget-object v0, Lo9/b;->PROTOCOL_ERROR:Lo9/b;

    invoke-virtual {p1, p2, v0}, Lo9/f;->m1(ILo9/b;)V

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Lo9/f;->h1(J)V

    invoke-interface {p3, p1, p2}, Lt9/f;->A(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lo9/i;->w(Lt9/f;I)V

    if-eqz p1, :cond_2

    sget-object p0, Li9/d;->b:Lokhttp3/t;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lo9/i;->x(Lokhttp3/t;Z)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(ZII)V
    .locals 8

    if-eqz p1, :cond_3

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    monitor-enter p0

    const/4 p1, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    :goto_0
    :try_start_0
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lo9/f;->i(Lo9/f;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lo9/f;->b0(Lo9/f;J)V

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lo9/f;->x(Lo9/f;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lo9/f;->q0(Lo9/f;J)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lo9/f;->D(Lo9/f;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lo9/f;->x0(Lo9/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    iget-object p1, p0, Lo9/f$d;->b:Lo9/f;

    invoke-static {p1}, Lo9/f;->X(Lo9/f;)Ll9/d;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v1}, Lo9/f;->I0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lo9/f$d;->b:Lo9/f;

    new-instance p0, Lo9/f$d$c;

    const/4 v4, 0x1

    move-object v2, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lo9/f$d$c;-><init>(Ljava/lang/String;ZLo9/f;II)V

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p0, p2, p3}, Ll9/d;->i(Ll9/a;J)V

    :goto_3
    return-void
.end method

.method public e(ILo9/b;Lt9/g;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "errorCode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lt9/g;->size()I

    iget-object p2, p0, Lo9/f$d;->b:Lo9/f;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Lo9/f;->P0()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v1, 0x0

    new-array v2, v1, [Lo9/i;

    invoke-interface {p3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, v0}, Lo9/f;->D0(Lo9/f;Z)V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    check-cast p3, [Lo9/i;

    array-length p2, p3

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p3, v1

    invoke-virtual {v2}, Lo9/i;->j()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-virtual {v2}, Lo9/i;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lo9/b;->REFUSED_STREAM:Lo9/b;

    invoke-virtual {v2, v3}, Lo9/i;->y(Lo9/b;)V

    iget-object v3, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v2}, Lo9/i;->j()I

    move-result v2

    invoke-virtual {v3, v2}, Lo9/f;->a1(I)Lo9/i;

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public f(IIIZ)V
    .locals 0

    return-void
.end method

.method public g(ZIILjava/util/List;)V
    .locals 6

    const-string p3, "headerBlock"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {p3, p2}, Lo9/f;->Z0(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {p0, p2, p4, p1}, Lo9/f;->W0(ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lo9/f;->O0(I)Lo9/i;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-static {p0}, Lo9/f;->a0(Lo9/f;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lo9/f;->J0()I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p2, p3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    rem-int/lit8 p3, p2, 0x2

    invoke-virtual {p0}, Lo9/f;->L0()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-static {p4}, Li9/d;->N(Ljava/util/List;)Lokhttp3/t;

    move-result-object v5

    new-instance p3, Lo9/i;

    const/4 v3, 0x0

    move-object v0, p3

    move v1, p2

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lo9/i;-><init>(ILo9/f;ZZLokhttp3/t;)V

    invoke-virtual {p0, p2}, Lo9/f;->c1(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lo9/f;->P0()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lo9/f;->N(Lo9/f;)Ll9/e;

    move-result-object p1

    invoke-virtual {p1}, Ll9/e;->i()Ll9/d;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo9/f;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] onStream"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lo9/f$d$b;

    const/4 v0, 0x1

    invoke-direct {p4, p2, v0, p0, p3}, Lo9/f$d$b;-><init>(Ljava/lang/String;ZLo9/f;Lo9/i;)V

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p4, p2, p3}, Ll9/d;->i(Ll9/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_4
    :try_start_4
    sget-object p2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    invoke-static {p4}, Li9/d;->N(Ljava/util/List;)Lokhttp3/t;

    move-result-object p0

    invoke-virtual {p3, p0, p1}, Lo9/i;->x(Lokhttp3/t;Z)V

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public h(IJ)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo9/f;->Q0()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {p0, v0, v1}, Lo9/f;->E0(Lo9/f;J)V

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {p0, p1}, Lo9/f;->O0(I)Lo9/i;

    move-result-object p0

    if-eqz p0, :cond_1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2, p3}, Lo9/i;->a(J)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public i(ZLo9/m;)V
    .locals 9

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-static {v0}, Lo9/f;->X(Lo9/f;)Ll9/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v2}, Lo9/f;->I0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " applyAndAckSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lo9/f$d$d;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lo9/f$d$d;-><init>(Ljava/lang/String;ZLo9/f$d;ZLo9/m;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo9/f$d;->l()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public j(IILjava/util/List;)V
    .locals 0

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {p0, p2, p3}, Lo9/f;->X0(ILjava/util/List;)V

    return-void
.end method

.method public final k(ZLo9/m;)V
    .locals 10

    const/4 v0, 0x1

    const-string v1, "settings"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/c0;

    invoke-direct {v1}, Lkotlin/jvm/internal/c0;-><init>()V

    iget-object v2, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v2}, Lo9/f;->R0()Lo9/j;

    move-result-object v2

    iget-object p0, p0, Lo9/f$d;->b:Lo9/f;

    monitor-enter v2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lo9/f;->N0()Lo9/m;

    move-result-object v3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lo9/m;

    invoke-direct {p1}, Lo9/m;-><init>()V

    invoke-virtual {p1, v3}, Lo9/m;->g(Lo9/m;)V

    invoke-virtual {p1, p2}, Lo9/m;->g(Lo9/m;)V

    move-object p2, p1

    :goto_0
    iput-object p2, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    invoke-virtual {p2}, Lo9/m;->c()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v3}, Lo9/m;->c()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lo9/f;->P0()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo9/f;->P0()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    new-array v7, v6, [Lo9/i;

    invoke-interface {v5, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lo9/i;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget-object v7, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v7, Lo9/m;

    invoke-virtual {p0, v7}, Lo9/f;->d1(Lo9/m;)V

    invoke-static {p0}, Lo9/f;->I(Lo9/f;)Ll9/d;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo9/f;->I0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " onSettings"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lo9/f$d$a;

    invoke-direct {v9, v8, v0, p0, v1}, Lo9/f$d$a;-><init>(Ljava/lang/String;ZLo9/f;Lkotlin/jvm/internal/c0;)V

    invoke-virtual {v7, v9, v3, v4}, Ll9/d;->i(Ll9/a;J)V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lo9/f;->R0()Lo9/j;

    move-result-object v3

    iget-object v1, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v1, Lo9/m;

    invoke-virtual {v3, v1}, Lo9/j;->c(Lo9/m;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {p0, v1}, Lo9/f;->c(Lo9/f;Ljava/io/IOException;)V

    :goto_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    if-eqz v5, :cond_3

    array-length p0, v5

    :goto_4
    if-ge v6, p0, :cond_3

    aget-object v1, v5, v6

    monitor-enter v1

    :try_start_5
    invoke-virtual {v1, p1, p2}, Lo9/i;->a(J)V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v1

    add-int/2addr v6, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_3
    return-void

    :goto_5
    :try_start_6
    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    monitor-exit v2

    throw p0
.end method

.method public l()V
    .locals 5

    sget-object v0, Lo9/b;->INTERNAL_ERROR:Lo9/b;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lo9/f$d;->a:Lo9/h;

    invoke-virtual {v2, p0}, Lo9/h;->k(Lo9/h$c;)V

    :cond_0
    iget-object v2, p0, Lo9/f$d;->a:Lo9/h;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lo9/h;->i(ZLo9/h$c;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lo9/b;->NO_ERROR:Lo9/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lo9/b;->CANCEL:Lo9/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v3, v2, v0, v1}, Lo9/f;->F0(Lo9/b;Lo9/b;Ljava/io/IOException;)V

    :goto_0
    iget-object p0, p0, Lo9/f$d;->a:Lo9/h;

    invoke-static {p0}, Li9/d;->l(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    sget-object v0, Lo9/b;->PROTOCOL_ERROR:Lo9/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v2, v0, v0, v1}, Lo9/f;->F0(Lo9/b;Lo9/b;Ljava/io/IOException;)V

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v4, p0, Lo9/f$d;->b:Lo9/f;

    invoke-virtual {v4, v2, v0, v1}, Lo9/f;->F0(Lo9/b;Lo9/b;Ljava/io/IOException;)V

    iget-object p0, p0, Lo9/f$d;->a:Lo9/h;

    invoke-static {p0}, Li9/d;->l(Ljava/io/Closeable;)V

    throw v3
.end method
