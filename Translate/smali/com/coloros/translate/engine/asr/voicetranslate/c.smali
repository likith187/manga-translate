.class public final Lcom/coloros/translate/engine/asr/voicetranslate/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/asr/voicetranslate/c$a;
    }
.end annotation


# static fields
.field public static final C:Lcom/coloros/translate/engine/asr/voicetranslate/c$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Lx1/p;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/concurrent/atomic/AtomicLong;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Z

.field private p:Lcom/coloros/translate/utils/v0;

.field private q:Lcom/coloros/translate/engine/tts/k;

.field private final r:Ln8/j;

.field private final s:Lw8/a;

.field private final t:Lcom/coloros/translate/engine/asr/voicetranslate/c$c;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Ljava/util/ArrayList;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->C:Lcom/coloros/translate/engine/asr/voicetranslate/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->a:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AsrForTranslateRecord"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    const-string p2, "ourSide"

    iput-object p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->h:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/coloros/translate/utils/v0;

    const-string v1, "asrUpload"

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/v0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->p:Lcom/coloros/translate/utils/v0;

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/c$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$b;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->r:Ln8/j;

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/c$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$d;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->s:Lw8/a;

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->t:Lcom/coloros/translate/engine/asr/voicetranslate/c$c;

    new-instance v0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    invoke-direct {v0, p1}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    const-string p1, "zh"

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->u:Ljava/lang/String;

    const-string p1, "en"

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->v:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->w:Z

    const-string p1, "0.0.0"

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->A:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->B:I

    return-void
.end method

