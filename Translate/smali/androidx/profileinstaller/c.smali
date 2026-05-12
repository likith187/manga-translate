.class public Landroidx/profileinstaller/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/profileinstaller/i$c;

.field private final d:[B

.field private final e:Ljava/io/File;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:[Landroidx/profileinstaller/d;

.field private k:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/i$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/profileinstaller/c;->i:Z

    iput-object p1, p0, Landroidx/profileinstaller/c;->a:Landroid/content/res/AssetManager;

    iput-object p2, p0, Landroidx/profileinstaller/c;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    iput-object p4, p0, Landroidx/profileinstaller/c;->f:Ljava/lang/String;

    iput-object p5, p0, Landroidx/profileinstaller/c;->g:Ljava/lang/String;

    iput-object p6, p0, Landroidx/profileinstaller/c;->h:Ljava/lang/String;

    iput-object p7, p0, Landroidx/profileinstaller/c;->e:Ljava/io/File;

    invoke-static {}, Landroidx/profileinstaller/c;->d()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/profileinstaller/c;->d:[B

    return-void
.end method

.method public static synthetic a(Landroidx/profileinstaller/c;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/profileinstaller/c;->g(ILjava/lang/Object;)V

    return-void
.end method

.method private b([Landroidx/profileinstaller/d;[B)Landroidx/profileinstaller/c;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/profileinstaller/c;->a:Landroid/content/res/AssetManager;

    iget-object v2, p0, Landroidx/profileinstaller/c;->h:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Landroidx/profileinstaller/c;->h(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v2, Landroidx/profileinstaller/m;->b:[B

    invoke-static {v1, v2}, Landroidx/profileinstaller/m;->p(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v1, v2, p2, p1}, Landroidx/profileinstaller/m;->r(Ljava/io/InputStream;[B[B[Landroidx/profileinstaller/d;)[Landroidx/profileinstaller/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_1
    iput-object v0, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/16 p2, 0x8

    invoke-interface {p0, p2, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    goto :goto_4

    :goto_2
    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/4 p2, 0x7

    invoke-interface {p0, p2, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/16 p2, 0x9

    invoke-interface {p0, p2, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    :cond_1
    :goto_4
    return-object v0
.end method

.method private c()V
    .locals 1

    iget-boolean p0, p0, Landroidx/profileinstaller/c;->i:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d()[B
    .locals 1

    sget-object v0, Landroidx/profileinstaller/o;->a:[B

    return-object v0
.end method

.method private f(Landroid/content/res/AssetManager;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/profileinstaller/c;->g:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroidx/profileinstaller/c;->h(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/4 v0, 0x7

    invoke-interface {p0, v0, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/4 v0, 0x6

    invoke-interface {p0, v0, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    :goto_2
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method private synthetic g(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    invoke-interface {p0, p1, p2}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private h(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "compressed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/4 p1, 0x5

    invoke-interface {p0, p1, p2}, Landroidx/profileinstaller/i$c;->a(ILjava/lang/Object;)V

    :cond_0
    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method private j(Ljava/io/InputStream;)[Landroidx/profileinstaller/d;
    .locals 4

    const/4 v0, 0x7

    :try_start_0
    sget-object v1, Landroidx/profileinstaller/m;->a:[B

    invoke-static {p1, v1}, Landroidx/profileinstaller/m;->p(Ljava/io/InputStream;[B)[B

    move-result-object v1

    iget-object v2, p0, Landroidx/profileinstaller/c;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/profileinstaller/m;->x(Ljava/io/InputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/d;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    invoke-interface {p0, v0, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_2
    iget-object v2, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/16 v3, 0x8

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    invoke-interface {p0, v0, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    :try_start_4
    iget-object v2, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    invoke-interface {v2, v0, v1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    const/4 v1, 0x0

    :goto_3
    return-object v1

    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    iget-object p0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    invoke-interface {p0, v0, p1}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    :goto_5
    throw v1
.end method

.method private static k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private l(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/profileinstaller/c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/profileinstaller/b;

    invoke-direct {v1, p0, p1, p2}, Landroidx/profileinstaller/b;-><init>(Landroidx/profileinstaller/c;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 4

    iget-object v0, p0, Landroidx/profileinstaller/c;->d:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0}, Landroidx/profileinstaller/c;->l(ILjava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/profileinstaller/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/profileinstaller/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3, v2}, Landroidx/profileinstaller/c;->l(ILjava/lang/Object;)V

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/profileinstaller/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3, v2}, Landroidx/profileinstaller/c;->l(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/profileinstaller/c;->i:Z

    return v0

    :catch_0
    invoke-direct {p0, v3, v2}, Landroidx/profileinstaller/c;->l(ILjava/lang/Object;)V

    return v1
.end method

.method public i()Landroidx/profileinstaller/c;
    .locals 2

    invoke-direct {p0}, Landroidx/profileinstaller/c;->c()V

    iget-object v0, p0, Landroidx/profileinstaller/c;->d:[B

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/profileinstaller/c;->a:Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Landroidx/profileinstaller/c;->f(Landroid/content/res/AssetManager;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/profileinstaller/c;->j(Ljava/io/InputStream;)[Landroidx/profileinstaller/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    :cond_1
    iget-object v0, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/profileinstaller/c;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/profileinstaller/c;->d:[B

    invoke-direct {p0, v0, v1}, Landroidx/profileinstaller/c;->b([Landroidx/profileinstaller/d;[B)Landroidx/profileinstaller/c;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public m()Landroidx/profileinstaller/c;
    .locals 4

    iget-object v0, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    iget-object v1, p0, Landroidx/profileinstaller/c;->d:[B

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    invoke-direct {p0}, Landroidx/profileinstaller/c;->c()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3, v1}, Landroidx/profileinstaller/m;->F(Ljava/io/OutputStream;[B)V

    invoke-static {v3, v1, v0}, Landroidx/profileinstaller/m;->C(Ljava/io/OutputStream;[B[Landroidx/profileinstaller/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v2}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/profileinstaller/c;->k:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    iget-object v1, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/16 v3, 0x8

    invoke-interface {v1, v3, v0}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    iget-object v1, p0, Landroidx/profileinstaller/c;->c:Landroidx/profileinstaller/i$c;

    const/4 v3, 0x7

    invoke-interface {v1, v3, v0}, Landroidx/profileinstaller/i$c;->b(ILjava/lang/Object;)V

    :goto_4
    iput-object v2, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    :cond_2
    :goto_5
    return-object p0
.end method

.method public n()Z
    .locals 7

    iget-object v0, p0, Landroidx/profileinstaller/c;->k:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroidx/profileinstaller/c;->c()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroidx/profileinstaller/c;->e:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3, v0, v5}, Landroidx/profileinstaller/e;->l(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/channels/FileLock;)V

    const/4 v6, 0x1

    invoke-direct {p0, v6, v2}, Landroidx/profileinstaller/c;->l(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iput-object v2, p0, Landroidx/profileinstaller/c;->k:[B

    iput-object v2, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    return v6

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v4

    goto :goto_4

    :catchall_4
    move-exception v6

    if-eqz v5, :cond_2

    :try_start_9
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v5

    :try_start_a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_2
    if-eqz v4, :cond_3

    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v4

    :try_start_c
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_4
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :goto_6
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception v3

    :try_start_10
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_8
    const/4 v3, 0x7

    :try_start_11
    invoke-direct {p0, v3, v0}, Landroidx/profileinstaller/c;->l(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :goto_9
    iput-object v2, p0, Landroidx/profileinstaller/c;->k:[B

    iput-object v2, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    goto :goto_b

    :goto_a
    const/4 v3, 0x6

    :try_start_12
    invoke-direct {p0, v3, v0}, Landroidx/profileinstaller/c;->l(ILjava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_9

    :goto_b
    return v1

    :goto_c
    iput-object v2, p0, Landroidx/profileinstaller/c;->k:[B

    iput-object v2, p0, Landroidx/profileinstaller/c;->j:[Landroidx/profileinstaller/d;

    throw v0
.end method
