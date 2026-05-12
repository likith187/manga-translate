.class public abstract Lcom/coloros/translate/base/BaseEarPhoneActivity;
.super Lcom/coloros/translate/base/BasePrivateActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/base/BaseEarPhoneActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coloros/translate/base/q;",
        ">",
        "Lcom/coloros/translate/base/BasePrivateActivity<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final z:Lcom/coloros/translate/base/BaseEarPhoneActivity$a;


# instance fields
.field private final t:Ln8/j;

.field private u:Landroidx/activity/result/b;

.field private final v:Ln8/j;

.field private w:Z

.field private final x:Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;

.field private final y:Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/base/BaseEarPhoneActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/base/BaseEarPhoneActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->z:Lcom/coloros/translate/base/BaseEarPhoneActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;-><init>()V

    new-instance v0, Lcom/coloros/translate/base/BaseEarPhoneActivity$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$c;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->t:Ln8/j;

    new-instance v0, Lcom/coloros/translate/base/BaseEarPhoneActivity$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$b;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->v:Ln8/j;

    new-instance v0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->x:Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;

    new-instance v0, Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->y:Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;

    return-void
.end method

.method public static synthetic K0(Z)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->V0(Z)V

    return-void
.end method

.method public static final synthetic L0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->O0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic M0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->Y0()V

    return-void
.end method

.method private final N0()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->t:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final O0()Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/utils/s;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final P0()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->v:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final V0(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBluetoothPermission :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BaseEarPhoneActivity"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final W0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "registerEarBroadcast"

    const-string v2, "BaseEarPhoneActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln0/a;->b(Landroid/content/Context;)Ln0/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->y:Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "action.oplus.translate.conversation.foreground"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ln0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerEarBroadcast error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final X0()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->x:Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final Y0()V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->w:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->J0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->w:Z

    sget p0, Lcom/coloros/translate/R$string;->air_phone_connect_tips:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final Z0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "unRegisterEarBroadcast"

    const-string v2, "BaseEarPhoneActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln0/a;->b(Landroid/content/Context;)Ln0/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->y:Lcom/coloros/translate/base/BaseEarPhoneActivity$earControlBroadCast$1;

    invoke-virtual {v0, p0}, Ln0/a;->f(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterEarBroadcast error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final a1()V
    .locals 3

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->x:Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterHeadSetReceiver error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BaseEarPhoneActivity"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final Q0()V
    .locals 5

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Lr/e;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->u:Landroidx/activity/result/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchBluetoothPermission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseEarPhoneActivity"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->u:Landroidx/activity/result/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public R0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseEarPhoneActivity"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public S0()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseEarPhoneActivity"

    const-string v1, "onEarConnect"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public T0()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseEarPhoneActivity"

    const-string v1, "onEarConnectDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final U0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseEarPhoneActivity"

    const-string v2, "registerBluetoothPermission"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Lr/e;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->u:Landroidx/activity/result/b;

    if-nez v0, :cond_0

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Lcom/coloros/translate/base/h;

    invoke-direct {v1}, Lcom/coloros/translate/base/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity;->u:Landroidx/activity/result/b;

    :cond_1
    return-void
.end method

.method public b1()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseEarPhoneActivity"

    const-string v1, "updateEarControl"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->P0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->X0()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->a1()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->W0()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->onStop()V

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->Z0()V

    return-void
.end method
