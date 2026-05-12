.class public final Lcom/oplus/vfxsdk/naive/parse/StatusData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final anim:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/naive/parse/StatusData;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/parse/StatusData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/StatusData;->copy(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oplus/vfxsdk/naive/parse/StatusData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oplus/vfxsdk/naive/parse/StatusData;
    .locals 0

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anim"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/StatusData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/naive/parse/StatusData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/naive/parse/StatusData;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    iget-object p1, p1, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAnim()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->value:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/StatusData;->anim:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusData(value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", anim="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
