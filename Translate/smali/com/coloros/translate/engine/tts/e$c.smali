.class public final Lcom/coloros/translate/engine/tts/e$c;
.super Lcom/coloros/translate/engine/tts/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/tts/e;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/coloros/translate/engine/tts/e;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/tts/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/o;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e$c;->f(Lcom/coloros/translate/engine/tts/e;)V

    return-void
.end method

.method private static final f(Lcom/coloros/translate/engine/tts/e;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->n(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/m;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/translate/engine/tts/m$a;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->m(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/q;

    move-result-object p0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, p0, v3}, Lcom/coloros/translate/engine/tts/m$a;-><init>([BLcom/coloros/translate/engine/tts/q;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/tts/m;->d(Lcom/coloros/translate/engine/tts/m$a;)V

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
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudio(), pcm ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AiUnitStreamTtsClient"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->e(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AiUnitStreamTtsClient"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "onAudio(), reject"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudio(), requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frameNo="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->j(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/n;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "onAudio(), mOpusCodecManager null"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->h(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/info/TtsParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/TtsParams;->d()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {p4}, Lw9/a;->n(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->h(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/info/TtsParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/TtsParams;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/tts/e;->I([BLjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;)V
    .locals 7

    const-string v0, "rsp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {p1}, Lcom/coloros/translate/utils/b0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitStreamTtsClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TTS_END_ASK"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->getCode()I

    move-result v1

    const/16 v3, 0x3ea

    if-ne v1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->getCode()I

    move-result v1

    const v3, 0x187cd

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->o(Lcom/coloros/translate/engine/tts/e;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse(),network success isNeedTts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1, v5}, Lcom/coloros/translate/engine/tts/e;->t(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->o(Lcom/coloros/translate/engine/tts/e;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1, v4}, Lcom/coloros/translate/engine/tts/e;->u(Lcom/coloros/translate/engine/tts/e;Z)V

    const-string p1, "onResponse playText() network reconnect"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->h(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/info/TtsParams;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/coloros/translate/engine/tts/e;->w(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->getCode()I

    move-result v1

    const v3, 0x18709

    if-ne v1, v3, :cond_6

    iget-boolean p1, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse(),network disconnect isAudioTtsFinish:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1, v5}, Lcom/coloros/translate/engine/tts/e;->v(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->g(Lcom/coloros/translate/engine/tts/e;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/tts/e;->S()V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->m(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/q;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Lcom/coloros/translate/utils/k;->TTS_PARAMS_TEXT_INTERRUPT_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/engine/tts/q;->onStatus(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    iput-boolean v5, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1, v5}, Lcom/coloros/translate/engine/tts/e;->v(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->g(Lcom/coloros/translate/engine/tts/e;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const-string p0, "onResponse(),network disconnect reject"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->getCode()I

    move-result v3

    const v6, 0x187cf

    if-ne v3, v6, :cond_7

    move v3, v5

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    invoke-static {v1, v3}, Lcom/coloros/translate/engine/tts/e;->t(Lcom/coloros/translate/engine/tts/e;Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->getCode()I

    move-result v1

    if-ne v1, v6, :cond_8

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->o(Lcom/coloros/translate/engine/tts/e;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1, v4}, Lcom/coloros/translate/engine/tts/e;->u(Lcom/coloros/translate/engine/tts/e;Z)V

    const-string p1, "onResponse playText() init"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->h(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/info/TtsParams;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/coloros/translate/engine/tts/e;->w(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v1}, Lcom/coloros/translate/engine/tts/e;->o(Lcom/coloros/translate/engine/tts/e;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v1, v4}, Lcom/coloros/translate/engine/tts/e;->u(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/coloros/translate/engine/tts/e;->r(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v1, v3}, Lcom/coloros/translate/engine/tts/e;->s(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;)V

    :cond_9
    const-string v1, "onResponse(),fail "

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->g(Lcom/coloros/translate/engine/tts/e;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0, v5}, Lcom/coloros/translate/engine/tts/e;->v(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->m(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/q;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/q;->onStop()V

    :cond_a
    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->m(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/tts/q;

    move-result-object p0

    if-eqz p0, :cond_b

    sget-object v0, Lcom/coloros/translate/utils/k;->TTS_NETWORK_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/engine/tts/q;->onStatus(ILjava/lang/String;)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    :goto_4
    const-string p0, "onResponse(), channel reject"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->e(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AiUnitStreamTtsClient"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "onTtsEndEx(), reject"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v2, v0}, Lcom/coloros/translate/engine/tts/e;->v(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->g(Lcom/coloros/translate/engine/tts/e;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/translate/engine/tts/e;->s(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->o(Lcom/coloros/translate/engine/tts/e;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "onTtsEnd(), continue next tts"

    invoke-virtual {p1, v1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->h(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/engine/info/TtsParams;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/coloros/translate/engine/tts/e;->w(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V

    return-void

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTtsEnd(), requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " dataType="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->l(Lcom/coloros/translate/engine/tts/e;)Lcom/coloros/translate/utils/v0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    new-instance p2, Lcom/coloros/translate/engine/tts/f;

    invoke-direct {p2, p0}, Lcom/coloros/translate/engine/tts/f;-><init>(Lcom/coloros/translate/engine/tts/e;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtsStart(), requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " dataType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AiUnitStreamTtsClient"

    invoke-virtual {v0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/e$c;->a:Z

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v1, p1}, Lcom/coloros/translate/engine/tts/e;->v(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v1, p1}, Lcom/coloros/translate/engine/tts/e;->u(Lcom/coloros/translate/engine/tts/e;Z)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->q(Lcom/coloros/translate/engine/tts/e;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$c;->b:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "onTtsStart(), currentText empty stop"

    invoke-virtual {v0, p2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
