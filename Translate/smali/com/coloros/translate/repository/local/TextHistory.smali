.class public final Lcom/coloros/translate/repository/local/TextHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/local/TextHistory$a;
    }
.end annotation


# static fields
.field public static final AI_RESULT:Ljava/lang/String; = "ai"

.field public static final Companion:Lcom/coloros/translate/repository/local/TextHistory$a;

.field public static final TABLE_NAME:Ljava/lang/String; = "text_history"


# instance fields
.field private expandField1:Ljava/lang/String;

.field private expandField2:Ljava/lang/String;

.field private expandField3:Ljava/lang/String;

.field private globalId:Ljava/lang/String;

.field private id:J

.field private oriContent:Ljava/lang/String;

.field private oriLanguageCode:Ljava/lang/String;

.field private resultContent:Ljava/lang/String;

.field private resultLanguageCode:Ljava/lang/String;

.field private state:I

.field private timestamp:J

.field private type:I

.field private updateTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/local/TextHistory$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/local/TextHistory$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/local/TextHistory;->Companion:Lcom/coloros/translate/repository/local/TextHistory$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "oriContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oriLanguageCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultContent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultLanguageCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField1"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField2"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField3"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalId"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    iput-wide p5, p0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    iput p7, p0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    iput-object p8, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    iput-object p9, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    iput-object p10, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    iput-object p11, p0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    iput p12, p0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    iput-wide p13, p0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/coloros/translate/repository/local/TextHistory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/coloros/translate/repository/local/TextHistory;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-wide v14, v0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p13

    :goto_b
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-wide/from16 p13, v14

    invoke-virtual/range {p0 .. p14}, Lcom/coloros/translate/repository/local/TextHistory;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/coloros/translate/repository/local/TextHistory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    return p0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    return-wide v0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/coloros/translate/repository/local/TextHistory;
    .locals 16

    const-string v0, "oriContent"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oriLanguageCode"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultContent"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultLanguageCode"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField1"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField2"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandField3"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalId"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/repository/local/TextHistory;

    move-object v1, v0

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v13, p12

    move-wide/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/coloros/translate/repository/local/TextHistory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coloros/translate/repository/local/TextHistory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coloros/translate/repository/local/TextHistory;

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    iget-wide v5, p1, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    iget v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    iget v3, p1, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    iget-wide p0, p1, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getExpandField1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpandField2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpandField3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    return-object p0
.end method

.method public final getGlobalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/TextHistory;->id:J

    return-wide v0
.end method

.method public final getOriContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriLanguageCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getResultContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    return-object p0
.end method

.method public final getResultLanguageCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    return p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    return-wide v0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    return p0
.end method

.method public final getUpdateTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setExpandField1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    return-void
.end method

.method public final setExpandField2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    return-void
.end method

.method public final setExpandField3(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    return-void
.end method

.method public final setGlobalId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->id:J

    return-void
.end method

.method public final setOriContent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    return-void
.end method

.method public final setOriLanguageCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public final setResultContent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    return-void
.end method

.method public final setResultLanguageCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    return-void
.end method

.method public final setUpdateTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/repository/local/TextHistory;->oriLanguageCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/repository/local/TextHistory;->resultLanguageCode:Ljava/lang/String;

    iget-wide v4, p0, Lcom/coloros/translate/repository/local/TextHistory;->timestamp:J

    iget v6, p0, Lcom/coloros/translate/repository/local/TextHistory;->state:I

    iget-object v7, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField1:Ljava/lang/String;

    iget-object v8, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField2:Ljava/lang/String;

    iget-object v9, p0, Lcom/coloros/translate/repository/local/TextHistory;->expandField3:Ljava/lang/String;

    iget-object v10, p0, Lcom/coloros/translate/repository/local/TextHistory;->globalId:Ljava/lang/String;

    iget v11, p0, Lcom/coloros/translate/repository/local/TextHistory;->type:I

    iget-wide v12, p0, Lcom/coloros/translate/repository/local/TextHistory;->updateTimestamp:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TextHistory(oriContent="

    invoke-virtual {p0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", oriLanguageCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resultContent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resultLanguageCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expandField1="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expandField2="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expandField3="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", globalId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updateTimestamp="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
