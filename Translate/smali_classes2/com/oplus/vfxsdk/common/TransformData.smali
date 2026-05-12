.class public final Lcom/oplus/vfxsdk/common/TransformData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final layout:[Ljava/lang/Float;

.field private final layout_expr:[Ljava/lang/String;

.field private final rotate:[Ljava/lang/Float;

.field private final scale:[Ljava/lang/Float;


# direct methods
.method public constructor <init>([Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/Float;[Ljava/lang/Float;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    iput-object p4, p0, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/TransformData;[Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/Float;[Ljava/lang/Float;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/TransformData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/common/TransformData;->copy([Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/Float;[Ljava/lang/Float;)Lcom/oplus/vfxsdk/common/TransformData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    return-object p0
.end method

.method public final component2()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    return-object p0
.end method

.method public final component3()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    return-object p0
.end method

.method public final component4()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    return-object p0
.end method

.method public final copy([Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/Float;[Ljava/lang/Float;)Lcom/oplus/vfxsdk/common/TransformData;
    .locals 0

    const-string p0, "layout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scale"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotate"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/TransformData;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/common/TransformData;-><init>([Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/Float;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/TransformData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/TransformData;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLayout()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    return-object p0
.end method

.method public final getLayout_expr()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    return-object p0
.end method

.method public final getRotate()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    return-object p0
.end method

.method public final getScale()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout:[Ljava/lang/Float;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/TransformData;->layout_expr:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/TransformData;->scale:[Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/TransformData;->rotate:[Ljava/lang/Float;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TransformData(layout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", layout_expr="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", scale="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rotate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
