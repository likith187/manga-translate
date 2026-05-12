.class public final Lq9/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/j$a;
    }
.end annotation


# instance fields
.field private final a:Lq9/j$a;

.field private b:Lq9/k;


# direct methods
.method public constructor <init>(Lq9/j$a;)V
    .locals 1

    const-string v0, "socketAdapterFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/j;->a:Lq9/j$a;

    return-void
.end method

.method private final declared-synchronized d(Ljavax/net/ssl/SSLSocket;)Lq9/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq9/j;->b:Lq9/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq9/j;->a:Lq9/j$a;

    invoke-interface {v0, p1}, Lq9/j$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq9/j;->a:Lq9/j$a;

    invoke-interface {v0, p1}, Lq9/j$a;->b(Ljavax/net/ssl/SSLSocket;)Lq9/k;

    move-result-object p1

    iput-object p1, p0, Lq9/j;->b:Lq9/k;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lq9/j;->b:Lq9/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq9/j;->a:Lq9/j$a;

    invoke-interface {p0, p1}, Lq9/j$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    return p0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lq9/j;->d(Ljavax/net/ssl/SSLSocket;)Lq9/k;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lq9/k;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lq9/j;->d(Ljavax/net/ssl/SSLSocket;)Lq9/k;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lq9/k;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public isSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
