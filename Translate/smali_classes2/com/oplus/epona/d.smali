.class public Lcom/oplus/epona/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lw6/d;

.field private static final l:Lcom/oplus/epona/e;

.field private static final m:Ljava/lang/Object;

.field private static n:Lcom/oplus/epona/d;

.field private static o:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Ljava/util/Map;

.field private final b:Ljava/util/List;

.field private c:Lw6/d;

.field private d:Lcom/oplus/epona/e;

.field private e:Lcom/oplus/epona/f;

.field private f:Lcom/oplus/epona/k;

.field private g:Lcom/oplus/epona/h;

.field private h:Landroid/app/Application;

.field private i:Lu6/a;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw6/a;

    invoke-direct {v0}, Lw6/a;-><init>()V

    sput-object v0, Lcom/oplus/epona/d;->k:Lw6/d;

    new-instance v0, Lcom/oplus/epona/g;

    invoke-direct {v0}, Lcom/oplus/epona/g;-><init>()V

    sput-object v0, Lcom/oplus/epona/d;->l:Lcom/oplus/epona/e;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/epona/d;->m:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/epona/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/d;->b:Ljava/util/List;

    sget-object v0, Lcom/oplus/epona/d;->k:Lw6/d;

    iput-object v0, p0, Lcom/oplus/epona/d;->c:Lw6/d;

    sget-object v0, Lcom/oplus/epona/d;->l:Lcom/oplus/epona/e;

    iput-object v0, p0, Lcom/oplus/epona/d;->d:Lcom/oplus/epona/e;

    new-instance v0, Ls6/d;

    invoke-direct {v0}, Ls6/d;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/d;->e:Lcom/oplus/epona/f;

    new-instance v0, Lu6/e;

    invoke-direct {v0}, Lu6/e;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/d;->g:Lcom/oplus/epona/h;

    new-instance v0, Lcom/oplus/epona/k;

    invoke-direct {v0}, Lcom/oplus/epona/k;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/d;->f:Lcom/oplus/epona/k;

    new-instance v0, Lu6/a;

    invoke-direct {v0}, Lu6/a;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/d;->i:Lu6/a;

    return-void
.end method

.method public static a(Lcom/oplus/epona/b;)Z
    .locals 2

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->a:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/epona/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/oplus/epona/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oplus/epona/d;->j:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/oplus/epona/d;->h:Landroid/app/Application;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/oplus/epona/d;->h:Landroid/app/Application;

    :goto_0
    iget-object p1, p0, Lcom/oplus/epona/d;->i:Lu6/a;

    iget-object p0, p0, Lcom/oplus/epona/d;->h:Landroid/app/Application;

    invoke-virtual {p1, p0}, Lu6/a;->c(Landroid/app/Application;)V

    return-void
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method public static d(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->g:Lcom/oplus/epona/h;

    invoke-interface {v0, p0}, Lcom/oplus/epona/h;->c(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/oplus/epona/c;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->g:Lcom/oplus/epona/h;

    invoke-interface {v0, p0}, Lcom/oplus/epona/h;->b(Ljava/lang/String;)Lcom/oplus/epona/c;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->g:Lcom/oplus/epona/h;

    invoke-interface {v0, p0}, Lcom/oplus/epona/h;->a(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static g()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lcom/oplus/epona/b;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/b;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i()Lcom/oplus/epona/f;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->e:Lcom/oplus/epona/f;

    return-object v0
.end method

.method private static j()Lcom/oplus/epona/d;
    .locals 2

    sget-object v0, Lcom/oplus/epona/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oplus/epona/d;->n:Lcom/oplus/epona/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oplus/epona/d;

    invoke-direct {v1}, Lcom/oplus/epona/d;-><init>()V

    sput-object v1, Lcom/oplus/epona/d;->n:Lcom/oplus/epona/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/oplus/epona/d;->n:Lcom/oplus/epona/d;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static k()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public static l()Lcom/oplus/epona/e;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->d:Lcom/oplus/epona/e;

    return-object v0
.end method

.method public static m()Lw6/d;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->c:Lw6/d;

    return-object v0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/oplus/epona/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oplus/epona/d;->b(Landroid/content/Context;)V

    invoke-static {}, Lx6/b;->e()Lx6/b;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/epona/d;->a(Lcom/oplus/epona/b;)Z

    invoke-static {}, Lc8/a;->g()Lc8/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/a;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/epona/d;->c()V

    return-void
.end method

.method public static o(Lcom/oplus/epona/Request;)Lu6/f;
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/d;->f:Lcom/oplus/epona/k;

    invoke-virtual {v0, p0}, Lcom/oplus/epona/k;->i(Lcom/oplus/epona/Request;)Lu6/f;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/oplus/epona/f;)V
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/d;->e:Lcom/oplus/epona/f;

    return-void
.end method

.method public static q(Lcom/oplus/epona/e;)V
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/d;->d:Lcom/oplus/epona/e;

    return-void
.end method

.method public static r(Lw6/d;)V
    .locals 1

    invoke-static {}, Lcom/oplus/epona/d;->j()Lcom/oplus/epona/d;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/d;->c:Lw6/d;

    return-void
.end method
