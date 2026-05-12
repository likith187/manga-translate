.class public final Lcom/oplus/vfxsdk/common/EventKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/common/r;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private cacheValue:F

.field private final custom:Ljava/lang/String;

.field private final eventType:Ljava/lang/String;

.field private final linkIds:[Ljava/lang/Integer;

.field private final name:Ljava/lang/String;

.field private final time:F

.field private final type:Ljava/lang/String;

.field private value:F


# direct methods
.method public constructor <init>(FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    .line 3
    iput-object p2, p0, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    .line 5
    iput p4, p0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    .line 6
    iput-object p5, p0, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    .line 10
    iput-object p9, p0, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    .line 11
    invoke-direct/range {v3 .. v12}, Lcom/oplus/vfxsdk/common/EventKey;-><init>(FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/EventKey;FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/EventKey;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move-object p2, v3

    move p3, v4

    move p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/oplus/vfxsdk/common/EventKey;->copy(FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;)Lcom/oplus/vfxsdk/common/EventKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;)Lcom/oplus/vfxsdk/common/EventKey;
    .locals 11

    const-string v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/EventKey;

    move-object v1, v0

    move v2, p1

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/oplus/vfxsdk/common/EventKey;-><init>(FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/EventKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/EventKey;

    iget v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getCacheValue()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    return p0
.end method

.method public final getCustom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    return-object p0
.end method

.method public final getEventType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkIds()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public setCacheValue(F)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/oplus/vfxsdk/common/EventKey;->time:F

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/EventKey;->type:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/vfxsdk/common/EventKey;->value:F

    iget v3, p0, Lcom/oplus/vfxsdk/common/EventKey;->cacheValue:F

    iget-object v4, p0, Lcom/oplus/vfxsdk/common/EventKey;->eventType:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/EventKey;->action:Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/vfxsdk/common/EventKey;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/oplus/vfxsdk/common/EventKey;->linkIds:[Ljava/lang/Integer;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/EventKey;->custom:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EventKey(time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", cacheValue="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", eventType="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", linkIds="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", custom="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
