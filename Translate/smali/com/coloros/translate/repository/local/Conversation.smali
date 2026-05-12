.class public final Lcom/coloros/translate/repository/local/Conversation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private expandField1:Ljava/lang/String;

.field private expandField2:Ljava/lang/String;

.field private expandField3:Ljava/lang/String;

.field private fromLanguage:Ljava/lang/String;

.field private fromText:Ljava/lang/String;

.field private id:J

.field private isLeft:Z

.field private isRecognizeing:Z

.field private isShowAnima:Z

.field private isShowEditIcon:Z

.field private isTranslated:Z

.field private state:I

.field private timestamp:J

.field private toLanguage:Ljava/lang/String;

.field private toText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x700

    const/4 v15, 0x0

    const-wide/16 v1, 0x0

    .line 17
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/coloros/translate/repository/local/Conversation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fromText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromLanguage"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguage"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField1"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField2"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField3"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    .line 3
    iput-object p3, p0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    .line 7
    iput-wide p7, p0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    .line 8
    iput p9, p0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    .line 9
    iput-boolean p10, p0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    .line 10
    iput-object p11, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    .line 11
    iput-object p12, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    .line 12
    iput-object p13, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 13
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p1

    :goto_1
    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/coloros/translate/repository/local/Conversation;->isTranslated:Z

    .line 14
    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/Conversation;->isShowAnima:Z

    .line 15
    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/Conversation;->isShowEditIcon:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    .line 16
    const-string v6, ""

    if-eqz v1, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    move-object/from16 v1, p3

    :goto_1
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_3

    move-object v8, v6

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    move-object v9, v6

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v2, p7

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    move-object v12, v6

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    move-object v13, v6

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v6, p13

    :goto_a
    move-wide p1, v4

    move-object/from16 p3, v1

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-wide/from16 p7, v2

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v6

    invoke-direct/range {p0 .. p13}, Lcom/coloros/translate/repository/local/Conversation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/coloros/translate/repository/local/Conversation;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/coloros/translate/repository/local/Conversation;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-boolean v11, v0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p13

    :goto_a
    move-wide p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/coloros/translate/repository/local/Conversation;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    return-wide v0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    return p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    return p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/translate/repository/local/Conversation;
    .locals 15

    const-string v0, "fromText"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toText"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromLanguage"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguage"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField1"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField2"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField3"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/repository/local/Conversation;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v14}, Lcom/coloros/translate/repository/local/Conversation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coloros/translate/repository/local/Conversation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    iget-wide v3, p0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    iget-wide v5, p1, Lcom/coloros/translate/repository/local/Conversation;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    iget-wide v5, p1, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    iget v3, p1, Lcom/coloros/translate/repository/local/Conversation;->state:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    iget-boolean v3, p1, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getExpandField1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpandField2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpandField3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    return-object p0
.end method

.method public final getFromLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getFromText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    return p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    return-wide v0
.end method

.method public final getToLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getToText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    return p0
.end method

.method public final isRecognizeing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing:Z

    return p0
.end method

.method public final isShowAnima()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/Conversation;->isShowAnima:Z

    return p0
.end method

.method public final isShowEditIcon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/Conversation;->isShowEditIcon:Z

    return p0
.end method

.method public final isTranslated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/local/Conversation;->isTranslated:Z

    return p0
.end method

.method public final setExpandField1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    return-void
.end method

.method public final setExpandField2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    return-void
.end method

.method public final setExpandField3(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    return-void
.end method

.method public final setFromLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setFromText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    return-void
.end method

.method public final setLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    return-void
.end method

.method public final setRecognizeing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing:Z

    return-void
.end method

.method public final setShowAnima(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/Conversation;->isShowAnima:Z

    return-void
.end method

.method public final setShowEditIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/Conversation;->isShowEditIcon:Z

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    return-void
.end method

.method public final setToLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setToText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    return-void
.end method

.method public final setTranslated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/local/Conversation;->isTranslated:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/Conversation;->id:J

    iget-object v2, p0, Lcom/coloros/translate/repository/local/Conversation;->fromText:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/repository/local/Conversation;->toText:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/repository/local/Conversation;->fromLanguage:Ljava/lang/String;

    iget-object v5, p0, Lcom/coloros/translate/repository/local/Conversation;->toLanguage:Ljava/lang/String;

    iget-wide v6, p0, Lcom/coloros/translate/repository/local/Conversation;->timestamp:J

    iget v8, p0, Lcom/coloros/translate/repository/local/Conversation;->state:I

    iget-boolean v9, p0, Lcom/coloros/translate/repository/local/Conversation;->isLeft:Z

    iget-object v10, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField1:Ljava/lang/String;

    iget-object v11, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField2:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/repository/local/Conversation;->expandField3:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Conversation(id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fromText="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", toText="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fromLanguage="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", toLanguage="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isLeft="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", expandField1="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expandField2="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expandField3="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
