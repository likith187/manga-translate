.class public final Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder$Companion;

.field public static final EXPAND_APPID:Ljava/lang/String; = "appid"

.field public static final EXPAND_MULTY_TRANLATION_LANGUAGE:Ljava/lang/String; = "mtTargetLanguage"

.field public static final REALTIME_ASR_APPID_CALL:Ljava/lang/String; = "call"

.field public static final REALTIME_ASR_APPID_VOICEBOX:Ljava/lang/String; = "voicebox"


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;->Companion:Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addCustomParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final addCustomParams(Ljava/util/Map;)Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;"
        }
    .end annotation

    const-string v0, "paramMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public final build()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/e;->e()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/e;->b()Lcom/google/gson/d;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;->params:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final setMtTargetLanguage(Ljava/lang/String;)Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;
    .locals 2

    const-string v0, "mtTargetLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/translation/extend/expandparams/AsrSetFeatureExpandBuilder;->params:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
