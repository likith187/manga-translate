.class public final Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;
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

    iput-object p1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->d(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/base/BaseEarPhoneActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->c(Lcom/coloros/translate/base/BaseEarPhoneActivity;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private static final c(Lcom/coloros/translate/base/BaseEarPhoneActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->R0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private static final d(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->S0()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headSetReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseEarPhoneActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x7d0

    if-eqz v0, :cond_0

    const-string p2, "headset disconnect"

    invoke-virtual {p1, v1, p2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-direct {p1, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v2, v3, p1}, Lcom/coloros/translate/utils/z0;->c(JLw8/a;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "headset blue state"

    invoke-virtual {p1, v1, p2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-direct {p1, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v2, v3, p1}, Lcom/coloros/translate/utils/z0;->c(JLw8/a;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    const-string v0, "headset blue device"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-lt v0, v6, :cond_2

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2, v0, v6}, Lcom/coloros/translate/base/j;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headset blue device:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    new-instance p1, Lcom/coloros/translate/base/k;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/base/k;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v3, v4, p1, v5, v2}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "line headset  state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_0
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "microphone"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    move v6, v5

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "headReceiver onReceive "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-static {p1}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->M0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    new-instance p1, Lcom/coloros/translate/base/l;

    invoke-direct {p1, p0}, Lcom/coloros/translate/base/l;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v3, v4, p1, v5, v2}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$c;

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-direct {p1, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$c;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v3, v4, p1, v5, v2}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method
