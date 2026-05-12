.class public final Lcom/oplus/vfxsdk/common/PassParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;


# direct methods
.method public constructor <init>([Lcom/oplus/vfxsdk/common/UniformValue;)V
    .locals 1

    const-string v0, "uniformPrams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/PassParams;[Lcom/oplus/vfxsdk/common/UniformValue;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/PassParams;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/PassParams;->copy([Lcom/oplus/vfxsdk/common/UniformValue;)Lcom/oplus/vfxsdk/common/PassParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[Lcom/oplus/vfxsdk/common/UniformValue;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    return-object p0
.end method

.method public final copy([Lcom/oplus/vfxsdk/common/UniformValue;)Lcom/oplus/vfxsdk/common/PassParams;
    .locals 0

    const-string p0, "uniformPrams"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/PassParams;

    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/common/PassParams;-><init>([Lcom/oplus/vfxsdk/common/UniformValue;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/PassParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/PassParams;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getUniformPrams()[Lcom/oplus/vfxsdk/common/UniformValue;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/PassParams;->uniformPrams:[Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PassParams(uniformPrams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
