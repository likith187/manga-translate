.class public final Lcom/oplus/vfxsdk/common/AnimatorValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

.field private final currentTime:F

.field private final eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animLines"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    .line 3
    iput-object p2, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    .line 5
    iput-object p4, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    .line 6
    iput-object p5, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/oplus/vfxsdk/common/AnimatorValue;-><init>(ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/AnimatorValue;ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/AnimatorValue;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/oplus/vfxsdk/common/AnimatorValue;->copy(ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;)Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    return p0
.end method

.method public final component4()[Lcom/oplus/vfxsdk/common/AnimLine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    return-object p0
.end method

.method public final component5()Lcom/oplus/vfxsdk/common/AnimLine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;)Lcom/oplus/vfxsdk/common/AnimatorValue;
    .locals 6

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "animLines"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/vfxsdk/common/AnimatorValue;-><init>(ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/AnimatorValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/AnimatorValue;

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAnimLines()[Lcom/oplus/vfxsdk/common/AnimLine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    return-object p0
.end method

.method public final getCurrentTime()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    return p0
.end method

.method public final getEventLine()Lcom/oplus/vfxsdk/common/AnimLine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/AnimLine;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->id:I

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->name:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->currentTime:F

    iget-object v3, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->animLines:[Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimatorValue;->eventLine:Lcom/oplus/vfxsdk/common/AnimLine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnimatorValue(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", currentTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", animLines="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", eventLine="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
