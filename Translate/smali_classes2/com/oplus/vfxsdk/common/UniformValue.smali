.class public final Lcom/oplus/vfxsdk/common/UniformValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final bezier:[F

.field private final delay:I

.field private final duration:J

.field private final ipol:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final spring:[F

.field private final type:Lcom/oplus/vfxsdk/common/u;

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[F)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipol"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bezier"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spring"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    .line 4
    iput-object p3, p0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    .line 5
    iput p4, p0, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    .line 6
    iput-wide p5, p0, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    .line 7
    iput-object p7, p0, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    .line 9
    iput-object p9, p0, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x190

    move-wide v7, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 10
    invoke-static {}, Lcom/oplus/vfxsdk/common/m;->b()[F

    move-result-object v1

    move-object v10, v1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Lcom/oplus/vfxsdk/common/m;->c()[F

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_3
    move-object/from16 v11, p9

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v9, p7

    .line 12
    invoke-direct/range {v2 .. v11}, Lcom/oplus/vfxsdk/common/UniformValue;-><init>(Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/UniformValue;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[FILjava/lang/Object;)Lcom/oplus/vfxsdk/common/UniformValue;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    goto :goto_4

    :cond_4
    move-wide v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    goto :goto_7

    :cond_7
    move-object/from16 v1, p9

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-wide p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/oplus/vfxsdk/common/UniformValue;->copy(Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[F)Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/oplus/vfxsdk/common/u;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    return-object p0
.end method

.method public final component3()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    return p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    return-object p0
.end method

.method public final component8()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[F)Lcom/oplus/vfxsdk/common/UniformValue;
    .locals 11

    const-string v0, "name"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipol"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bezier"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spring"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/UniformValue;

    move-object v1, v0

    move v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/oplus/vfxsdk/common/UniformValue;-><init>(Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/UniformValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/UniformValue;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    iget-wide v5, p1, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getBezier()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    return-object p0
.end method

.method public final getDelay()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    return p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    return-wide v0
.end method

.method public final getIpol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpring()[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    return-object p0
.end method

.method public final getType()Lcom/oplus/vfxsdk/common/u;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    return-object p0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setValues([Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/UniformValue;->type:Lcom/oplus/vfxsdk/common/u;

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/UniformValue;->values:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/oplus/vfxsdk/common/UniformValue;->delay:I

    iget-wide v4, p0, Lcom/oplus/vfxsdk/common/UniformValue;->duration:J

    iget-object v6, p0, Lcom/oplus/vfxsdk/common/UniformValue;->ipol:Ljava/lang/String;

    iget-object v7, p0, Lcom/oplus/vfxsdk/common/UniformValue;->bezier:[F

    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/UniformValue;->spring:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UniformValue(name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", values="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", delay="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ipol="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bezier="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", spring="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
