.class public final Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFinishReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimultaneousMainActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.coloros.translate.ACTIVE_SIMULTANEOUS_FINISH_CHANGED"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->n1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->u(ZZ)V

    :cond_0
    return-void
.end method
