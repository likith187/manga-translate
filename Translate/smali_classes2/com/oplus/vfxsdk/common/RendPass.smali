.class public final Lcom/oplus/vfxsdk/common/RendPass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final cs:Ljava/lang/String;

.field private final effects:[Lcom/oplus/vfxsdk/common/Effect;

.field private final fs:Ljava/lang/String;

.field private final order:I

.field private final status:[Lcom/oplus/vfxsdk/common/StatusAnim;

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

.field private final vs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Uniform;",
            ">;[",
            "Lcom/oplus/vfxsdk/common/StatusAnim;",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/Effect;",
            ")V"
        }
    .end annotation

    const-string v0, "vs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniforms"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    .line 3
    iput-object p4, p0, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    .line 4
    iput-object p5, p0, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

    .line 5
    iput-object p6, p0, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    .line 7
    invoke-direct/range {v1 .. v8}, Lcom/oplus/vfxsdk/common/RendPass;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/RendPass;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/RendPass;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/oplus/vfxsdk/common/RendPass;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;)Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    return p0
.end method

.method public final component4()Ljava/util/HashMap;
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

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    return-object p0
.end method

.method public final component5()[Lcom/oplus/vfxsdk/common/StatusAnim;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()[Lcom/oplus/vfxsdk/common/Effect;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;)Lcom/oplus/vfxsdk/common/RendPass;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Uniform;",
            ">;[",
            "Lcom/oplus/vfxsdk/common/StatusAnim;",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/Effect;",
            ")",
            "Lcom/oplus/vfxsdk/common/RendPass;"
        }
    .end annotation

    const-string p0, "vs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uniforms"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/RendPass;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oplus/vfxsdk/common/RendPass;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/RendPass;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/RendPass;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    return-object p0
.end method

.method public final getEffects()[Lcom/oplus/vfxsdk/common/Effect;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    return-object p0
.end method

.method public final getFs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrder()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    return p0
.end method

.method public final getStatus()[Lcom/oplus/vfxsdk/common/StatusAnim;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

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

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getVs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/RendPass;->vs:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/RendPass;->fs:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/vfxsdk/common/RendPass;->order:I

    iget-object v3, p0, Lcom/oplus/vfxsdk/common/RendPass;->uniforms:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/oplus/vfxsdk/common/RendPass;->status:[Lcom/oplus/vfxsdk/common/StatusAnim;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/RendPass;->cs:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/RendPass;->effects:[Lcom/oplus/vfxsdk/common/Effect;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RendPass(vs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", order="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uniforms="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", effects="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
