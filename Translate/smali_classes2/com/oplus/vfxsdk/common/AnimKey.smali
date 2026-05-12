.class public final Lcom/oplus/vfxsdk/common/AnimKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/common/r;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final bezier:[F

.field private cacheValue:F

.field private expr:Ljava/lang/String;

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private final ipol:Ljava/lang/String;

.field private final spring:[F

.field private final time:F

.field private final type:Ljava/lang/String;

.field private value:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipol"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bezier"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spring"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    .line 3
    iput p2, p0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    .line 4
    iput-object p3, p0, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    .line 6
    iput-object p5, p0, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    .line 8
    iput-object p7, p0, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    .line 9
    iput-object p8, p0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 11
    invoke-direct/range {v3 .. v12}, Lcom/oplus/vfxsdk/common/AnimKey;-><init>(FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/AnimKey;FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/AnimKey;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/oplus/vfxsdk/common/AnimKey;->copy(FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;)Lcom/oplus/vfxsdk/common/AnimKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    return-object p0
.end method

.method public final component7()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Landroid/animation/TimeInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public final copy(FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;)Lcom/oplus/vfxsdk/common/AnimKey;
    .locals 11

    const-string v0, "type"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipol"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bezier"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spring"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/AnimKey;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v5, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/oplus/vfxsdk/common/AnimKey;-><init>(FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/AnimKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/AnimKey;

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getBezier()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    return-object p0
.end method

.method public getCacheValue()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    return p0
.end method

.method public final getExpr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    return-object p0
.end method

.method public final getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public final getIpol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpring()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    return-object p0
.end method

.method public getTime()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public setCacheValue(F)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    return-void
.end method

.method public final setExpr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    return-void
.end method

.method public final setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->time:F

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimKey;->value:F

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/AnimKey;->type:Ljava/lang/String;

    iget v3, p0, Lcom/oplus/vfxsdk/common/AnimKey;->cacheValue:F

    iget-object v4, p0, Lcom/oplus/vfxsdk/common/AnimKey;->ipol:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/AnimKey;->bezier:[F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/vfxsdk/common/AnimKey;->spring:[F

    invoke-static {v6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/oplus/vfxsdk/common/AnimKey;->expr:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimKey;->interpolator:Landroid/animation/TimeInterpolator;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AnimKey(time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cacheValue="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ipol="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bezier="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", spring="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expr="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", interpolator="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
