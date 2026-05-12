.class public final Lt9/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt9/c;->A(Lt9/a0;)Lt9/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt9/c;

.field final synthetic b:Lt9/a0;


# direct methods
.method constructor <init>(Lt9/c;Lt9/a0;)V
    .locals 0

    iput-object p1, p0, Lt9/c$d;->a:Lt9/c;

    iput-object p2, p0, Lt9/c$d;->b:Lt9/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lt9/c;
    .locals 0

    iget-object p0, p0, Lt9/c$d;->a:Lt9/c;

    return-object p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lt9/c$d;->a:Lt9/c;

    iget-object p0, p0, Lt9/c$d;->b:Lt9/a0;

    invoke-virtual {v0}, Lt9/c;->v()V

    :try_start_0
    invoke-interface {p0}, Lt9/a0;->close()V

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

    invoke-virtual {p0}, Lt9/c$d;->c()Lt9/c;

    move-result-object p0

    return-object p0
.end method

.method public i0(Lt9/d;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt9/c$d;->a:Lt9/c;

    iget-object p0, p0, Lt9/c$d;->b:Lt9/a0;

    invoke-virtual {v0}, Lt9/c;->v()V

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lt9/c;->w()Z

    move-result p2

    if-nez p2, :cond_0

    return-wide p0

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

    move-result p1

    if-nez p1, :cond_1

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/c$d;->b:Lt9/a0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
