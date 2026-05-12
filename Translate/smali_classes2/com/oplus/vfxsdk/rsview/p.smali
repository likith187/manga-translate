.class public final Lcom/oplus/vfxsdk/rsview/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/rsview/p;->a:Z

    .line 2
    iput-boolean p2, p0, Lcom/oplus/vfxsdk/rsview/p;->b:Z

    iput-boolean p3, p0, Lcom/oplus/vfxsdk/rsview/p;->c:Z

    .line 3
    iput-boolean p4, p0, Lcom/oplus/vfxsdk/rsview/p;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/rsview/p;-><init>(ZZZZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/p;->a:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/p;->d:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/p;->b:Z

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/p;->c:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/rsview/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/rsview/p;

    iget-boolean v1, p0, Lcom/oplus/vfxsdk/rsview/p;->a:Z

    iget-boolean v3, p1, Lcom/oplus/vfxsdk/rsview/p;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/oplus/vfxsdk/rsview/p;->b:Z

    iget-boolean v3, p1, Lcom/oplus/vfxsdk/rsview/p;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/oplus/vfxsdk/rsview/p;->c:Z

    iget-boolean v3, p1, Lcom/oplus/vfxsdk/rsview/p;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/p;->d:Z

    iget-boolean p1, p1, Lcom/oplus/vfxsdk/rsview/p;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/p;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/vfxsdk/rsview/p;->b:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/vfxsdk/rsview/p;->c:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/p;->d:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/p;->a:Z

    iget-boolean v1, p0, Lcom/oplus/vfxsdk/rsview/p;->b:Z

    iget-boolean v2, p0, Lcom/oplus/vfxsdk/rsview/p;->c:Z

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/p;->d:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeShaderOptions(alphaPreMultiplied="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enableFlipBitmap="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", useHardwareBitmap="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enableBlend="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
