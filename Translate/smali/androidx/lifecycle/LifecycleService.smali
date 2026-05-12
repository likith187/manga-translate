.class public Landroidx/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/s;


# instance fields
.field private final a:Landroidx/lifecycle/q0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidx/lifecycle/q0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/q0;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleService;->a:Landroidx/lifecycle/q0;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/l;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LifecycleService;->a:Landroidx/lifecycle/q0;

    invoke-virtual {p0}, Landroidx/lifecycle/q0;->a()Landroidx/lifecycle/l;

    move-result-object p0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/LifecycleService;->a:Landroidx/lifecycle/q0;

    invoke-virtual {p0}, Landroidx/lifecycle/q0;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->a:Landroidx/lifecycle/q0;

    invoke-virtual {v0}, Landroidx/lifecycle/q0;->c()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->a:Landroidx/lifecycle/q0;

    invoke-virtual {v0}, Landroidx/lifecycle/q0;->d()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->a:Landroidx/lifecycle/q0;

    invoke-virtual {v0}, Landroidx/lifecycle/q0;->e()V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
