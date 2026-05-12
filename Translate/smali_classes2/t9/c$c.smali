.class public final Lt9/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt9/c;->z(Lt9/y;)Lt9/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt9/c;

.field final synthetic b:Lt9/y;


# direct methods
.method constructor <init>(Lt9/c;Lt9/y;)V
    .locals 0

    iput-object p1, p0, Lt9/c$c;->a:Lt9/c;

    iput-object p2, p0, Lt9/c$c;->b:Lt9/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lt9/c;
    .locals 0

    iget-object p0, p0, Lt9/c$c;->a:Lt9/c;

    return-object p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lt9/c$c;->a:Lt9/c;

    iget-object p0, p0, Lt9/c$c;->b:Lt9/y;

    invoke-virtual {v0}, Lt9/c;->v()V

    :try_start_0
    invoke-interface {p0}, Lt9/y;->close()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lt9/c;->w()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lt9/c;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lt9/c;->w()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lt9/c;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lt9/c;->w()Z

    throw p0
.end method

.method public bridge synthetic f()Lt9/b0;
    .locals 0

    invoke-virtual {p0}, Lt9/c$c;->c()Lt9/c;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lt9/c$c;->a:Lt9/c;

    iget-object p0, p0, Lt9/c$c;->b:Lt9/y;

    invoke-virtual {v0}, Lt9/c;->v()V

    :try_start_0
    invoke-interface {p0}, Lt9/y;->flush()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lt9/c;->w()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lt9/c;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lt9/c;->w()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lt9/c;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lt9/c;->w()Z

    throw p0
.end method

.method public p(Lt9/d;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lt9/b;->b(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4

    iget-object v2, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget v3, v2, Lt9/v;->c:I

    iget v4, v2, Lt9/v;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    :cond_0
    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Lt9/c$c;->a:Lt9/c;

    iget-object v3, p0, Lt9/c$c;->b:Lt9/y;

    invoke-virtual {v2}, Lt9/c;->v()V

    :try_start_0
    invoke-interface {v3, p1, v0, v1}, Lt9/y;->p(Lt9/d;J)V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lt9/c;->w()Z

    move-result v3

    if-nez v3, :cond_2

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lt9/c;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v2}, Lt9/c;->w()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, p0}, Lt9/c;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_3
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v2}, Lt9/c;->w()Z

    throw p0

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/c$c;->b:Lt9/y;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
