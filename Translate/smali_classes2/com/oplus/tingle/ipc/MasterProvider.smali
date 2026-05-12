.class public Lcom/oplus/tingle/ipc/MasterProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a()Landroid/os/IBinder;
    .locals 0

    invoke-static {}, Lb8/b;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oplus/tingle/ipc/b;->a()Lcom/oplus/tingle/ipc/b;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/oplus/tingle/ipc/MasterProvider;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method private static b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/oplus/tingle/ipc/d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lb8/b;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.permission.safe.SECURITY"

    return-object p0

    :cond_0
    invoke-static {}, Lcom/oplus/tingle/ipc/MasterProvider;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static d()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/oplus/tingle/ipc/d;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 2

    invoke-static {}, Lk7/c;->e()Lk7/c;

    move-result-object v0

    invoke-virtual {v0}, Lk7/c;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/MasterProvider;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/MasterProvider;->e()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<CALL> Calling package : ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] have no permission : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/MasterProvider;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "MasterProvider"

    invoke-static {p3, p0, p1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lt7/a;->e()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p2

    :cond_0
    const-string p3, "sendBinder"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lt7/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/MasterProvider;->a()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MasterProvider"

    const-string v2, "Provider onCreate"

    invoke-static {v1, v2, v0}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg7/c;->a()Lg7/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg7/c;->c(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/MasterProvider;->e()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<QUERY> Calling package : ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] have no permission : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/MasterProvider;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "MasterProvider"

    invoke-static {p2, p0, p1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/oplus/tingle/ipc/MasterProvider;->a()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lu7/a;->c(Landroid/os/IBinder;)Lu7/a;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
