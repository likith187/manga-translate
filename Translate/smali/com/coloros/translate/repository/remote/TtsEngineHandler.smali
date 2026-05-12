.class public final Lcom/coloros/translate/repository/remote/TtsEngineHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/repository/remote/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/remote/TtsEngineHandler$a;,
        Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/repository/remote/TtsEngineHandler$a;


# instance fields
.field private a:Lcom/coloros/translate/engine/ITtsEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->b:Lcom/coloros/translate/repository/remote/TtsEngineHandler$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b(Lcom/coloros/translate/repository/remote/TtsEngineHandler;)Lcom/coloros/translate/engine/ITtsEngine;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;-><init>(Lcom/coloros/translate/repository/remote/TtsEngineHandler;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 5

    const-string v0, "TtsEngineHandler"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    if-eqz p0, :cond_0

    const-string v2, "audio_is_playing"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, v2, v3}, Lcom/coloros/translate/engine/ITtsEngine;->invokeMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "isPlaying"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v1

    :goto_0
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAudioIsPlaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :goto_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "checkAudioIsPlaying error"

    invoke-virtual {p0, v0, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public final d(Z)V
    .locals 4

    const-string v0, "TtsEngineHandler"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    if-eqz p0, :cond_0

    const-string v1, "control_speak_on"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "SpeakerOn"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-interface {p0, v1, v2}, Lcom/coloros/translate/engine/ITtsEngine;->invokeMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "controlSpeakerOn speakerOn"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "controlSpeakerOn error"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TtsEngineHandler"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(Lcom/coloros/translate/engine/ITtsEngine;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtsEngine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TtsEngineHandler"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    return-void
.end method

.method public g()V
    .locals 3

    const-string v0, "TtsEngineHandler"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "stopPlay"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/engine/ITtsEngine;->stopPlay()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "stopPlay error"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
