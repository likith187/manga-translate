.class public final Lcom/coloros/translate/repository/local/AppDatabase_Impl;
.super Lcom/coloros/translate/repository/local/AppDatabase;
.source "SourceFile"


# instance fields
.field private volatile l:Li2/b;

.field private volatile m:Li2/d;

.field private volatile n:Li2/g;

.field private volatile o:Li2/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/repository/local/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic C(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic D(Lcom/coloros/translate/repository/local/AppDatabase_Impl;Ls0/b;)Ls0/b;
    .locals 0

    iput-object p1, p0, Landroidx/room/h;->a:Ls0/b;

    return-object p1
.end method

.method static synthetic E(Lcom/coloros/translate/repository/local/AppDatabase_Impl;Ls0/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/h;->m(Ls0/b;)V

    return-void
.end method

.method static synthetic F(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic G(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic x(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic y(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic z(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected e()Landroidx/room/e;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/e;

    const-string v3, "simultaneousSentence"

    const-string v4, "text_history"

    const-string v5, "conversationHistory"

    const-string v6, "simultaneousHistory"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/e;-><init>(Landroidx/room/h;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected f(Landroidx/room/a;)Ls0/c;
    .locals 3

    new-instance v0, Landroidx/room/j;

    new-instance v1, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;-><init>(Lcom/coloros/translate/repository/local/AppDatabase_Impl;I)V

    const-string p0, "fb3c376a8fe5ba532fad1bf441ceea14"

    const-string v2, "ed2bfe63cc320f356b57ac4bce0c1bba"

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

.method public s()Li2/b;
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->l:Li2/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->l:Li2/b;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->l:Li2/b;

    if-nez v0, :cond_1

    new-instance v0, Li2/c;

    invoke-direct {v0, p0}, Li2/c;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->l:Li2/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->l:Li2/b;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()Li2/d;
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->m:Li2/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->m:Li2/d;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->m:Li2/d;

    if-nez v0, :cond_1

    new-instance v0, Li2/e;

    invoke-direct {v0, p0}, Li2/e;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->m:Li2/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->m:Li2/d;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()Li2/g;
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->n:Li2/g;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->n:Li2/g;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->n:Li2/g;

    if-nez v0, :cond_1

    new-instance v0, Li2/h;

    invoke-direct {v0, p0}, Li2/h;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->n:Li2/g;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->n:Li2/g;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v()Li2/i;
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->o:Li2/i;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->o:Li2/i;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->o:Li2/i;

    if-nez v0, :cond_1

    new-instance v0, Li2/j;

    invoke-direct {v0, p0}, Li2/j;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->o:Li2/i;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->o:Li2/i;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
