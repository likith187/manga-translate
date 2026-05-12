.class public final Lcom/oplus/aiunit/translation/model/TextTranslateData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ifSafe:Z

.field private sourceText:Ljava/lang/String;

.field private translateText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "sourceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translateText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/model/TextTranslateData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/translation/model/TextTranslateData;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/oplus/aiunit/translation/model/TextTranslateData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oplus/aiunit/translation/model/TextTranslateData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oplus/aiunit/translation/model/TextTranslateData;
    .locals 0

    const-string p0, "sourceText"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "translateText"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/model/TextTranslateData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    iget-boolean p1, p1, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIfSafe()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    return p0
.end method

.method public final getSourceText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public final getTranslateText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setIfSafe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    return-void
.end method

.method public final setSourceText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    return-void
.end method

.method public final setTranslateText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextTranslateData(sourceText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->sourceText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", translateText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->translateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ifSafe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;->ifSafe:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
