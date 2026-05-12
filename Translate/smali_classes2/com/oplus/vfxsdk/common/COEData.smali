.class public final Lcom/oplus/vfxsdk/common/COEData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private animParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;"
        }
    .end annotation
.end field

.field private cT:J

.field private cV:J

.field private expressions:Lcom/oplus/vfxsdk/common/k;

.field private layers:[Lcom/oplus/vfxsdk/common/Layer;

.field private mV:I

.field private name:Ljava/lang/String;

.field private v:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJJ[",
            "Lcom/oplus/vfxsdk/common/Layer;",
            "Lcom/oplus/vfxsdk/common/k;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layers"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressions"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    .line 4
    iput p3, p0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    .line 5
    iput-wide p4, p0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    .line 6
    iput-wide p6, p0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    .line 7
    iput-object p8, p0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    .line 8
    iput-object p9, p0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    .line 9
    iput-object p10, p0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    .line 10
    const-string v0, ""

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p11, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v5, v0

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    move-wide v7, v0

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    move-object v1, p0

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 11
    invoke-direct/range {v1 .. v11}, Lcom/oplus/vfxsdk/common/COEData;-><init>(Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/COEData;Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/COEData;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    goto :goto_3

    :cond_3
    move-wide v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p10

    :goto_7
    move-object p1, v2

    move p2, v3

    move p3, v4

    move-wide p4, v5

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/oplus/vfxsdk/common/COEData;->copy(Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;)Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    return p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    return-wide v0
.end method

.method public final component6()[Lcom/oplus/vfxsdk/common/Layer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    return-object p0
.end method

.method public final component7()Lcom/oplus/vfxsdk/common/k;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    return-object p0
.end method

.method public final component8()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;)Lcom/oplus/vfxsdk/common/COEData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJJ[",
            "Lcom/oplus/vfxsdk/common/Layer;",
            "Lcom/oplus/vfxsdk/common/k;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;)",
            "Lcom/oplus/vfxsdk/common/COEData;"
        }
    .end annotation

    const-string v0, "name"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layers"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressions"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/COEData;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/oplus/vfxsdk/common/COEData;-><init>(Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/COEData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/COEData;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/COEData;->v:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    iget-wide v5, p1, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    iget-wide v5, p1, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAnimParams()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getCT()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    return-wide v0
.end method

.method public final getCV()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    return-wide v0
.end method

.method public final getExpressions()Lcom/oplus/vfxsdk/common/k;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    return-object p0
.end method

.method public final getLayers()[Lcom/oplus/vfxsdk/common/Layer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    return-object p0
.end method

.method public final getMV()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getV()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setAnimParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    return-void
.end method

.method public final setCT(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    return-void
.end method

.method public final setCV(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    return-void
.end method

.method public final setExpressions(Lcom/oplus/vfxsdk/common/k;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    return-void
.end method

.method public final setLayers([Lcom/oplus/vfxsdk/common/Layer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    return-void
.end method

.method public final setMV(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    return-void
.end method

.method public final setV(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/COEData;->name:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/vfxsdk/common/COEData;->v:I

    iget v2, p0, Lcom/oplus/vfxsdk/common/COEData;->mV:I

    iget-wide v3, p0, Lcom/oplus/vfxsdk/common/COEData;->cT:J

    iget-wide v5, p0, Lcom/oplus/vfxsdk/common/COEData;->cV:J

    iget-object v7, p0, Lcom/oplus/vfxsdk/common/COEData;->layers:[Lcom/oplus/vfxsdk/common/Layer;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/vfxsdk/common/COEData;->expressions:Lcom/oplus/vfxsdk/common/k;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEData;->animParams:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "COEData(name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", v="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mV="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cT="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", cV="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", layers="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expressions="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", animParams="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
