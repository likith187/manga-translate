.class public final Lcom/oplus/aiunit/translation/utils/InitStateSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INIT_FINISH_KEY:I = 0x1

.field public static final INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

.field public static final NOT_INIT_SDK_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InitStateSingleton"

.field private static mPackageName:Ljava/lang/String;

.field private static mSdkVersion:Ljava/lang/String;

.field private static mSpeechHasInit:I

.field private static mSpeechInitJson:Ljava/lang/String;

.field private static mTranslateHasInit:I

.field private static mTranslateInitJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    const-string v0, ""

    sput-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mTranslateInitJson:Ljava/lang/String;

    sput-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mSpeechInitJson:Ljava/lang/String;

    sput-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mPackageName:Ljava/lang/String;

    const-string v0, "1.4.6"

    sput-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mSdkVersion:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpeechInitJson()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mSpeechInitJson:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpeechInitState()I
    .locals 0

    sget p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mSpeechHasInit:I

    return p0
.end method

.method public final getTranslateInitJson()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mTranslateInitJson:Ljava/lang/String;

    return-object p0
.end method

.method public final getTranslateInitState()I
    .locals 0

    sget p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mTranslateHasInit:I

    return p0
.end method

.method public final setForcePackageName(Ljava/lang/String;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mPackageName:Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    sput-object p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setSpeechInitJson(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mSpeechInitJson:Ljava/lang/String;

    return-void
.end method

.method public final setSpeechInitState(I)V
    .locals 2

    sget-object p0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeechInitState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitStateSingleton"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mSpeechHasInit:I

    return-void
.end method

.method public final setTranslateInitJson(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mTranslateInitJson:Ljava/lang/String;

    return-void
.end method

.method public final setTranslateInitState(I)V
    .locals 2

    sget-object p0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTranslateInitState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitStateSingleton"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->mTranslateHasInit:I

    return-void
.end method
