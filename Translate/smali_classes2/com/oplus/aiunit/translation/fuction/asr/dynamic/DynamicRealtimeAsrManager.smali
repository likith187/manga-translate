.class public final Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;

.field public static final TAG:Ljava/lang/String; = "DynamicRealtimeAsrManager"

.field private static asrClient:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

.field private static asrMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->asrMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic abandonAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->abandonAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final createAsrController(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;
    .locals 10

    invoke-direct {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAsrController: controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRealtimeAsrManager"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object v1, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v3, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;

    invoke-direct {v3, v1}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getRealtimeAsrClient(Landroid/content/Context;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createAsrController, hashcode: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", asrChannel:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->asrMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    :cond_0
    return-object p0
.end method

.method public static synthetic endAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->endAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final findPkgNameByHelperHashCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->getMBizPkgName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;
    .locals 1

    sget-object p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->asrMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    return-object p0
.end method

.method private final getRealtimeAsrClient(Landroid/content/Context;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;
    .locals 1

    sget-object p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->asrClient:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    if-nez p0, :cond_0

    new-instance p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    const-string v0, "ai_omni"

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->asrClient:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->asrClient:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    return-object p0
.end method

.method public static synthetic initRealtimeAsr$default(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;ILjava/lang/Object;)V
    .locals 11

    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    return-void
.end method

.method private final removeAsrController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->asrMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic sendAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->sendAsrAudio(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final abandonAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "helperHashCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->abandonAsrAudio(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final endAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "helperHashCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->endAsrAudio(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final initOmniPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "helperHashCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->initOmniPlugin()V

    :cond_1
    return-void
.end method

.method public final initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V
    .locals 3

    const-string p0, "language"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetLanguage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "helperHashCode"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DynamicRealtimeAsrManager"

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p5, :cond_1

    const-string p5, ""

    :cond_1
    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRealtimeAsr: mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAsrController: pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", helperHashCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", asrChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;

    invoke-direct {p0, p4, p3, p5, p8}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->createAsrController(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    const-string p2, "initRealtimeAsr error: pkgName is empty."

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final releaseAsr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "helperHashCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->releaseAsr(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->removeAsrController(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendAsrAudio(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    const-string v0, "helperHashCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->sendAsrAudio(Ljava/lang/String;[BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    const-string p0, "cxt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setRecognizeFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "helperHashCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->setRecognizeFeature(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final startRealtimeAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V
    .locals 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    const-string v1, "startRealtimeAsr:"

    const-string v2, "DynamicRealtimeAsrManager"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getWsChannel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRealtimeAsr: hashcode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".hashcode, asrChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getHashcode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrManager;->getAsrController(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not find asr controller, hashcode: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getHashcode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", asrChannel:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrController;->startRealtimeAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V

    :goto_0
    return-void
.end method
