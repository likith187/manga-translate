.class public Lw6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/d;


# instance fields
.field private final a:Lu6/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lu6/d;->c()Lu6/d;

    move-result-object v0

    iput-object v0, p0, Lw6/a;->a:Lu6/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    iget-object v0, p0, Lw6/a;->a:Lu6/d;

    invoke-virtual {v0, p1}, Lu6/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/oplus/epona/d;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.appplatform"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lx6/b;->e()Lx6/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx6/b;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Lz6/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lw6/a;->a:Lu6/d;

    invoke-virtual {p0, p1, v0}, Lu6/d;->e(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_2
    const-string p0, "Get remote binder null. ComponentName : %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Epona->DefaultTransferController"

    invoke-static {v1, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v0
.end method
