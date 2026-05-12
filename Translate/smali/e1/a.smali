.class public interface abstract Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ai/slp/library/base/exception/a;


# static fields
.field public static final d:Lcom/ai/slp/library/base/exception/d;

.field public static final e:Lcom/ai/slp/library/base/exception/d;

.field public static final f:Lcom/ai/slp/library/base/exception/d;

.field public static final g:Lcom/ai/slp/library/base/exception/d;

.field public static final h:Lcom/ai/slp/library/base/exception/d;

.field public static final i:Lcom/ai/slp/library/base/exception/d;

.field public static final j:Lcom/ai/slp/library/base/exception/d;

.field public static final k:Lcom/ai/slp/library/base/exception/d;

.field public static final l:Lcom/ai/slp/library/base/exception/d;

.field public static final m:Lcom/ai/slp/library/base/exception/d;

.field public static final n:Lcom/ai/slp/library/base/exception/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ai/slp/library/base/exception/c;

    sget-object v1, Lcom/ai/slp/library/base/exception/a;->a:Lcom/ai/slp/library/base/exception/d;

    const-string v2, "00"

    const-string v3, "ERROR_SDK"

    invoke-direct {v0, v1, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le1/a;->d:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "01"

    const-string v3, "ERROR_ASR"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->e:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "02"

    const-string v3, "ERROR_TTS"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->f:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "03"

    const-string v3, "ERROR_VAD"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->g:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "04"

    const-string v3, "ERROR_WAKEUP"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->h:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "05"

    const-string v3, "ERROR_OPUS"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->i:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "06"

    const-string v3, "ERROR_MT"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->j:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "51"

    const-string v3, "ERROR_PERMISSION"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->k:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "52"

    const-string v3, "ERROR_JNI"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->l:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "53"

    const-string v3, "ERROR_AUDIO_RECORD"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->m:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "54"

    const-string v3, "ERROR_AUDIO_PLAY"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le1/a;->n:Lcom/ai/slp/library/base/exception/d;

    return-void
.end method
