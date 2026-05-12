.class public final Lcom/coloros/translate/ui/simultaneous/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:F

.field private final d:F

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(JJFFIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->a:J

    iput-wide p3, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->b:J

    iput p5, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->c:F

    iput p6, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->d:F

    iput p7, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->e:I

    iput p8, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->f:I

    iput p9, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->g:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->b:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->a:J

    return-wide v0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->f:I

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->d:F

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->g:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coloros/translate/ui/simultaneous/widget/b;

    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->a:J

    iget-wide v5, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->b:J

    iget-wide v5, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->c:F

    iget v3, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->d:F

    iget v3, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->e:I

    iget v3, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->f:I

    iget v3, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->g:I

    iget p1, p1, Lcom/coloros/translate/ui/simultaneous/widget/b;->g:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->e:I

    return p0
.end method

.method public final g()F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->c:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->a:J

    iget-wide v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->b:J

    iget v4, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->c:F

    iget v5, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->d:F

    iget v6, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->e:I

    iget v7, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->f:I

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/b;->g:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AnimateSpanParams(duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", delay="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", textSize="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offset="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", startColor="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endColor="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", stableColor="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
