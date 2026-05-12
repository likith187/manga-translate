.class public final Lcom/oplus/vfxsdk/common/Anim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final bezier:[Ljava/lang/Float;

.field private final duration:J

.field private final type:Ljava/lang/String;

.field private final uniformName:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;Ljava/lang/Object;J)V
    .locals 1

    const-string v0, "uniformName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bezier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    iput-object p4, p0, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/Anim;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;Ljava/lang/Object;JILjava/lang/Object;)Lcom/oplus/vfxsdk/common/Anim;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/oplus/vfxsdk/common/Anim;->copy(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;Ljava/lang/Object;J)Lcom/oplus/vfxsdk/common/Anim;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    return-object p0
.end method

.method public final component4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;Ljava/lang/Object;J)Lcom/oplus/vfxsdk/common/Anim;
    .locals 7

    const-string p0, "uniformName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bezier"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/Anim;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/vfxsdk/common/Anim;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;Ljava/lang/Object;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/Anim;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/Anim;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    iget-wide p0, p1, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBezier()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniformName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Anim;->uniformName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Anim;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/Anim;->bezier:[Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/vfxsdk/common/Anim;->value:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/oplus/vfxsdk/common/Anim;->duration:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Anim(uniformName="

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bezier="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
