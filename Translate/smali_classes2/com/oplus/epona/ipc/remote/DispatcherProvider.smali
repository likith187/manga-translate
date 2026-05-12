.class public Lcom/oplus/epona/ipc/remote/DispatcherProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "com.oplus.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lx6/b;->e()Lx6/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx6/b;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-object p0
.end method

.method private b()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.oplus.permission.safe.SECURITY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "com.oplus.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {}, Lx6/b;->e()Lx6/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lx6/b;->i(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "REGISTER_TRANSFER_RESULT"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object p0
.end method

.method private d(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "com.oplus.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lx6/b;->e()Lx6/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lx6/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "REGISTER_TRANSFER_RESULT"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<CALL> Calling package : ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] have no permission : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.oplus.permission.safe.SECURITY"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Epona->DispatcherProvider"

    invoke-static {p2, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.epona.Dispatcher.FIND_TRANSFER"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "com.oplus.epona.Dispatcher.REGISTER_TRANSFER"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->c(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "com.oplus.epona.Dispatcher.UNREGISTER_TRANSFER"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->d(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p3, p0

    invoke-static {p0}, Lcom/oplus/epona/d;->h(Ljava/lang/String;)Lcom/oplus/epona/b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/epona/b;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
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
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<QUERY> Calling package : ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] have no permission : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.oplus.permission.safe.SECURITY"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Epona->DispatcherProvider"

    invoke-static {p2, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_3

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v1, "com.oplus.epona.Dispatcher.QUERY_METHOD"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "com.oplus.epona.Dispatcher.QUERY_EXTRA"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 6
    const-string p1, "com.oplus.epona.Dispatcher.REGISTER_TRANSFER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.oplus.epona.Dispatcher.UNREGISTER_TRANSFER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->d(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->c(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {v0}, Lv6/a;->c(Landroid/os/Bundle;)Lv6/a;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/oplus/epona/ipc/remote/DispatcherProvider;->b()Z

    move-result p2

    const/4 p3, 0x0

    const-string p4, "Epona->DispatcherProvider"

    const/4 p5, 0x0

    if-nez p2, :cond_0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<QUERY> Calling package : ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] have no permission : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.oplus.permission.safe.SECURITY"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p5, [Ljava/lang/Object;

    invoke-static {p4, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 15
    const-string p2, "find_transfer"

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 19
    invoke-static {}, Lx6/b;->e()Lx6/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lx6/b;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 20
    const-string p1, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 21
    invoke-static {p2}, Lv6/a;->c(Landroid/os/Bundle;)Lv6/a;

    move-result-object p0

    return-object p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get ComponentName error : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p5, [Ljava/lang/Object;

    invoke-static {p4, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The path is not /find_transfer : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p5, [Ljava/lang/Object;

    invoke-static {p4, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find the uri : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p5, [Ljava/lang/Object;

    invoke-static {p4, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
