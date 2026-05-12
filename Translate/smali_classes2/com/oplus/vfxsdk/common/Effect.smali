.class public final Lcom/oplus/vfxsdk/common/Effect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final cs:Ljava/lang/String;

.field private final uniforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Uniform;",
            ">;"
        }
    .end annotation
.end field

.field private final value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Uniform;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uniforms"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/vfxsdk/common/Effect;->value:I

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/Effect;ILjava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/Effect;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/oplus/vfxsdk/common/Effect;->value:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/Effect;->copy(ILjava/lang/String;Ljava/util/HashMap;)Lcom/oplus/vfxsdk/common/Effect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Effect;->value:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Uniform;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/util/HashMap;)Lcom/oplus/vfxsdk/common/Effect;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Uniform;",
            ">;)",
            "Lcom/oplus/vfxsdk/common/Effect;"
        }
    .end annotation

    const-string p0, "uniforms"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/Effect;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/Effect;-><init>(ILjava/lang/String;Ljava/util/HashMap;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/Effect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/Effect;

    iget v1, p0, Lcom/oplus/vfxsdk/common/Effect;->value:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/Effect;->value:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniforms()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Uniform;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Effect;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/oplus/vfxsdk/common/Effect;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/oplus/vfxsdk/common/Effect;->value:I

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Effect;->cs:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Effect;->uniforms:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Effect(value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uniforms="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
