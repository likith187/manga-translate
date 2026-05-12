.class Landroidx/room/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;

.field private final d:I

.field private final e:Ls0/c;

.field private f:Landroidx/room/a;

.field private g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILs0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/l;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/l;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/l;->c:Ljava/io/File;

    iput p4, p0, Landroidx/room/l;->d:I

    iput-object p5, p0, Landroidx/room/l;->e:Ls0/c;

    return-void
.end method

.method private e(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Landroidx/room/l;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/room/l;->c:Ljava/io/File;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/room/l;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Landroidx/room/l;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "room-copy-helper"

    const-string v2, ".tmp"

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v0, v1}, Lp0/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create directories for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move intermediate file ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") to destination ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "copyFromAssetPath and copyFromFile == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g()V
    .locals 8

    const-string v0, "ROOM"

    invoke-virtual {p0}, Landroidx/room/l;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/l;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Landroidx/room/l;->f:Landroidx/room/a;

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Landroidx/room/a;->j:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-instance v4, Lp0/a;

    iget-object v5, p0, Landroidx/room/l;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v1, v5, v3}, Lp0/a;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    :try_start_0
    invoke-virtual {v4}, Lp0/a;->b()V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Unable to copy database file."

    if-nez v3, :cond_2

    :try_start_1
    invoke-direct {p0, v2}, Landroidx/room/l;->e(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Lp0/a;->c()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v3, p0, Landroidx/room/l;->f:Landroidx/room/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    invoke-virtual {v4}, Lp0/a;->c()V

    return-void

    :cond_3
    :try_start_3
    invoke-static {v2}, Lp0/c;->c(Ljava/io/File;)I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v6, p0, Landroidx/room/l;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v3, v6, :cond_4

    invoke-virtual {v4}, Lp0/a;->c()V

    return-void

    :cond_4
    :try_start_5
    iget-object v7, p0, Landroidx/room/l;->f:Landroidx/room/a;

    invoke-virtual {v7, v3, v6}, Landroidx/room/a;->a(II)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Lp0/a;->c()V

    return-void

    :cond_5
    :try_start_6
    iget-object v3, p0, Landroidx/room/l;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_6

    :try_start_7
    invoke-direct {p0, v2}, Landroidx/room/l;->e(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_8
    invoke-static {v0, v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete database file ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for a copy destructive migration."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    invoke-virtual {v4}, Lp0/a;->c()V

    return-void

    :catch_2
    move-exception p0

    :try_start_9
    const-string v1, "Unable to read database version."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {v4}, Lp0/a;->c()V

    return-void

    :goto_3
    invoke-virtual {v4}, Lp0/a;->c()V

    throw p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/room/l;->e:Ls0/c;

    invoke-interface {p0, p1}, Ls0/c;->a(Z)V

    return-void
.end method

.method public declared-synchronized b()Ls0/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/room/l;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/room/l;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/l;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/l;->e:Ls0/c;

    invoke-interface {v0}, Ls0/c;->b()Ls0/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()Ls0/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/room/l;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/room/l;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/l;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/l;->e:Ls0/c;

    invoke-interface {v0}, Ls0/c;->c()Ls0/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/l;->e:Ls0/c;

    invoke-interface {p0}, Ls0/c;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method f(Landroidx/room/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/l;->f:Landroidx/room/a;

    return-void
.end method
