.class public final Lcom/oplus/aiunit/translation/request/WsTtsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channel:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private speedGrade:Ljava/lang/String;

.field private voiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->channel:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->voiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->speedGrade:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->format:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpeedGrade()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->speedGrade:Ljava/lang/String;

    return-object p0
.end method

.method public final getVoiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->voiceName:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->content:Ljava/lang/String;

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->format:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->language:Ljava/lang/String;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setSpeedGrade(Ljava/lang/String;)V
    .locals 1

    const-string v0, "speedGrade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->speedGrade:Ljava/lang/String;

    return-void
.end method

.method public final setVoiceName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/WsTtsRequest;->voiceName:Ljava/lang/String;

    return-void
.end method
