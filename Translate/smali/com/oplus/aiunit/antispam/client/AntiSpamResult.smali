.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private final hits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/antispam/client/Hits;",
            ">;"
        }
    .end annotation
.end field

.field private final isSample:Ljava/lang/Boolean;

.field private final msg:Ljava/lang/String;

.field private final rate:Ljava/lang/Float;

.field private final sceneId:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/antispam/client/Hits;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    iput-object p6, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    iput-object p7, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    iput-object p8, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/antispam/client/AntiSpamResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/antispam/client/Hits;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/antispam/client/Hits;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/oplus/aiunit/antispam/client/AntiSpamResult;"
        }
    .end annotation

    new-instance v9, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final getHits()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/antispam/client/Hits;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    return-object p0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public final getRate()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSample()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AntiSpamResult(content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->rate:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->hits:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->isSample:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
