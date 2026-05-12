.class public final Lcom/oplus/aiunit/translation/request/TextTranslateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appId:Ljava/lang/String;

.field private enableLLM:Z

.field private extend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private region:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->target:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->region:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtend()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->extend:Ljava/util/Map;

    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->target:Ljava/lang/String;

    return-object p0
.end method

.method public final getText()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->text:Ljava/util/List;

    return-object p0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setEnableLLM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->enableLLM:Z

    return-void
.end method

.method public final setExtend(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->extend:Ljava/util/Map;

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->region:Ljava/lang/String;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->source:Ljava/lang/String;

    return-void
.end method

.method public final setTarget(Ljava/lang/String;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->target:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->text:Ljava/util/List;

    return-void
.end method
