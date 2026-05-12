.class public final Lcom/oplus/backup/sdk/common/bean/TransferFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private destPath:Ljava/lang/String;

.field private srcPath:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/backup/sdk/common/bean/TransferFile;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "srcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    .line 6
    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/common/bean/TransferFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/backup/sdk/common/bean/TransferFile;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/oplus/backup/sdk/common/bean/TransferFile;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/common/bean/TransferFile;->copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/backup/sdk/common/bean/TransferFile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/backup/sdk/common/bean/TransferFile;
    .locals 0

    const-string p0, "srcPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "destPath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/common/bean/TransferFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/backup/sdk/common/bean/TransferFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/backup/sdk/common/bean/TransferFile;

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    iget p1, p1, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDestPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getSrcPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDestPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    return-void
.end method

.method public final setSrcPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferFile(srcPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->srcPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->destPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/TransferFile;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
