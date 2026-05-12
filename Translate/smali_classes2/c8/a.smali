.class public Lc8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/a$b;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile c:Lc8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lc8/a;->f()Z

    move-result v0

    sput-boolean v0, Lc8/a;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lc8/a;->a:Z

    return p0
.end method

.method static synthetic b()Z
    .locals 1

    invoke-static {}, Lc8/a;->f()Z

    move-result v0

    return v0
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lc8/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lc8/a;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lc8/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lc8/a;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static f()Z
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Lc8/a;
    .locals 2

    sget-object v0, Lc8/a;->c:Lc8/a;

    if-nez v0, :cond_1

    const-class v0, Lc8/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc8/a;->c:Lc8/a;

    if-nez v1, :cond_0

    new-instance v1, Lc8/a;

    invoke-direct {v1}, Lc8/a;-><init>()V

    sput-object v1, Lc8/a;->c:Lc8/a;

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
    sget-object v0, Lc8/a;->c:Lc8/a;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lc8/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lc8/a;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public h(Landroid/content/Context;)V
    .locals 2

    sget-object p0, Lc8/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "log_switch_type"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Lc8/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/a$b;-><init>(Lc8/a$a;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
