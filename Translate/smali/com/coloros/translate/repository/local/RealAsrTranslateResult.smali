.class public final Lcom/coloros/translate/repository/local/RealAsrTranslateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private fromLanguage:Ljava/lang/String;

.field private fromText:Ljava/lang/String;

.field private id:J

.field private isLanguageChange:Z

.field private toLanguage:Ljava/lang/String;

.field private toText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const/16 v8, 0x3f

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "fromText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromLanguage"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguage"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    .line 4
    iput-object p3, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    .line 9
    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, p6

    :goto_4
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    move v6, p7

    :goto_5
    move-wide p1, v0

    move-object p3, v2

    move-object p4, v4

    move-object p5, v5

    move-object p6, v3

    move p7, v6

    invoke-direct/range {p0 .. p7}, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/coloros/translate/repository/local/RealAsrTranslateResult;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/coloros/translate/repository/local/RealAsrTranslateResult;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    goto :goto_5

    :cond_5
    move v7, p7

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/coloros/translate/repository/local/RealAsrTranslateResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    return p0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/coloros/translate/repository/local/RealAsrTranslateResult;
    .locals 8

    const-string p0, "fromText"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "toText"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fromLanguage"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "toLanguage"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;

    iget-wide v3, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    iget-wide v5, p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    iget-boolean p1, p1, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getExportSourceLanguage()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final getExportTargetLanguage()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final getFromLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getFromText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    return-wide v0
.end method

.method public final getToLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getToText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isLanguageChange()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    return p0
.end method

.method public final setFromLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setFromText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    return-void
.end method

.method public final setLanguageChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    return-void
.end method

.method public final setToLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setToText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->id:J

    iget-object v2, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromText:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toText:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->fromLanguage:Ljava/lang/String;

    iget-object v5, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->toLanguage:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/RealAsrTranslateResult;->isLanguageChange:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RealAsrTranslateResult(id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fromText="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", toText="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fromLanguage="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", toLanguage="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isLanguageChange="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
