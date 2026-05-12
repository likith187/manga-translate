.class public Lm7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/Map;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Lm7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lm7/d;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Lm7/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lm7/d;->b:Landroid/content/Context;

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p3}, Lm7/d;->c(Landroid/content/Context;Lm7/b;)Lm7/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lm7/d;->b(Landroid/content/Context;)Lm7/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lm7/d;->c:Lm7/b;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm7/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lm7/b;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lm7/c;

    invoke-direct {p1}, Lm7/c;-><init>()V

    const-string v0, "OTrackContext"

    invoke-static {v0, p1}, Ls7/f;->f(Ljava/lang/String;Ls7/g;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    sget-object p0, Lm7/b;->f:Lm7/b;

    return-object p0

    :cond_0
    new-instance v0, Lm7/b$b;

    invoke-direct {v0}, Lm7/b$b;-><init>()V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lm7/b$b;->h(Ljava/lang/String;)Lm7/b$b;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lm7/b$b;->i(Ljava/lang/String;)Lm7/b$b;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm7/b$b;->g(Ljava/lang/String;)Lm7/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lm7/b$b;->f()Lm7/b;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/content/Context;Lm7/b;)Lm7/b;
    .locals 0

    invoke-virtual {p2}, Lm7/b;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ls7/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lm7/b;->g(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lm7/b;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Ls7/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lm7/b;->h(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lm7/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Ls7/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lm7/b;->f(Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method

.method public static declared-synchronized d(Ljava/lang/String;Landroid/content/Context;Lm7/b;)Lm7/d;
    .locals 2

    const-class v0, Lm7/d;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lm7/d;->e(Ljava/lang/String;)Lm7/d;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lm7/d;

    invoke-direct {v1, p0, p1, p2}, Lm7/d;-><init>(Ljava/lang/String;Landroid/content/Context;Lm7/b;)V

    sget-object p1, Lm7/d;->d:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)Lm7/d;
    .locals 2

    const-class v0, Lm7/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm7/d;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic g()Ljava/lang/String;
    .locals 1

    const-string v0, "createDefaultConfig PackageManager.NameNotFoundException."

    return-object v0
.end method


# virtual methods
.method public f()Lm7/b;
    .locals 2

    sget-object v0, Lm7/b;->f:Lm7/b;

    iget-object v1, p0, Lm7/d;->c:Lm7/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm7/d;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lm7/d;->b(Landroid/content/Context;)Lm7/b;

    move-result-object v0

    iput-object v0, p0, Lm7/d;->c:Lm7/b;

    :cond_0
    iget-object p0, p0, Lm7/d;->c:Lm7/b;

    return-object p0
.end method
