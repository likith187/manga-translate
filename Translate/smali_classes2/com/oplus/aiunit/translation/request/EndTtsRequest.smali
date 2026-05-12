.class public final Lcom/oplus/aiunit/translation/request/EndTtsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channel:Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->channel:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->requestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->requestId:Ljava/lang/String;

    return-void
.end method
