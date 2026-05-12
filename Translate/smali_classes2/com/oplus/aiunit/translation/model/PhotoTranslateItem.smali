.class public final Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private angle:Ljava/lang/Float;

.field private backgroundColor:[I

.field private coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field private paragraphCoordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field private paragraphNo:I

.field private polygon_curve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field private sourceText:Ljava/lang/String;

.field private tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:[I

.field private translateText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    .line 3
    const-string v0, ""

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;
    .locals 0

    new-instance p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAngle()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->angle:Ljava/lang/Float;

    return-object p0
.end method

.method public final getBackgroundColor()[I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->backgroundColor:[I

    return-object p0
.end method

.method public final getCoordinates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->coordinates:Ljava/util/List;

    return-object p0
.end method

.method public final getParagraphCoordinates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->paragraphCoordinates:Ljava/util/List;

    return-object p0
.end method

.method public final getParagraphNo()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->paragraphNo:I

    return p0
.end method

.method public final getPolygon_curve()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->polygon_curve:Ljava/util/List;

    return-object p0
.end method

.method public final getSourceText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public final getTables()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->tables:Ljava/util/List;

    return-object p0
.end method

.method public final getTextColor()[I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->textColor:[I

    return-object p0
.end method

.method public final getTranslateText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAngle(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->angle:Ljava/lang/Float;

    return-void
.end method

.method public final setBackgroundColor([I)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->backgroundColor:[I

    return-void
.end method

.method public final setCoordinates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->coordinates:Ljava/util/List;

    return-void
.end method

.method public final setParagraphCoordinates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->paragraphCoordinates:Ljava/util/List;

    return-void
.end method

.method public final setParagraphNo(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->paragraphNo:I

    return-void
.end method

.method public final setPolygon_curve(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/Coordinates;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->polygon_curve:Ljava/util/List;

    return-void
.end method

.method public final setSourceText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    return-void
.end method

.method public final setTables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->tables:Ljava/util/List;

    return-void
.end method

.method public final setTextColor([I)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->textColor:[I

    return-void
.end method

.method public final setTranslateText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoTranslateItem(sourceText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->sourceText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", translateText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->translateText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
