.class public final Lcom/oplus/vfxsdk/naive/parse/SystemUniform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final passIndex:I

.field private final uniform:Lcom/oplus/vfxsdk/common/Uniform;


# direct methods
.method public constructor <init>(ILcom/oplus/vfxsdk/common/Uniform;)V
    .locals 1

    const-string v0, "uniform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/naive/parse/SystemUniform;ILcom/oplus/vfxsdk/common/Uniform;ILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/parse/SystemUniform;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->copy(ILcom/oplus/vfxsdk/common/Uniform;)Lcom/oplus/vfxsdk/naive/parse/SystemUniform;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    return p0
.end method

.method public final component2()Lcom/oplus/vfxsdk/common/Uniform;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    return-object p0
.end method

.method public final copy(ILcom/oplus/vfxsdk/common/Uniform;)Lcom/oplus/vfxsdk/naive/parse/SystemUniform;
    .locals 0

    const-string p0, "uniform"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;-><init>(ILcom/oplus/vfxsdk/common/Uniform;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;

    iget v1, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    iget v3, p1, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    iget-object p1, p1, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPassIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    return p0
.end method

.method public final getUniform()Lcom/oplus/vfxsdk/common/Uniform;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Uniform;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->passIndex:I

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->uniform:Lcom/oplus/vfxsdk/common/Uniform;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemUniform(passIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uniform="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
