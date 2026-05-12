.class public final Lcom/oplus/backup/sdk/common/bean/FileWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private length:J

.field private path:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/backup/sdk/common/bean/FileWrapper;-><init>(ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    .line 4
    iput-object p2, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-wide/16 p3, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/common/bean/FileWrapper;-><init>(ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/backup/sdk/common/bean/FileWrapper;ILjava/lang/String;JILjava/lang/Object;)Lcom/oplus/backup/sdk/common/bean/FileWrapper;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->copy(ILjava/lang/String;J)Lcom/oplus/backup/sdk/common/bean/FileWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    return-wide v0
.end method

.method public final copy(ILjava/lang/String;J)Lcom/oplus/backup/sdk/common/bean/FileWrapper;
    .locals 0

    new-instance p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/common/bean/FileWrapper;-><init>(ILjava/lang/String;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/backup/sdk/common/bean/FileWrapper;

    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    iget v3, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    iget-wide p0, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isFile()Z
    .locals 1

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFolder()Z
    .locals 1

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileWrapper(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
