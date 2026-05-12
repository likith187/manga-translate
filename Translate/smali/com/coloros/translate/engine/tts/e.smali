.class public final Lcom/coloros/translate/engine/tts/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/tts/e$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/coloros/translate/engine/tts/e$a;

.field private static final t:Ljava/util/ArrayList;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln8/j;

.field private c:Lcom/coloros/translate/engine/tts/q;

.field private d:Landroid/os/Bundle;

.field private volatile e:Lcom/coloros/translate/engine/tts/n;

.field private f:Lcom/coloros/translate/utils/v0;

.field private g:Lcom/coloros/translate/engine/tts/m;

.field private volatile h:Z

.field private volatile i:Landroidx/lifecycle/b0;

.field private j:Landroid/os/Handler;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/Integer;

.field private volatile m:Z

.field private volatile n:Z

.field private final o:Lcom/coloros/translate/engine/tts/e$c;

.field private p:Lcom/coloros/translate/engine/info/TtsParams;

.field private final q:Ljava/util/concurrent/LinkedBlockingQueue;

.field private volatile r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/coloros/translate/engine/tts/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/tts/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/tts/e;->s:Lcom/coloros/translate/engine/tts/e$a;

    const-string v0, "high"

    const-string v1, "higher"

    const-string v2, "low"

    const-string v3, "normal"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/tts/e;->t:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->a:Landroid/content/Context;

    sget-object p1, Lcom/coloros/translate/engine/tts/e$b;->INSTANCE:Lcom/coloros/translate/engine/tts/e$b;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->b:Ln8/j;

    new-instance p1, Lcom/coloros/translate/utils/v0;

    const-string v0, "AiUnitStreamTtsClient"

    invoke-direct {p1, v0}, Lcom/coloros/translate/utils/v0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->f:Lcom/coloros/translate/utils/v0;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/engine/tts/a;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/tts/a;-><init>(Lcom/coloros/translate/engine/tts/e;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->l:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    new-instance p1, Lcom/coloros/translate/engine/tts/e$c;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/tts/e$c;-><init>(Lcom/coloros/translate/engine/tts/e;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->o:Lcom/coloros/translate/engine/tts/e$c;

    new-instance p1, Lcom/coloros/translate/engine/info/TtsParams;

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->p:Lcom/coloros/translate/engine/info/TtsParams;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    return-void
.end method

.method private static final A(Lcom/coloros/translate/engine/tts/e;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "AiUnitStreamTtsClient"

    const-string v1, "aiunit died"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e;->h:Z

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/translate/engine/tts/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/tts/m;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/m;->f()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "AiUnitStreamTtsClient"

    const-string v1, "initVoipAudioPlayer"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final D()Z
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->l:Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static final E(Lcom/coloros/translate/engine/tts/e;Landroid/os/Message;)Z
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1100

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOverTimeHandler isTtsProcessEnd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AiUnitStreamTtsClient"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->T()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/e;->n:Z

    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/e;->h:Z

    iput-boolean v2, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/e;->S()V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/k;->TTS_PARAMS_TEXT_OVER_TIME_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/engine/tts/q;->onStatus(ILjava/lang/String;)V

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1101

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->L()V

    :cond_2
    return v2
.end method

.method private final F([B)V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->y()Lcom/coloros/translate/engine/tts/m;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/translate/engine/tts/m$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p1, p0, v2}, Lcom/coloros/translate/engine/tts/m$a;-><init>([BLcom/coloros/translate/engine/tts/q;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/tts/m;->d(Lcom/coloros/translate/engine/tts/m$a;)V

    :cond_0
    return-void
.end method

.method private static final J(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/tts/n;->c([B)[S

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object p1

    const-string v0, "wrap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/tts/n;->b(Ljava/nio/ShortBuffer;)[B

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/coloros/translate/engine/tts/e;->F([B)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAudio(), pcm ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AiUnitStreamTtsClient"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final K(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/tts/n;->d([B)[B

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/coloros/translate/engine/tts/e;->F([B)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAudio(), opus error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AiUnitStreamTtsClient"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final L()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/e;->n:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsClient"

    const-string v2, "reTryTts(), retry connect isNeedTts = true"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->z()V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/e;->o:Lcom/coloros/translate/engine/tts/e$c;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->initWsSpeech(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->N()V

    return-void
.end method

.method private final M()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsClient"

    const-string v2, "removeOverTime()"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    const/16 v1, 0x1101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    const/16 v0, 0x1100

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private final N()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsClient"

    const-string v2, "sendOverTime()"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    const/16 v1, 0x1101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    const/16 v1, 0x1100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private final P(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    invoke-static {p1}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12c

    if-le v1, v3, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v1, "substring(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, " "

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/r;->c0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v3, p1

    const-string p1, "\n"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/r;->u0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    const-string v5, ""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/engine/tts/e;->Q(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "AiUnitStreamTtsClient"

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playText split length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_6
    const-string v0, "playText split is blank"

    invoke-virtual {v2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    :goto_4
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "playText split length error"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playText count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final Q(Ljava/util/List;Ljava/lang/String;)V
    .locals 12

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "AiUnitStreamTtsClient"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "splitText text is null"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "splitText,textList size = "

    const/16 v3, 0x12c

    if-le v0, v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "substring(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, " "

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Lkotlin/text/r;->c0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->Q(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final R(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V
    .locals 7

    const-string v0, "AiUnitStreamTtsClient"

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e;->d:Landroid/os/Bundle;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const-string v3, "play_from_phone_mic"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/coloros/translate/engine/tts/e;->l:Ljava/lang/Integer;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/e;->l:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlayText() playOutSide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/e;->d:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    sget-object v5, Lcom/coloros/translate/engine/tts/e;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "speedGrade"

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_3

    sget-object v2, Lcom/coloros/translate/engine/tts/e;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "get(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->D()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->y()Lcom/coloros/translate/engine/tts/m;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, v4}, Lcom/coloros/translate/engine/tts/m;->e(Z)V

    :cond_4
    const-string v4, "opus"

    invoke-virtual {p2, v4}, Lcom/coloros/translate/engine/info/TtsParams;->f(Ljava/lang/String;)V

    new-instance v4, Lcom/oplus/aiunit/translation/request/WsTtsRequest;

    invoke-direct {v4}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;-><init>()V

    iget-object v5, p0, Lcom/coloros/translate/engine/tts/e;->d:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    const-string v3, "tts_voice"

    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPlayText final timbre : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->setSpeedGrade(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v4, v2}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->setChannel(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->setContent(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/TtsParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/TtsParams;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->setLanguage(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    invoke-virtual {v4, v3}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->setVoiceName(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->getContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    sget-object v2, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    invoke-virtual {v2, v4}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->startWsTts(Lcom/oplus/aiunit/translation/request/WsTtsRequest;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->N()V

    invoke-virtual {v1}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/TtsParams;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWsTts(), wsTtsRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " text:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "language:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "startPlayText(),reject"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final T()V
    .locals 4

    const-string v0, "AiUnitStreamTtsClient"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "stopWsTts"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    const-string v2, "0"

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->stopWsTts(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopWsTts error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->K(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->J(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/engine/tts/e;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/tts/e;->E(Lcom/coloros/translate/engine/tts/e;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/coloros/translate/engine/tts/e;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/tts/e;->A(Lcom/coloros/translate/engine/tts/e;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic e(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/engine/tts/e;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/info/TtsParams;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->p:Lcom/coloros/translate/engine/info/TtsParams;

    return-object p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/engine/tts/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/tts/e;->h:Z

    return p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/n;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    return-object p0
.end method

.method public static final synthetic k(Lcom/coloros/translate/engine/tts/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic l(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/utils/v0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->f:Lcom/coloros/translate/utils/v0;

    return-object p0
.end method

.method public static final synthetic m(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/q;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    return-object p0
.end method

.method public static final synthetic n(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/m;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->y()Lcom/coloros/translate/engine/tts/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/coloros/translate/engine/tts/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/tts/e;->n:Z

    return p0
.end method

.method public static final synthetic p(Lcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->L()V

    return-void
.end method

.method public static final synthetic q(Lcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->M()V

    return-void
.end method

.method public static final synthetic r(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic s(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic t(Lcom/coloros/translate/engine/tts/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e;->h:Z

    return-void
.end method

.method public static final synthetic u(Lcom/coloros/translate/engine/tts/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e;->n:Z

    return-void
.end method

.method public static final synthetic v(Lcom/coloros/translate/engine/tts/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    return-void
.end method

.method public static final synthetic w(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->R(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V

    return-void
.end method

.method private final x()Lcom/coloros/translate/engine/tts/m;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/tts/m;

    return-object p0
.end method

.method private final y()Lcom/coloros/translate/engine/tts/m;
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->B()V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->x()Lcom/coloros/translate/engine/tts/m;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized z()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsClient"

    const-string v2, "initObserver"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->i:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/translate/engine/tts/b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/tts/b;-><init>(Lcom/coloros/translate/engine/tts/e;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/e;->i:Landroidx/lifecycle/b0;

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->i:Landroidx/lifecycle/b0;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coloros/translate/observer/c;->o:Lcom/coloros/translate/observer/c$a;

    invoke-virtual {v1, v0}, Lcom/coloros/translate/observer/c$a;->c(Landroidx/lifecycle/b0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final C()Z
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->D()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/m;->b()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->x()Lcom/coloros/translate/engine/tts/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/m;->b()Z

    move-result p0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public final G(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/tts/q;)V
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttsParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitStreamTtsClient"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playText(),text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    iput-object p3, p0, Lcom/coloros/translate/engine/tts/e;->d:Landroid/os/Bundle;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/k;->TTS_PARAMS_TEXT_EMPTY_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/engine/tts/q;->onStatus(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lcom/coloros/translate/engine/tts/e;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/k;->NO_NETWORK:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/engine/tts/q;->onStatus(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object p3, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    if-nez p3, :cond_7

    monitor-enter p0

    :try_start_0
    sget-object p3, Ln8/r;->Companion:Ln8/r$a;

    iget-object p3, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    if-nez p3, :cond_4

    sget-object p3, Lcom/coloros/translate/engine/tts/n;->d:Lcom/coloros/translate/engine/tts/n$a;

    invoke-virtual {p3}, Lcom/coloros/translate/engine/tts/n$a;->a()Lcom/coloros/translate/engine/tts/n;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p3, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object p4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p3}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    invoke-static {p3}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "AiUnitStreamTtsClient"

    const-string p3, "playText(),mOpusCodecManager error"

    invoke-virtual {p1, p2, p3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/coloros/translate/utils/k;->TTS_PARAMS_TEXT_OPUS_CODEC_LOAD_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {p2}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/coloros/translate/engine/tts/q;->onStatus(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0

    throw p1

    :cond_7
    :goto_5
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/tts/e;->P(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/engine/tts/e;->p:Lcom/coloros/translate/engine/info/TtsParams;

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/coloros/translate/engine/tts/q;->onStart()V

    :cond_8
    iget-boolean p1, p0, Lcom/coloros/translate/engine/tts/e;->h:Z

    const/4 p3, 0x1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->T()V

    :cond_9
    sget-object p1, Lcom/coloros/translate/engine/tts/e;->s:Lcom/coloros/translate/engine/tts/e$a;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/tts/e$a;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean p3, p0, Lcom/coloros/translate/engine/tts/e;->n:Z

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p3, "AiUnitStreamTtsClient"

    const-string p4, "playText(), init success,isNeedTts = true"

    invoke-virtual {p1, p3, p4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->R(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    const/16 p3, 0x1101

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :try_start_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    sget-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    new-instance p4, Lcom/coloros/translate/engine/tts/e$d;

    invoke-direct {p4, p0, p2}, Lcom/coloros/translate/engine/tts/e$d;-><init>(Lcom/coloros/translate/engine/tts/e;Lcom/coloros/translate/engine/info/TtsParams;)V

    invoke-virtual {p1, p4}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getWsTtsInitStatus(Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "AiUnitStreamTtsClient"

    const-string p4, "getWsTtsInitStatus fail"

    invoke-virtual {p1, p2, p4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->j:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->L()V

    :cond_b
    :goto_7
    return-void

    :cond_c
    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coloros/translate/engine/tts/e;->n:Z

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "AiUnitStreamTtsClient"

    const-string p3, "playText(), first connect isNeedTts = true"

    invoke-virtual {p1, p2, p3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->z()V

    sget-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object p2, p0, Lcom/coloros/translate/engine/tts/e;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/coloros/translate/engine/tts/e;->o:Lcom/coloros/translate/engine/tts/e$c;

    invoke-virtual {p1, p2, p3}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->initWsSpeech(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->N()V

    return-void
.end method

.method public final H([BLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/translate/engine/tts/n;->d:Lcom/coloros/translate/engine/tts/n$a;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/n$a;->a()Lcom/coloros/translate/engine/tts/n;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playWithOpusData(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitStreamTtsClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->I([BLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final I([BLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->e:Lcom/coloros/translate/engine/tts/n;

    if-eqz v0, :cond_2

    const-string v1, "pcm"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/coloros/translate/engine/tts/e;->f:Lcom/coloros/translate/utils/v0;

    new-instance v1, Lcom/coloros/translate/engine/tts/c;

    invoke-direct {v1, v0, p1, p0}, Lcom/coloros/translate/engine/tts/c;-><init>(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V

    invoke-virtual {p2, v1}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coloros/translate/engine/tts/e;->f:Lcom/coloros/translate/utils/v0;

    new-instance v1, Lcom/coloros/translate/engine/tts/d;

    invoke-direct {v1, v0, p1, p0}, Lcom/coloros/translate/engine/tts/d;-><init>(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V

    invoke-virtual {p2, v1}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final O(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeakerphoneOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitStreamTtsClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/tts/m;->e(Z)V

    :cond_0
    return-void
.end method

.method public final S()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPlay() isTtsProcessEnd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " voipPlayer:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitStreamTtsClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const-string v1, ""

    iput-object v1, p0, Lcom/coloros/translate/engine/tts/e;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->M()V

    iget-boolean v3, p0, Lcom/coloros/translate/engine/tts/e;->m:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->T()V

    :cond_0
    iput-object v1, p0, Lcom/coloros/translate/engine/tts/e;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e;->f:Lcom/coloros/translate/utils/v0;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/v0;->b()V

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->D()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/coloros/translate/engine/tts/m;->b()Z

    move-result v3

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->x()Lcom/coloros/translate/engine/tts/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/engine/tts/m;->b()Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPlay() isEmpty stop isSpeak "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->c:Lcom/coloros/translate/engine/tts/q;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/q;->onStop()V

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->x()Lcom/coloros/translate/engine/tts/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/m;->h()V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/m;->h()V

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPlay() isSpeak "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/m;->g()V

    :cond_6
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->x()Lcom/coloros/translate/engine/tts/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/m;->h()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e;->x()Lcom/coloros/translate/engine/tts/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/m;->g()V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e;->g:Lcom/coloros/translate/engine/tts/m;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/m;->h()V

    :cond_8
    :goto_1
    return-void
.end method