.method private final D(Ljava/lang/String;)V
    .locals 12

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAsr, callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coloros/translate/engine/asr/voicetranslate/h;->INSTANCE:Lcom/coloros/translate/engine/asr/voicetranslate/h;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->u:Ljava/lang/String;

    iget-object v5, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->v:Ljava/lang/String;

    iget v6, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->h:I

    iget-boolean v7, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->w:Z

    iget-boolean v8, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->x:Z

    iget-object v9, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->y:Ljava/util/ArrayList;

    iget-boolean v10, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->z:Z

    iget v11, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->B:I

    invoke-virtual/range {v1 .. v11}, Lcom/coloros/translate/engine/asr/voicetranslate/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/util/ArrayList;ZI)Lcom/oplus/aiunit/translation/request/StartAsrRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->startAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAsr error, callId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/k;->ASR_INIT_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ln8/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1f4

    invoke-static {v0, v4}, Lkotlin/text/r;->W0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[APP_ERROR][START_EXCEPTION]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stackTrace: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result p1

    invoke-direct {p0, v1, p1, v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->y(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final E()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    iget-object v4, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAsrTask initResult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " asrClient:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o:Z

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->D(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move p0, v3

    :goto_2
    xor-int/2addr p0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private final F([B)V
    .locals 5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    const-string v2, "startRecognize init asrTaskStart false"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->p:Lcom/coloros/translate/utils/v0;

    new-instance v3, Lcom/coloros/translate/engine/asr/voicetranslate/b;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/b;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;[BJ)V

    invoke-virtual {v2, v3}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v2, v3, v0, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/i;->g(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c:Lx1/p;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Lx1/p;->onRecordTime(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c:Lx1/p;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1, v0, v1}, Lx1/p;->a([BJ)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecognizeSingleRecord, callId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", seqNum = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", error: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_4
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    const-string v1, "startRecognizeSingleRecord data is null or empty"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/k;->ASR_EMPTY_VOICE:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->y(IILjava/lang/String;)V

    return-void
.end method

.method private static final G(Lcom/coloros/translate/engine/asr/voicetranslate/c;[BJ)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->processAudio(Ljava/lang/String;[BLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final H(Lw8/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/engine/asr/voicetranslate/c;[BJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->G(Lcom/coloros/translate/engine/asr/voicetranslate/c;[BJ)V

    return-void
.end method

.method public static synthetic d(Lw8/a;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->H(Lw8/a;)V

    return-void
.end method

.method public static final synthetic e(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lx1/p;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c:Lx1/p;

    return-object p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lcom/coloros/translate/utils/v0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->p:Lcom/coloros/translate/utils/v0;

    return-object p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lcom/coloros/translate/engine/tts/k;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->q:Lcom/coloros/translate/engine/tts/k;

    return-object p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o:Z

    return p0
.end method

.method public static final synthetic k(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic l(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->u:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic m(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic n(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lw8/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->s:Lw8/a;

    return-object p0
.end method

.method public static final synthetic o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic p(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->d:Z

    return p0
.end method

.method public static final synthetic q(Lcom/coloros/translate/engine/asr/voicetranslate/c;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->x(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic r(Lcom/coloros/translate/engine/asr/voicetranslate/c;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->y(IILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic s(Lcom/coloros/translate/engine/asr/voicetranslate/c;Lcom/coloros/translate/engine/tts/k;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->q:Lcom/coloros/translate/engine/tts/k;

    return-void
.end method

.method public static final synthetic t(Lcom/coloros/translate/engine/asr/voicetranslate/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->E()V

    return-void
.end method

.method private final u()V
    .locals 6

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endAsr, callId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " asrClient:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->endAsr(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endAsr asr,  error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final v()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAsr endAsr, recordOldId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->endAsr(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAsr endAsr asr,  error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o:Z

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f:Ljava/lang/String;

    return-void
.end method

.method private final w()Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->r:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final x(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "VAD_FINAL"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final y(IILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusInner from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/utils/k;->ASR_INIT_SUCCESS:Lcom/coloros/translate/utils/k;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v1

    if-ne p2, v1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    const-string p2, "initAsr success"

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/coloros/translate/utils/k;->ASR_INIT_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    const-string v2, "initAsr failed"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c:Lx1/p;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3}, Lx1/p;->f(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c:Lx1/p;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3}, Lx1/p;->f(IILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final z()V
    .locals 13

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->v()V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->u:Ljava/lang/String;

    iget-object v5, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "realInitAsr callId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", languageFrom = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", languageTo = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " asrClient:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/l;

    invoke-direct {v1}, Lcom/google/gson/l;-><init>()V

    const-string v2, "appVersion"

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->A:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/l;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->u:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->k:Ljava/lang/String;

    iget-object v8, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g:Ljava/lang/String;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/google/gson/i;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->t:Lcom/coloros/translate/engine/asr/voicetranslate/c$c;

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->initAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/k;->ASR_INIT_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ln8/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1f4

    invoke-static {v0, v5}, Lkotlin/text/r;->W0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[APP_ERROR][INIT_EXCEPTION]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exception: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stackTrace: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->y(IILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_PARAMS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_PARAM_INVALID:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_REQBODY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_DATA_ERROR:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_SERVER_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_SERVER_UNKNOWN:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ALGO_NOT_READY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ALGO_NOT_READY:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_REQ_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_REQ_TIMEOUT:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_ALGO:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_INVALID_ALGO:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_REQ_POST:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_REQ_POST:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ALGO_INTERNAL:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_ALGO_INTERNAL:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_TASK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_8

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_INVALID_TASK:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS_RESP:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_9

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_PROCESS_RESP:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DECRYPT_REQ:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_a

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_DECRYPT_REQ:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ENCRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_b

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_ENCRYPT_ACK:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_CONTENT_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_c

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_CONTENT_CHECK:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_CONTENT_SAFE_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_d

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_CONTENT_SAFE_CHECK:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DATA_UPLOAD:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_e

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_DATA_UPLOAD:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_f

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_OTHER:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DECRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_10

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_DECRYPT_ACK:Lcom/coloros/translate/utils/k;

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_11

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_PROCESS:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_11
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_WAIT_FINAL_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_12

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_WAIT_FINAL_TIMEOUT:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_12
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NO_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_13

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_NOT_INIT:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_13
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NET_FAILURE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_14

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_NET_FAILURE:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_14
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NET_DISCONNECT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_15

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_TASK_NET_ERROR:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_15
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_NET_CONNECTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_16

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_NET_CONNECT:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_16
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_17

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_INIT_SUCCESS:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_17
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_ERROR:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_18

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_INIT_ERROR:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_18
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoInternet:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    if-ne p1, v0, :cond_19

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_PLUGIN_ERROR_NO_INTERNET:Lcom/coloros/translate/utils/k;

    goto :goto_0

    :cond_19
    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_OTHER:Lcom/coloros/translate/utils/k;

    :goto_0
    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_ERROR:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v1

    const-string v2, "]"

    const-string v3, ", "

    const-string v4, " in AiUnit, origin: ["

    if-ne p1, v1, :cond_1a

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SDK_ERROR][STATUS_INIT_ERROR]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1a
    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SDK_ERROR]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x2

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    invoke-direct {p0, p2, v0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->y(IILjava/lang/String;)V

    return-void
.end method

.method public final B(Lx1/p;)V
    .locals 3

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c:Lx1/p;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsrCallBack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->d:Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "enableLlm"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->z:Z

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_1

    const-string v3, "OffsetMsgId"

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide v3, v1

    :goto_1
    iget-object v5, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->a:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/i;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v5, v5, v1

    const-wide/16 v6, 0x1

    if-nez v5, :cond_2

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAsr translation clear data died offsetPageId= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    add-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/i;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_2
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/coloros/translate/engine/asr/voicetranslate/i;->g(Landroid/content/Context;Ljava/lang/String;J)V

    if-eqz p2, :cond_3

    const-string p1, "asr_param_smooth_switch"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_3

    :cond_3
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->j:Z

    const-string p1, "com.coloros.translate"

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->k:Ljava/lang/String;

    const-string p1, "zh"

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const-string v2, "asr_param_language_from"

    invoke-virtual {p2, v2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    move-object p1, v2

    :goto_5
    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->u:Ljava/lang/String;

    if-eqz p2, :cond_6

    const-string p1, "asr_param_translate_switch"

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_6

    :cond_6
    move p1, v0

    :goto_6
    iput-boolean p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->w:Z

    if-eqz p2, :cond_7

    const-string p1, "isAutoMaticLanguage"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_7
    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->x:Z

    const-string p1, "en"

    if-eqz p2, :cond_8

    const-string v0, "asr_param_language_to"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v0, v1

    :goto_7
    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    move-object p1, v0

    :goto_8
    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->v:Ljava/lang/String;

    const-string p1, "0.0.0"

    if-eqz p2, :cond_a

    const-string v0, "appVersion"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_a
    move-object v0, v1

    :goto_9
    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    move-object p1, v0

    :goto_a
    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->A:Ljava/lang/String;

    if-eqz p2, :cond_c

    const-string p1, "autoMaticLanguages"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_c
    iput-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->y:Ljava/util/ArrayList;

    const/4 p1, -0x1

    if-eqz p2, :cond_d

    const-string v0, "sceneId"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_d
    iput p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->B:I

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sceneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->q:Lcom/coloros/translate/engine/tts/k;

    if-nez p1, :cond_e

    new-instance p1, Lcom/coloros/translate/engine/tts/k;

    iget-object p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/coloros/translate/engine/tts/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->q:Lcom/coloros/translate/engine/tts/k;

    :cond_e
    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->z()V

    return-void
.end method

.method public b([B[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->F([B)V

    return-void
.end method

.method public destroy()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->abandon(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->releaseAsr(Ljava/lang/String;)V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->p:Lcom/coloros/translate/utils/v0;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/v0;->f()V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c:Lx1/p;

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o:Z

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->t:Lcom/coloros/translate/engine/asr/voicetranslate/c$c;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->c()V

    sget-object v0, Lcom/coloros/translate/observer/c;->o:Lcom/coloros/translate/observer/c$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->w()Landroidx/lifecycle/b0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/c$a;->e(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public stop()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->p:Lcom/coloros/translate/utils/v0;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->s:Lw8/a;

    new-instance v2, Lcom/coloros/translate/engine/asr/voicetranslate/a;

    invoke-direct {v2, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/a;-><init>(Lw8/a;)V

    invoke-virtual {v0, v2}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l:Lcom/oplus/aiunit/translation/RealTimeAsrHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop, callId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " asrClient:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->u()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop asr error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
