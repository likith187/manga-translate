.class Lt0/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[Lt0/a;

.field final b:Ls0/c$a;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lt0/a;Ls0/c$a;)V
    .locals 6

    iget v4, p4, Ls0/c$a;->a:I

    new-instance v5, Lt0/b$a$a;

    invoke-direct {v5, p4, p3}, Lt0/b$a$a;-><init>(Ls0/c$a;[Lt0/a;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p4, p0, Lt0/b$a;->b:Ls0/c$a;

    iput-object p3, p0, Lt0/b$a;->a:[Lt0/a;

    return-void
.end method

.method static k([Lt0/a;Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lt0/a;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lt0/a;

    invoke-direct {v1, p1}, Lt0/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v1, p0, v0

    :cond_1
    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method declared-synchronized c()Ls0/b;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lt0/b$a;->c:Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-boolean v1, p0, Lt0/b$a;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lt0/b$a;->close()V

    invoke-virtual {p0}, Lt0/b$a;->c()Ls0/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lt0/b$a;->i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Lt0/b$a;->a:[Lt0/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;
    .locals 0

    iget-object p0, p0, Lt0/b$a;->a:[Lt0/a;

    invoke-static {p0, p1}, Lt0/b$a;->k([Lt0/a;Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object p0

    return-object p0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lt0/b$a;->b:Ls0/c$a;

    invoke-virtual {p0, p1}, Lt0/b$a;->i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls0/c$a;->b(Ls0/b;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lt0/b$a;->b:Ls0/c$a;

    invoke-virtual {p0, p1}, Lt0/b$a;->i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls0/c$a;->d(Ls0/b;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt0/b$a;->c:Z

    iget-object v0, p0, Lt0/b$a;->b:Ls0/c$a;

    invoke-virtual {p0, p1}, Lt0/b$a;->i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Ls0/c$a;->e(Ls0/b;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-boolean v0, p0, Lt0/b$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt0/b$a;->b:Ls0/c$a;

    invoke-virtual {p0, p1}, Lt0/b$a;->i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls0/c$a;->f(Ls0/b;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt0/b$a;->c:Z

    iget-object v0, p0, Lt0/b$a;->b:Ls0/c$a;

    invoke-virtual {p0, p1}, Lt0/b$a;->i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Ls0/c$a;->g(Ls0/b;II)V

    return-void
.end method

.method declared-synchronized v()Ls0/b;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lt0/b$a;->c:Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-boolean v1, p0, Lt0/b$a;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lt0/b$a;->close()V

    invoke-virtual {p0}, Lt0/b$a;->v()Ls0/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lt0/b$a;->i(Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
