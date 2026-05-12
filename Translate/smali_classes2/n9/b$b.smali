.class final Ln9/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lt9/j;

.field private b:Z

.field final synthetic c:Ln9/b;


# direct methods
.method public constructor <init>(Ln9/b;)V
    .locals 1

    iput-object p1, p0, Ln9/b$b;->c:Ln9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt9/j;

    invoke-static {p1}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object p1

    invoke-interface {p1}, Lt9/y;->f()Lt9/b0;

    move-result-object p1

    invoke-direct {v0, p1}, Lt9/j;-><init>(Lt9/b0;)V

    iput-object v0, p0, Ln9/b$b;->a:Lt9/j;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ln9/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ln9/b$b;->b:Z

    iget-object v0, p0, Ln9/b$b;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    iget-object v0, p0, Ln9/b$b;->c:Ln9/b;

    iget-object v1, p0, Ln9/b$b;->a:Lt9/j;

    invoke-static {v0, v1}, Ln9/b;->i(Ln9/b;Lt9/j;)V

    iget-object v0, p0, Ln9/b$b;->c:Ln9/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ln9/b;->p(Ln9/b;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Ln9/b$b;->a:Lt9/j;

    return-object p0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ln9/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ln9/b$b;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object v0

    invoke-interface {v0}, Lt9/e;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public p(Lt9/d;J)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ln9/b$b;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln9/b$b;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lt9/e;->s(J)Lt9/e;

    iget-object v0, p0, Ln9/b$b;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    iget-object v0, p0, Ln9/b$b;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lt9/y;->p(Lt9/d;J)V

    iget-object p0, p0, Ln9/b$b;->c:Ln9/b;

    invoke-static {p0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object p0

    invoke-interface {p0, v1}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
