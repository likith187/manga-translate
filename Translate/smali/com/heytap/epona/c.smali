.class public Lcom/heytap/epona/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/Object;

.field private static i:Lcom/heytap/epona/c;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lcom/heytap/epona/h;

.field private c:Lcom/heytap/epona/f;

.field private d:Landroid/app/Application;

.field private e:Ll5/a;

.field private f:Ll5/g;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/heytap/epona/c;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/heytap/epona/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/c;->a:Ljava/util/List;

    new-instance v0, Ll5/d;

    invoke-direct {v0}, Ll5/d;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/c;->c:Lcom/heytap/epona/f;

    new-instance v0, Lcom/heytap/epona/h;

    invoke-direct {v0}, Lcom/heytap/epona/h;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/c;->b:Lcom/heytap/epona/h;

    new-instance v0, Ll5/c;

    invoke-direct {v0}, Ll5/c;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/c;->f:Ll5/g;

    new-instance v0, Ll5/a;

    invoke-direct {v0}, Ll5/a;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/c;->e:Ll5/a;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/heytap/epona/c;->g:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/heytap/epona/c;->d:Landroid/app/Application;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/heytap/epona/c;->d:Landroid/app/Application;

    :goto_0
    iget-object p1, p0, Lcom/heytap/epona/c;->e:Ll5/a;

    iget-object p0, p0, Lcom/heytap/epona/c;->d:Landroid/app/Application;

    invoke-virtual {p1, p0}, Ll5/a;->c(Landroid/app/Application;)V

    return-void
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/heytap/epona/b;
    .locals 1

    invoke-static {}, Lcom/heytap/epona/c;->g()Lcom/heytap/epona/c;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/c;->c:Lcom/heytap/epona/f;

    invoke-interface {v0, p0}, Lcom/heytap/epona/f;->b(Ljava/lang/String;)Lcom/heytap/epona/b;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lp5/a;
    .locals 1

    invoke-static {}, Lcom/heytap/epona/c;->g()Lcom/heytap/epona/c;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/c;->c:Lcom/heytap/epona/f;

    invoke-interface {v0, p0}, Lcom/heytap/epona/f;->a(Ljava/lang/String;)Lp5/a;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lcom/heytap/epona/c;->g()Lcom/heytap/epona/c;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/c;->d:Landroid/app/Application;

    return-object v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/heytap/epona/c;->g()Lcom/heytap/epona/c;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/c;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static g()Lcom/heytap/epona/c;
    .locals 2

    sget-object v0, Lcom/heytap/epona/c;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heytap/epona/c;->i:Lcom/heytap/epona/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/heytap/epona/c;

    invoke-direct {v1}, Lcom/heytap/epona/c;-><init>()V

    sput-object v1, Lcom/heytap/epona/c;->i:Lcom/heytap/epona/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/heytap/epona/c;->i:Lcom/heytap/epona/c;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static h()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/heytap/epona/c;->g()Lcom/heytap/epona/c;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/heytap/epona/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/heytap/epona/c;->g()Lcom/heytap/epona/c;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/heytap/epona/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lq5/a;->e(Landroid/content/Context;)V

    invoke-static {}, Lr5/b;->a()Lr5/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr5/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/heytap/epona/c;->b()V

    return-void
.end method

.method public static j(Lcom/heytap/epona/Request;)Ll5/e;
    .locals 1

    invoke-static {}, Lcom/heytap/epona/c;->g()Lcom/heytap/epona/c;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/c;->b:Lcom/heytap/epona/h;

    invoke-virtual {v0, p0}, Lcom/heytap/epona/h;->i(Lcom/heytap/epona/Request;)Ll5/e;

    move-result-object p0

    return-object p0
.end method
