.class public final Lcom/coloros/translate/engine/tts/k;
.super Lcom/coloros/translate/engine/ITtsEngine$Stub;
.source "SourceFile"

# interfaces
.implements La2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/tts/k$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/coloros/translate/engine/tts/k$a;


# instance fields
.field private final a:Lcom/coloros/translate/engine/tts/e;

.field private b:Lcom/coloros/translate/utils/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/tts/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/tts/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/tts/k;->c:Lcom/coloros/translate/engine/tts/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITtsEngine$Stub;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/coloros/translate/engine/tts/e;

    invoke-direct {v0, p1}, Lcom/coloros/translate/engine/tts/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/coloros/translate/engine/tts/k;->a:Lcom/coloros/translate/engine/tts/e;

    new-instance p1, Lcom/coloros/translate/utils/v0;

    const-string v0, "AiUnitStreamTtsEngine"

    invoke-direct {p1, v0}, Lcom/coloros/translate/utils/v0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/k;->b:Lcom/coloros/translate/utils/v0;

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/engine/tts/k;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/k;->f(Lcom/coloros/translate/engine/tts/k;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/engine/tts/k;[BLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/engine/tts/k;->i(Lcom/coloros/translate/engine/tts/k;[BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/engine/tts/k;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/tts/k;->g(Lcom/coloros/translate/engine/tts/k;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/engine/tts/k;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/k;->j(Lcom/coloros/translate/engine/tts/k;)V

    return-void
.end method

.method private static final f(Lcom/coloros/translate/engine/tts/k;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/k;->b:Lcom/coloros/translate/utils/v0;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/v0;->f()V

    return-void
.end method

.method private static final g(Lcom/coloros/translate/engine/tts/k;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ttsParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$extra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iTtsListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/k;->a:Lcom/coloros/translate/engine/tts/e;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/coloros/translate/engine/tts/q;

    invoke-direct {v0, p4}, Lcom/coloros/translate/engine/tts/q;-><init>(Lcom/coloros/translate/engine/ITtsListener;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coloros/translate/engine/tts/e;->G(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/tts/q;)V

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
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "playText() error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AiUnitStreamTtsEngine"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final i(Lcom/coloros/translate/engine/tts/k;[BLjava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/k;->a:Lcom/coloros/translate/engine/tts/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->H([BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final j(Lcom/coloros/translate/engine/tts/k;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/k;->a:Lcom/coloros/translate/engine/tts/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/e;->S()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsEngine"

    const-string v2, "destroyEngine()"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/k;->b:Lcom/coloros/translate/utils/v0;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/v0;->f()V

    return-void
.end method

.method public destroy()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsEngine"

    const-string v2, "destroy()"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/k;->b:Lcom/coloros/translate/utils/v0;

    new-instance v1, Lcom/coloros/translate/engine/tts/h;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/tts/h;-><init>(Lcom/coloros/translate/engine/tts/k;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h([BLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playWithOpusData\uff0c format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitStreamTtsEngine"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/k;->b:Lcom/coloros/translate/utils/v0;

    new-instance v1, Lcom/coloros/translate/engine/tts/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/translate/engine/tts/j;-><init>(Lcom/coloros/translate/engine/tts/k;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "invokeMethod():"

    const-string v1, "AiUnitStreamTtsEngine"

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audio_is_playing"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/k;->a:Lcom/coloros/translate/engine/tts/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/e;->C()Z

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "isPlaying"

    invoke-virtual {p0, p1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_1
    const-string v0, "control_speak_on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "SpeakerOn"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/engine/tts/k;->a:Lcom/coloros/translate/engine/tts/e;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v4}, Lcom/coloros/translate/engine/tts/e;->O(Z)V

    :cond_3
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

    if-eqz p0, :cond_4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invokeMethod() error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public playText(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/engine/ITtsListener;)V
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "AiUnitStreamTtsEngine"

    const-string p2, "playText without extra"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playTextWithExtra(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V
    .locals 8

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttsParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iTtsListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playText() iTtsListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitStreamTtsEngine"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/k;->b:Lcom/coloros/translate/utils/v0;

    new-instance v7, Lcom/coloros/translate/engine/tts/i;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/engine/tts/i;-><init>(Lcom/coloros/translate/engine/tts/k;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V

    invoke-virtual {v0, v7}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopPlay()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsEngine"

    const-string v2, "stopPlay()"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/k;->b:Lcom/coloros/translate/utils/v0;

    new-instance v1, Lcom/coloros/translate/engine/tts/g;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/tts/g;-><init>(Lcom/coloros/translate/engine/tts/k;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    return-void
.end method
