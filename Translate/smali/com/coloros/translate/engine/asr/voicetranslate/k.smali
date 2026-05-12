.class public final Lcom/coloros/translate/engine/asr/voicetranslate/k;
.super Lcom/coloros/translate/engine/asr/voicetranslate/g;
.source "SourceFile"

# interfaces
.implements Lx1/i0;
.implements Lz1/a$b;
.implements Lx1/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/asr/voicetranslate/k$a;
    }
.end annotation


# static fields
.field public static final v:Lcom/coloros/translate/engine/asr/voicetranslate/k$a;


# instance fields
.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ly1/b;

.field private l:Lz1/a;

.field private m:Lz1/c;

.field private final n:Ln8/j;

.field private o:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

.field private p:Z

.field private q:Z

.field private r:Lcom/coloros/translate/utils/v0;

.field private s:Z

.field private t:Z

.field private u:Lcom/coloros/translate/engine/asr/audiofile/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->v:Lcom/coloros/translate/engine/asr/voicetranslate/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/g;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoiceTranslateAsrWithRecorderWrapper:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    sget-object p1, Lcom/coloros/translate/engine/asr/voicetranslate/k$d;->INSTANCE:Lcom/coloros/translate/engine/asr/voicetranslate/k$d;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->n:Ln8/j;

    new-instance p1, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-direct {p1}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->o:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->C()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    new-instance p1, Lcom/coloros/translate/utils/v0;

    const-string v0, "asrSaveFile"

    invoke-direct {p1, v0}, Lcom/coloros/translate/utils/v0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->r:Lcom/coloros/translate/utils/v0;

    return-void
.end method

