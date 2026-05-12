.class public Le3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lz2/e;

.field private final c:Lf3/c;

.field private final d:Le3/p;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lg3/b;

.field private final g:Lh3/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz2/e;Lf3/c;Le3/p;Ljava/util/concurrent/Executor;Lg3/b;Lh3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/j;->a:Landroid/content/Context;

    iput-object p2, p0, Le3/j;->b:Lz2/e;

    iput-object p3, p0, Le3/j;->c:Lf3/c;

    iput-object p4, p0, Le3/j;->d:Le3/p;

    iput-object p5, p0, Le3/j;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Le3/j;->f:Lg3/b;

    iput-object p7, p0, Le3/j;->g:Lh3/a;

    return-void
.end method

.method static synthetic b(Le3/j;Ly2/m;)Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Le3/j;->c:Lf3/c;

    invoke-interface {p0, p1}, Lf3/c;->c0(Ly2/m;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Le3/j;Lz2/g;Ljava/lang/Iterable;Ly2/m;I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Lz2/g;->c()Lz2/g$a;

    move-result-object v0

    sget-object v1, Lz2/g$a;->TRANSIENT_ERROR:Lz2/g$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Le3/j;->c:Lf3/c;

    invoke-interface {p1, p2}, Lf3/c;->m0(Ljava/lang/Iterable;)V

    iget-object p0, p0, Le3/j;->d:Le3/p;

    add-int/2addr p4, v2

    invoke-interface {p0, p3, p4}, Le3/p;->a(Ly2/m;I)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Le3/j;->c:Lf3/c;

    invoke-interface {p4, p2}, Lf3/c;->q(Ljava/lang/Iterable;)V

    invoke-virtual {p1}, Lz2/g;->c()Lz2/g$a;

    move-result-object p2

    sget-object p4, Lz2/g$a;->OK:Lz2/g$a;

    if-ne p2, p4, :cond_1

    iget-object p2, p0, Le3/j;->c:Lf3/c;

    iget-object p4, p0, Le3/j;->g:Lh3/a;

    invoke-interface {p4}, Lh3/a;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lz2/g;->b()J

    move-result-wide v3

    add-long/2addr v0, v3

    invoke-interface {p2, p3, v0, v1}, Lf3/c;->s0(Ly2/m;J)V

    :cond_1
    iget-object p1, p0, Le3/j;->c:Lf3/c;

    invoke-interface {p1, p3}, Lf3/c;->o0(Ly2/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Le3/j;->d:Le3/p;

    invoke-interface {p0, p3, v2, v2}, Le3/p;->b(Ly2/m;IZ)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Le3/j;Ly2/m;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le3/j;->d:Le3/p;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Le3/p;->a(Ly2/m;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic e(Le3/j;Ly2/m;ILjava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le3/j;->f:Lg3/b;

    iget-object v1, p0, Le3/j;->c:Lf3/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Le3/h;->a(Lf3/c;)Lg3/b$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lg3/b;->c(Lg3/b$a;)Ljava/lang/Object;

    invoke-virtual {p0}, Le3/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le3/j;->f:Lg3/b;

    invoke-static {p0, p1, p2}, Le3/i;->a(Le3/j;Ly2/m;I)Lg3/b$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lg3/b;->c(Lg3/b$a;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Le3/j;->f(Ly2/m;I)V
    :try_end_0
    .catch Lg3/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p0, p0, Le3/j;->d:Le3/p;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Le3/p;->a(Ly2/m;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    throw p0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object p0, p0, Le3/j;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method f(Ly2/m;I)V
    .locals 5

    iget-object v0, p0, Le3/j;->b:Lz2/e;

    invoke-virtual {p1}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/e;->a(Ljava/lang/String;)Lz2/m;

    move-result-object v0

    iget-object v1, p0, Le3/j;->f:Lg3/b;

    invoke-static {p0, p1}, Le3/f;->a(Le3/j;Ly2/m;)Lg3/b$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lg3/b;->c(Lg3/b$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v0, v2, p1}, Lb3/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lz2/g;->a()Lz2/g;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf3/i;

    invoke-virtual {v4}, Lf3/i;->b()Ly2/h;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lz2/f;->a()Lz2/f$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lz2/f$a;->b(Ljava/lang/Iterable;)Lz2/f$a;

    move-result-object v2

    invoke-virtual {p1}, Ly2/m;->c()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lz2/f$a;->c([B)Lz2/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lz2/f$a;->a()Lz2/f;

    move-result-object v2

    invoke-interface {v0, v2}, Lz2/m;->b(Lz2/f;)Lz2/g;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Le3/j;->f:Lg3/b;

    invoke-static {p0, v0, v1, p1, p2}, Le3/g;->a(Le3/j;Lz2/g;Ljava/lang/Iterable;Ly2/m;I)Lg3/b$a;

    move-result-object p0

    invoke-interface {v2, p0}, Lg3/b;->c(Lg3/b$a;)Ljava/lang/Object;

    return-void
.end method

.method public g(Ly2/m;ILjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Le3/j;->e:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2, p3}, Le3/e;->a(Le3/j;Ly2/m;ILjava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
