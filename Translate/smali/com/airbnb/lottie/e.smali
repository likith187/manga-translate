.class public abstract Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field private static b:Z = false

.field private static c:Z = true

.field private static d:Z = true

.field private static e:Lcom/airbnb/lottie/a;

.field private static f:Lp1/f;

.field private static g:Lp1/e;

.field private static volatile h:Lp1/h;

.field private static volatile i:Lp1/g;

.field private static j:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/a;->AUTOMATIC:Lcom/airbnb/lottie/a;

    sput-object v0, Lcom/airbnb/lottie/e;->e:Lcom/airbnb/lottie/a;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lcom/airbnb/lottie/e;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/e;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/e;->f()Lr1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr1/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)F
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/e;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/e;->f()Lr1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr1/f;->b(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static d()Lcom/airbnb/lottie/a;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/e;->e:Lcom/airbnb/lottie/a;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/e;->d:Z

    return v0
.end method

.method private static f()Lr1/f;
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/e;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/f;

    if-nez v0, :cond_0

    new-instance v0, Lr1/f;

    invoke-direct {v0}, Lr1/f;-><init>()V

    sget-object v1, Lcom/airbnb/lottie/e;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic g(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "lottie_network_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lp1/g;
    .locals 3

    sget-boolean v0, Lcom/airbnb/lottie/e;->c:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/e;->i:Lp1/g;

    if-nez v0, :cond_3

    const-class v1, Lp1/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/e;->i:Lp1/g;

    if-nez v0, :cond_2

    new-instance v0, Lp1/g;

    sget-object v2, Lcom/airbnb/lottie/e;->g:Lp1/e;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/airbnb/lottie/d;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/d;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v0, v2}, Lp1/g;-><init>(Lp1/e;)V

    sput-object v0, Lcom/airbnb/lottie/e;->i:Lp1/g;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Lp1/h;
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/e;->h:Lp1/h;

    if-nez v0, :cond_2

    const-class v1, Lp1/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/e;->h:Lp1/h;

    if-nez v0, :cond_1

    new-instance v0, Lp1/h;

    invoke-static {p0}, Lcom/airbnb/lottie/e;->h(Landroid/content/Context;)Lp1/g;

    move-result-object p0

    sget-object v2, Lcom/airbnb/lottie/e;->f:Lp1/f;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lp1/b;

    invoke-direct {v2}, Lp1/b;-><init>()V

    :goto_0
    invoke-direct {v0, p0, v2}, Lp1/h;-><init>(Lp1/g;Lp1/f;)V

    sput-object v0, Lcom/airbnb/lottie/e;->h:Lp1/h;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method
