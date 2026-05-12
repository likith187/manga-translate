.class public final Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final imageBytes:Ljava/lang/String;

.field private final imageModel:I

.field private final requestId:Ljava/lang/String;

.field private final sourceLanguage:Ljava/lang/String;

.field private final targetLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLanguage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageBytes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    iput p4, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    iput-object p5, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;
    .locals 6

    const-string p0, "requestId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetLanguage"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "imageBytes"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    iget v3, p1, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getImageBytes()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    return-object p0
.end method

.method public final getImageModel()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    return p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->sourceLanguage:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->targetLanguage:Ljava/lang/String;

    iget v3, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageModel:I

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->imageBytes:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenTranslateRequest(requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sourceLanguage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", targetLanguage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", imageModel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", imageBytes="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
