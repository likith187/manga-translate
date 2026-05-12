.class public Lg7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile f:Lg7/c;


# instance fields
.field private volatile a:Z

.field private b:Landroid/content/Context;

.field private c:Ll7/a;

.field private d:Ll7/c;

.field private e:Ll7/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg7/c;->a:Z

    return-void
.end method

.method public static a()Lg7/c;
    .locals 2

    sget-object v0, Lg7/c;->f:Lg7/c;

    if-nez v0, :cond_1

    const-class v0, Lg7/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg7/c;->f:Lg7/c;

    if-nez v1, :cond_0

    new-instance v1, Lg7/c;

    invoke-direct {v1}, Lg7/c;-><init>()V

    sput-object v1, Lg7/c;->f:Lg7/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lg7/c;->f:Lg7/c;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lk7/i;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.systemcore"

    return-object p0

    :cond_0
    invoke-static {}, Lg7/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg7/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lg7/c;->a:Z

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg7/c;->b:Landroid/content/Context;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lg7/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lj7/b;->b()V

    iget-object p1, p0, Lg7/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lk7/d;->e(Landroid/content/Context;)V

    invoke-static {}, Lk7/c;->e()Lk7/c;

    move-result-object p1

    iget-object v0, p0, Lg7/c;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lk7/c;->f(Landroid/content/Context;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p1, Ll7/a;

    iget-object v0, p0, Lg7/c;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Ll7/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lg7/c;->c:Ll7/a;

    new-instance p1, Ll7/c;

    iget-object v0, p0, Lg7/c;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Ll7/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lg7/c;->d:Ll7/c;

    new-instance p1, Ll7/b;

    iget-object v0, p0, Lg7/c;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Ll7/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lg7/c;->e:Ll7/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 0

    invoke-static {}, Lk7/c;->e()Lk7/c;

    move-result-object p0

    invoke-virtual {p0}, Lk7/c;->g()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public e(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lg7/c;->d:Ll7/c;

    invoke-virtual {p0, p1, p2}, Ll7/c;->h(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
