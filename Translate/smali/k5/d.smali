.class public Lk5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/epona/d;


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

    const-string p1, ".epona"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Ln5/c;->f()Ln5/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Ln5/c;->e(Ljava/lang/String;)Lcom/heytap/epona/IRemoteTransfer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Landroid/net/Uri;)Z
    .locals 3

    invoke-static {}, Lcom/heytap/epona/c;->f()Landroid/content/Context;

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

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public a(Lcom/heytap/epona/d$a;)V
    .locals 4

    invoke-interface {p1}, Lcom/heytap/epona/d$a;->a()Lcom/heytap/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lk5/d;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "LaunchComponentInterceptor"

    if-eqz v1, :cond_0

    const-string p0, "RemoteTransfer with componentName = %s found. Proceed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lq5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/heytap/epona/d$a;->b()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/heytap/epona/d$a;->callback()Lcom/heytap/epona/a;

    move-result-object v1

    new-instance v3, Ll5/b;

    invoke-direct {v3}, Ll5/b;-><init>()V

    invoke-virtual {v3, v0}, Ll5/b;->a(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "find component:%s failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lq5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/heytap/epona/Response;->b()Lcom/heytap/epona/Response;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V

    return-void

    :cond_1
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lk5/d;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lk5/d;->d(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/heytap/epona/d$a;->b()V

    goto :goto_0

    :cond_2
    const-string p0, "launch component:%s failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lq5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/heytap/epona/Response;->b()Lcom/heytap/epona/Response;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V

    :goto_0
    return-void
.end method
