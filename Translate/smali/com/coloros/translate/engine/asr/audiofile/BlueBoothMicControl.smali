.class public final Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$a;


# instance fields
.field private volatile a:I

.field private volatile b:Z

.field private final c:Lcom/coloros/translate/engine/asr/audiofile/d;

.field private final d:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;

.field private final e:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->f:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/d;

    invoke-direct {v0}, Lcom/coloros/translate/engine/asr/audiofile/d;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->c:Lcom/coloros/translate/engine/asr/audiofile/d;

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;-><init>(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->d:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;

    sget-object v0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;->INSTANCE:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->e:Ln8/j;

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    return p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->f(Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->a:I

    return-void
.end method

.method private final d()Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->e:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method private final f(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openBluetoothSco  open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlueBoothMicControl"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->d()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "openBluetoothSco error"

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->c:Lcom/coloros/translate/engine/asr/audiofile/d;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/d;->b()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->c:Lcom/coloros/translate/engine/asr/audiofile/d;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/d;->d()V

    :goto_1
    return-void
.end method

.method private final g()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->j()V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->d:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

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

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BlueBoothMicControl"

    const-string v1, "registerBluetoothScoReceiver error"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final j()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->d:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BlueBoothMicControl"

    const-string v1, "unRegisterBluetoothScoReceiver error"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->j()V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->c:Lcom/coloros/translate/engine/asr/audiofile/d;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/d;->d()V

    return-void
.end method

.method public final h()V
    .locals 6

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget v2, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->a:I

    iget-boolean v3, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBluetoothSco scoState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " needStartSco:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlueBoothMicControl"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->d()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->startBluetoothSco()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "stopBluetoothSco error"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->f(Z)V

    return-void
.end method

.method public final i()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget v1, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->a:I

    iget-boolean v2, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " stopBluetoothSco scoState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " needStartSco:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlueBoothMicControl"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b:Z

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->d()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "stopBluetoothSco error"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->f(Z)V

    :cond_1
    return-void
.end method
