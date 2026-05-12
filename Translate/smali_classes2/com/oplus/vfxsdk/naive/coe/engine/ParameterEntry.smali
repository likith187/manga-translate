.class public final Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final paraName:Ljava/lang/String;

.field private final passIndex:I

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    const-string v0, "paraName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;ILjava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->copy(ILjava/lang/String;[Ljava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;[Ljava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[TT;)",
            "Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "paraName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "values"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    iget v3, p1, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getParaName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPassIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    return p0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->passIndex:I

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->paraName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;->values:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParameterEntry(passIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paraName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", values="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
