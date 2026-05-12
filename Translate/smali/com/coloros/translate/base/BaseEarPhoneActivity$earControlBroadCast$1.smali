.class public final Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/base/BaseEarPhoneActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/base/BaseEarPhoneActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;->b(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    return-void
.end method

.method private static final b(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->b1()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object p1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    const-string v0, "BaseEarPhoneActivity"

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    move-object p1, v1

    :goto_1
    const-string v2, "action.oplus.translate.conversation.foreground"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "earBinder"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/coloros/translate/engine/IEarControlBtnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/translate/engine/IEarControlBtnCallback;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lm2/a;->INSTANCE:Lm2/a;

    invoke-virtual {v2}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lm2/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Lcom/coloros/translate/engine/IEarControlBtnCallback;->callback(Landroid/os/Bundle;)V

    :cond_4
    new-instance p1, Lcom/coloros/translate/base/i;

    invoke-direct {p1, p0}, Lcom/coloros/translate/base/i;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    const/4 p0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p0, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_5
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive error "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_5
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "onReceive reject"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
