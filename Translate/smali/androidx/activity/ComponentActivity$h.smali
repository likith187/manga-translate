.class final Landroidx/activity/ComponentActivity$h;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$h;->this$0:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/o0;
    .locals 4

    .line 2
    new-instance v0, Landroidx/lifecycle/o0;

    .line 3
    iget-object v1, p0, Landroidx/activity/ComponentActivity$h;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 4
    iget-object v2, p0, Landroidx/activity/ComponentActivity$h;->this$0:Landroidx/activity/ComponentActivity;

    .line 5
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Landroidx/activity/ComponentActivity$h;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-direct {v0, v1, v2, p0}, Landroidx/lifecycle/o0;-><init>(Landroid/app/Application;Lq0/h;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity$h;->invoke()Landroidx/lifecycle/o0;

    move-result-object p0

    return-object p0
.end method
