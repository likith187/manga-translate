.class public final Lcom/oplus/vfxsdk/common/StatusAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final anims:[Lcom/oplus/vfxsdk/common/Anim;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Anim;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anims"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Anim;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/StatusAnim;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/StatusAnim;->copy(Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Anim;)Lcom/oplus/vfxsdk/common/StatusAnim;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()[Lcom/oplus/vfxsdk/common/Anim;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Anim;)Lcom/oplus/vfxsdk/common/StatusAnim;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anims"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/StatusAnim;

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/common/StatusAnim;-><init>(Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Anim;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/StatusAnim;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/StatusAnim;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAnims()[Lcom/oplus/vfxsdk/common/Anim;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/StatusAnim;->anims:[Lcom/oplus/vfxsdk/common/Anim;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusAnim(name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", anims="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
