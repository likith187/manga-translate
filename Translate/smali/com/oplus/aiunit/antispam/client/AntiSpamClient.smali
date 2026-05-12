.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
.super Lcom/oplus/aisubsystem/core/client/AiClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;,
        Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;,
        Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;
    }
.end annotation


# static fields
.field private static final ANTISPAM_DETECT_NAME:Ljava/lang/String; = "nlp_base_antispam_schedule"

.field private static final ANTISPAM_JSON_RESULT:Ljava/lang/String; = "custom::antispam_json_result"

.field public static final Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;

.field private static final METHOD_CHECK_TEXT:Ljava/lang/String; = "method_check_text"

.field private static final PROCESS_CALLBACK_NAME:Ljava/lang/String; = "antispam_process_callback"

.field private static final SDK_TYPE_AISDK:Ljava/lang/String; = "AISDK"

.field private static final SDK_VERSION_NO:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "AntiSpamClient"


# instance fields
.field private final gson:Lcom/google/gson/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "antiSpamSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nlp_base_antispam_schedule"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/aisubsystem/core/client/AiClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aisubsystem/core/client/AiSettings;)V

    new-instance p1, Lcom/google/gson/d;

    invoke-direct {p1}, Lcom/google/gson/d;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->gson:Lcom/google/gson/d;

    return-void
.end method

.method public static final synthetic access$createInputSlot(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;)Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createOutputSlot(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;)Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAntiSpamFinalResult(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->getAntiSpamFinalResult(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    move-result-object p0

    return-object p0
.end method

.method private static final checkText$lambda$0(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Ln8/h0;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sceneId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->checkTextSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method private final checkTextSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V
    .locals 8

    new-instance v7, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;-><init>(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V

    invoke-virtual {p0, v7}, Lcom/oplus/aisubsystem/core/client/AiClient;->runAction(Lcom/oplus/aisubsystem/core/client/AiClient$a;)Ljava/lang/Object;

    return-void
.end method

.method private final getAntiSpamFinalResult(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->gson:Lcom/google/gson/d;

    const-class v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/d;->m(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;
    :try_end_0
    .catch Lcom/google/gson/q; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AntiSpamClient"

    const-string v0, "getAntiSpamFinalResult"

    invoke-static {p1, v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public static final getClientVersion()I
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;->getClientVersion()I

    move-result v0

    return v0
.end method

.method public static final getDetectName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;->getDetectName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Ln8/h0;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->checkText$lambda$0(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Lx5/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;",
            ")",
            "Lx5/a;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/oplus/aiunit/antispam/client/a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oplus/aiunit/antispam/client/a;-><init>(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V

    invoke-static {v0}, Lx5/d;->a(Ljava/util/function/Supplier;)Lx5/a;

    move-result-object p0

    return-object p0
.end method

.method public final checkText(Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V
    .locals 7

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "toString(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->checkText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Lx5/a;

    return-void
.end method
