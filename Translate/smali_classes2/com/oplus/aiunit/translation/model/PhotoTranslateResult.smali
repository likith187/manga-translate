.class public final Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private algorithmModel:Ljava/lang/Integer;

.field private angle:D

.field private from:Ljava/lang/String;

.field private renderImage:Ljava/lang/String;

.field private to:Ljava/lang/String;

.field private translate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;-><init>(DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    return-void
.end method

.method public synthetic constructor <init>(DILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;-><init>(D)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;DILjava/lang/Object;)Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->copy(D)Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    return-wide v0
.end method

.method public final copy(D)Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;
    .locals 0

    new-instance p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;-><init>(D)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;

    iget-wide v3, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    iget-wide p0, p1, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAlgorithmModel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->algorithmModel:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getAngle()D
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    return-wide v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->from:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->renderImage:Ljava/lang/String;

    return-object p0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->to:Ljava/lang/String;

    return-object p0
.end method

.method public final getTranslate()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->translate:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    return p0
.end method

.method public final setAlgorithmModel(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->algorithmModel:Ljava/lang/Integer;

    return-void
.end method

.method public final setAngle(D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    return-void
.end method

.method public final setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->from:Ljava/lang/String;

    return-void
.end method

.method public final setRenderImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->renderImage:Ljava/lang/String;

    return-void
.end method

.method public final setTo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->to:Ljava/lang/String;

    return-void
.end method

.method public final setTranslate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->translate:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoTranslateResult(angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->angle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
