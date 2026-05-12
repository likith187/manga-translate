.class public Lp7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lp7/a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lp7/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp7/a;-><init>()V

    return-void
.end method

.method public static a()Lp7/a;
    .locals 1

    invoke-static {}, Lp7/a$b;->a()Lp7/a;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget p0, p0, Lp7/a;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 0

    iget p0, p0, Lp7/a;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized b(Landroid/app/Application;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lp7/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp7/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lp7/a;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lp7/r;->e()Lp7/r;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp7/r;->i(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    iget p1, p0, Lp7/a;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp7/a;->a:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lp7/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lp7/a;->a:I

    invoke-direct {p0}, Lp7/a;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lp7/r;->e()Lp7/r;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp7/r;->g(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
