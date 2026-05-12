.class public final Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appId:Ljava/lang/String;

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

.field private requestId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->appId:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->extend:Ljava/util/Map;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->target:Ljava/lang/String;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->appId:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->extend:Ljava/util/Map;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->source:Ljava/lang/String;

    return-void
.end method

.method public final setTarget(Ljava/lang/String;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->target:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->text:Ljava/lang/String;

    return-void
.end method
