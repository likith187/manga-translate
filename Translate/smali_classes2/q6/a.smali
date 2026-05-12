.class public Lq6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/d;


# instance fields
.field private final a:Lw6/d;

.field private final b:Lu6/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/epona/d;->k:Lw6/d;

    iput-object v0, p0, Lq6/a;->a:Lw6/d;

    invoke-static {}, Lu6/d;->c()Lu6/d;

    move-result-object v0

    iput-object v0, p0, Lq6/a;->b:Lu6/d;

    invoke-static {}, Lcom/oplus/epona/l;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/heytap/epona/c;->i(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    invoke-static {}, Lcom/oplus/epona/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq6/a;->a:Lw6/d;

    invoke-interface {p0, p1}, Lw6/d;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lq6/a;->b:Lu6/d;

    invoke-virtual {v0, p1}, Lu6/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/heytap/epona/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lq5/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "com.heytap.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lq6/a;->b:Lu6/d;

    invoke-virtual {p0, p1, v0}, Lu6/d;->e(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string p0, "Get remote binder null. ComponentName : %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Epona->CompatRegister"

    invoke-static {v1, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v0
.end method