.method private final A(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "asr_param_file_type"

    const-string v1, "mp3"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_param_file_path"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mContext"

    if-nez v1, :cond_1

    iget-object v1, p0, Lx1/a;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v4, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp3"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "asr_param_file_name"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "asr_param_share_audio_package_name"

    invoke-virtual {p1, v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v5, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initAudioFileHelper, audioType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/audiofile/a;->a(Ljava/lang/String;)Lcom/coloros/translate/engine/asr/audiofile/e;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ENCODE_EXCEPTION:Lcom/coloros/translate/utils/k;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1, v0}, Lx1/n;->onResultStatus(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->v(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/coloros/translate/engine/asr/audiofile/e;->a(Landroid/os/Bundle;)V

    invoke-interface {v2, v1, v4}, Lcom/coloros/translate/engine/asr/audiofile/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lx1/a;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v1, v0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/l;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    :cond_4
    :goto_0
    iput-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->u:Lcom/coloros/translate/engine/asr/audiofile/e;

    return-void
.end method

.method private final B()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadStart isPreloadMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->p:Z

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz1/c;->i()V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->c()V

    :cond_1
    return-void
.end method

.method private final C()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareAsrClientBeforeInit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Lx1/a;->c:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Ly1/a;->a(Landroid/content/Context;IZ)Ly1/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lcom/coloros/translate/utils/k;->ASR_NOT_SUPPORT:Lcom/coloros/translate/utils/k;

    invoke-virtual {v3}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lx1/n;->m(IILjava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/coloros/translate/engine/asr/voicetranslate/c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/coloros/translate/engine/asr/voicetranslate/c;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->B(Lx1/p;)V

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    :cond_3
    return-void
.end method

.method private final D()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v2, "releaseRecorder"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz1/a;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lz1/c;->l()V

    :cond_1
    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    return-void
.end method

.method private static final E(Lcom/coloros/translate/engine/asr/voicetranslate/k;[B)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->u:Lcom/coloros/translate/engine/asr/audiofile/e;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/coloros/translate/engine/asr/audiofile/e;->e([B[B)V

    :cond_0
    return-void
.end method

.method private final F()V
    .locals 9

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v2, "startAudioRecorder init manager"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lz1/a;

    invoke-direct {v3, p0}, Lz1/a;-><init>(Lz1/a$b;)V

    iput-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "mic"

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lz1/a;->f(Lz1/a;Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAudioRecorder, recorder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz1/c;->n()V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->c()V

    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/engine/asr/voicetranslate/k;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->E(Lcom/coloros/translate/engine/asr/voicetranslate/k;[B)V

    return-void
.end method

.method public static final synthetic r(Lcom/coloros/translate/engine/asr/voicetranslate/k;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->z(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic s(Lcom/coloros/translate/engine/asr/voicetranslate/k;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->A(Landroid/os/Bundle;)V

    return-void
.end method

.method private final t()Z
    .locals 5

    iget-object v0, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v4, "checkBasicParam, before startRecord, you must setConfig and asrParam"

    invoke-virtual {v0, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_OTHER:Lcom/coloros/translate/utils/k;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    const-string v3, "asr param cannot be null"

    invoke-virtual {p0, v1, v0, v3}, Lx1/n;->m(IILjava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asr_param_call_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->i:Ljava/lang/String;

    iget-object v0, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "isPreload"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v4, "checkBasicParam, before startRecord, you must set callId"

    invoke-virtual {v0, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_OTHER:Lcom/coloros/translate/utils/k;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    const-string v3, "callId cannot be null"

    invoke-virtual {p0, v1, v0, v3}, Lx1/n;->m(IILjava/lang/String;)V

    :cond_5
    return v2
.end method

.method private final u(I)Z
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_NET_CONNECT:Lcom/coloros/translate/utils/k;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_ERROR_DECRYPT_ACK:Lcom/coloros/translate/utils/k;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sget-object v3, Lcom/coloros/translate/utils/k;->ASR_PARAM_INVALID:Lcom/coloros/translate/utils/k;

    invoke-virtual {v3}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v3

    if-eq p1, v3, :cond_3

    sget-object v3, Lcom/coloros/translate/utils/k;->ASR_TASK_NET_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {v3}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v3

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterClearScienceMsgErrorCode code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_7

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    return v1
.end method

.method private final v(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "mp3"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lz1/c;->b:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "param_buffer_size"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz1/c;->e()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "param_sample_rate"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lz1/c;->c()I

    move-result v1

    :cond_2
    const-string p0, "param_channel_count"

    invoke-virtual {p1, p0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private final w()Lz1/g;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->n:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz1/g;

    return-object p0
.end method

.method private final x(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v2, "asr_grant_permission"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string p1, "asr_grant_permission extras == null"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->u:Lcom/coloros/translate/engine/asr/audiofile/e;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1, v1}, Lcom/coloros/translate/engine/asr/audiofile/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-string v3, "asr_param_share_audio_package_name"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "shareResult"

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v7, "mContext"

    if-nez v2, :cond_5

    const-string v2, "asr_param_file_path"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lx1/a;->c:Landroid/content/Context;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "asr_param_call_id"

    iget-object v8, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->i:Ljava/lang/String;

    invoke-virtual {p1, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "asr_param_file_name"

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v1, "asr_grant_permission shareFile2"

    invoke-virtual {v0, p1, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lx1/a;->c:Landroid/content/Context;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1, v2, v3}, Lcom/coloros/translate/engine/asr/voicetranslate/l;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez p1, :cond_6

    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v6

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asr_grant_permission uriResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_7

    const-string v0, "shareResultFile"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    move v6, v1

    :cond_8
    invoke-virtual {p0, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string p1, "asr_grant_permission packageName null"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private final y()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final z(Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAsrClientIfNecessary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->C()V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    instance-of v1, v0, Lcom/coloros/translate/engine/asr/voicetranslate/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coloros/translate/engine/asr/voicetranslate/c;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->B(Lx1/p;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    instance-of v1, v0, Lcom/coloros/translate/engine/asr/voicetranslate/c;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/coloros/translate/engine/asr/voicetranslate/c;

    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    invoke-virtual {v2, v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->C(Z)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->i:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    invoke-interface {v0, v1, p1}, Ly1/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->n()V

    return-void
.end method


# virtual methods
.method public a([BJ)V
    .locals 0

    const-string p2, "data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->s:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->r:Lcom/coloros/translate/utils/v0;

    new-instance p3, Lcom/coloros/translate/engine/asr/voicetranslate/j;

    invoke-direct {p3, p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/j;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/k;[B)V

    invoke-virtual {p2, p3}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v2, "onPost"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lx1/n;->onStop()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v2, "onPre"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lx1/n;->onStart()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->j:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveResult needAsr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->o:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->e()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop audioRecorder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->stopAudioFile()V

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->D()V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ly1/b;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->r:Lcom/coloros/translate/utils/v0;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/v0;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->u:Lcom/coloros/translate/engine/asr/audiofile/e;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/coloros/translate/engine/asr/audiofile/e;->destroy()V

    :cond_1
    iput-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->u:Lcom/coloros/translate/engine/asr/audiofile/e;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->p()V

    return-void
.end method

.method public e(Lz1/c;)V
    .locals 2

    if-nez p1, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v1, "onAudioRecorderCreated null"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/k;->ASR_CREATE_RECORDER_ERROR:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lx1/n;->m(IILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-nez v0, :cond_2

    invoke-virtual {p1, p0}, Lz1/c;->o(Lx1/i0;)V

    invoke-virtual {p1}, Lz1/c;->j()V

    invoke-virtual {p1}, Lz1/c;->p()V

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->w()Lz1/g;

    move-result-object v0

    iget v1, p1, Lz1/c;->b:I

    invoke-virtual {v0, v1}, Lz1/g;->b(I)V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    :cond_2
    return-void
.end method

.method public f(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->u(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lx1/n;->m(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g([B[B)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->w()Lz1/g;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->p:Z

    invoke-virtual {v0, p1, p2, v1}, Lz1/g;->a([B[BZ)Ln8/q;

    move-result-object p1

    iget-boolean p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->j:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-interface {p0, p2, p1}, Ly1/b;->b([B[B)V

    :cond_0
    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "invokeMethod = "

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    const-string v2, "grantPermission"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p3}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->x(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    const-string v2, "clear_translation_cache_file"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", delete file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p2, "asr_param_call_id"

    invoke-virtual {p3, p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    const-string p3, "mContext"

    if-nez p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lx1/a;->c:Landroid/content/Context;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->i:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/coloros/translate/engine/asr/voicetranslate/l;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lx1/a;->c:Landroid/content/Context;

    invoke-static {v2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/coloros/translate/engine/asr/voicetranslate/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1

    :cond_3
    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1, p2, p3}, Ly1/b;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-object v1

    :goto_1
    sget-object p3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public o()V
    .locals 0

    invoke-super {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->o()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->stopAsr()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->destroy()V

    return-void
.end method

.method public onRecordTime(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lx1/n;->onRecordTime(J)V

    :cond_0
    return-void
.end method

.method public onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 1

    const-string v0, "asrResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->n()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lx1/n;->onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V

    :cond_0
    return-void
.end method

.method public onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 1

    const-string v0, "asrTranslateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->n()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lx1/n;->onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V

    :cond_0
    return-void
.end method

.method public onVoiceVolume(D)V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lx1/n;->onVoiceVolume(D)V

    :cond_0
    return-void
.end method

.method public pauseRecord()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseRecord audioRecorder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz1/c;->i()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->p:Z

    invoke-super {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->pauseRecord()V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->b()V

    :cond_1
    return-void
.end method

.method public resumeRecord()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeRecord audioRecorder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->F()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->p:Z

    invoke-super {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->resumeRecord()V

    return-void
.end method

.method public saveAudioFile(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "isNeedSaveAudioDataBeforeAsr"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->t:Z

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->s:Z

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/k$b;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/k$b;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/k;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    if-eqz p0, :cond_2

    const-string p1, "saveFile-"

    invoke-virtual {p0, p1, v0}, Lz1/a;->a(Ljava/lang/String;Lw8/a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startAsr(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->j:Z

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/k$c;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/k$c;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/k;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    if-eqz p0, :cond_1

    const-string p1, "asr"

    invoke-virtual {p0, p1, v0}, Lz1/a;->a(Ljava/lang/String;Lw8/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startRecord()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecord audioRecorder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lx1/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/coloros/translate/utils/k;->NO_NETWORK:Lcom/coloros/translate/utils/k;

    invoke-virtual {v2}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3, v2}, Lx1/n;->m(IILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v1, "startRecord no net"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->t()Z

    invoke-super {p0}, Lx1/a;->startRecord()V

    iget-object v1, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    const-string v1, "before startRecord, you must setConfig"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    iget-boolean v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isPreloadMode:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->B()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->F()V

    :goto_0
    iget-object v0, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asr_param_language_from"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asr_param_language_to"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->startAsr(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->p:Z

    return-void
.end method

.method public stop()V
    .locals 5

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->m:Lz1/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop audioRecorder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->stopAsr()V

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->D()V

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

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopAsr()V
    .locals 4

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->o:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->j:Z

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    if-eqz v0, :cond_0

    const-string v1, "asr"

    invoke-virtual {v0, v1}, Lz1/a;->g(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->k:Ly1/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ly1/b;->stop()V

    :cond_1
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

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

    if-eqz v0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAsr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public stopAudioFile()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->s:Z

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->t:Z

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->l:Lz1/a;

    if-eqz v0, :cond_0

    const-string v1, "saveFile-"

    invoke-virtual {v0, v1}, Lz1/a;->g(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->u:Lcom/coloros/translate/engine/asr/audiofile/e;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coloros/translate/engine/asr/audiofile/e;->d()V

    :cond_1
    return-void
.end method

.method public useBluetoothMic(Z)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useBluetoothMic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->o:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->h()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k;->o:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->i()V

    :goto_0
    return-void
.end method
