.class public Ls6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".oplus.epona"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oplus/epona/d;->m()Lw6/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lw6/d;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/oplus/epona/f$a;)V
    .locals 4

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ls6/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->b()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/oplus/epona/f$a;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v1

    new-instance v2, Lu6/b;

    invoke-direct {v2}, Lu6/b;-><init>()V

    invoke-virtual {v2, v0}, Lu6/b;->a(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "Epona->LaunchComponentInterceptor"

    if-nez v2, :cond_1

    const-string p0, "find component:%s failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lc8/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/epona/Response;->a()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Ls6/e;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Ls6/e;->d(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->b()V

    goto :goto_0

    :cond_2
    const-string p0, "launch component:%s failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lc8/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/epona/Response;->a()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/oplus/epona/d;->g()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    const-string v1, "launchComponent"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "KEY_LAUNCH_SUCCESS"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "KEY_REMOTE_TRANSFER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Lu6/d;->c()Lu6/d;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lu6/d;->e(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    return v0
.end method
