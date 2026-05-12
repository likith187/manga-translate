.class public final Landroidx/lifecycle/e0$c;
.super Landroidx/lifecycle/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/e0;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/e0;


# direct methods
.method constructor <init>(Landroidx/lifecycle/e0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/e0$c;->this$0:Landroidx/lifecycle/e0;

    invoke-direct {p0}, Landroidx/lifecycle/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/e0$c;->this$0:Landroidx/lifecycle/e0;

    invoke-virtual {p0}, Landroidx/lifecycle/e0;->c()V

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/lifecycle/e0$c$a;

    iget-object p0, p0, Landroidx/lifecycle/e0$c;->this$0:Landroidx/lifecycle/e0;

    invoke-direct {p2, p0}, Landroidx/lifecycle/e0$c$a;-><init>(Landroidx/lifecycle/e0;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/e0$a;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/e0$c;->this$0:Landroidx/lifecycle/e0;

    invoke-virtual {p0}, Landroidx/lifecycle/e0;->f()V

    return-void
.end method
