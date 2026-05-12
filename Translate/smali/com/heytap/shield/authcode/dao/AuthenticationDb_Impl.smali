.class public final Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;
.super Lcom/heytap/shield/authcode/dao/AuthenticationDb;
.source "SourceFile"


# instance fields
.field private volatile m:Lt5/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Ls0/b;)Ls0/b;
    .locals 0

    iput-object p1, p0, Landroidx/room/h;->a:Ls0/b;

    return-object p1
.end method

.method static synthetic C(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Ls0/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/h;->m(Ls0/b;)V

    return-void
.end method

.method static synthetic D(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic E(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic u(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic v(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic x(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic y(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic z(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected e()Landroidx/room/e;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/e;

    const-string v3, "a_e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/e;-><init>(Landroidx/room/h;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected f(Landroidx/room/a;)Ls0/c;
    .locals 3

    new-instance v0, Landroidx/room/j;

    new-instance v1, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;-><init>(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;I)V

    const-string p0, "4900734c010240a846af4887983ab420"

    const-string v2, "bcb6b006fd96cb6cf4245dc2a4b99c48"

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/j;-><init>(Landroidx/room/a;Landroidx/room/j$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {p0}, Ls0/c$b;->a(Landroid/content/Context;)Ls0/c$b$a;

    move-result-object p0

    iget-object v1, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ls0/c$b$a;->c(Ljava/lang/String;)Ls0/c$b$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Ls0/c$b$a;->b(Ls0/c$a;)Ls0/c$b$a;

    move-result-object p0

    invoke-virtual {p0}, Ls0/c$b$a;->a()Ls0/c$b;

    move-result-object p0

    iget-object p1, p1, Landroidx/room/a;->a:Ls0/c$c;

    invoke-interface {p1, p0}, Ls0/c$c;->a(Ls0/c$b;)Ls0/c;

    move-result-object p0

    return-object p0
.end method

.method public s()Lt5/a;
    .locals 1

    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->m:Lt5/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->m:Lt5/a;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->m:Lt5/a;

    if-nez v0, :cond_1

    new-instance v0, Lt5/b;

    invoke-direct {v0, p0}, Lt5/b;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->m:Lt5/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->m:Lt5/a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
