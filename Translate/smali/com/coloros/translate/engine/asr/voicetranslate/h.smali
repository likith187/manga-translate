.class public final Lcom/coloros/translate/engine/asr/voicetranslate/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/asr/voicetranslate/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/h;

    invoke-direct {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/h;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/asr/voicetranslate/h;->INSTANCE:Lcom/coloros/translate/engine/asr/voicetranslate/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/util/ArrayList;ZI)Lcom/oplus/aiunit/translation/request/StartAsrRequest;
    .locals 0

    const-string p0, "channel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "languageFrom"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "languageTo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;-><init>()V

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setWsChannel(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setRecordId(Ljava/lang/String;)V

    const-string p1, "opus"

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setFormat(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setAsrAudioTrack(I)V

    invoke-virtual {p0, p6}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setEnableMt(Z)V

    invoke-virtual {p0, p3}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setSrcLanguage(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setTargetLanguage(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setEnableTts(Z)V

    invoke-virtual {p0, p7}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setEnableLid(Z)V

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setSceneId(Ljava/lang/Integer;)V

    if-eqz p7, :cond_1

    if-nez p8, :cond_0

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p8

    :cond_0
    invoke-virtual {p0, p8}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setSourceLanguages(Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {p0, p9}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setEnableLLM(Z)V

    invoke-virtual {p0, p5}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setAsrAudioTrack(I)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->toJson()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startAsrRequest:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AsrForTranslateRecord"

    invoke-virtual {p1, p3, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
