.class public final Lcom/oplus/backup/sdk/common/bean/FileWrapperList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final endIndex:I

.field private final fromIndex:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/backup/sdk/common/bean/FileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final totalCount:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/backup/sdk/common/bean/FileWrapper;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    iput p2, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    iput p3, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    iput p4, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/backup/sdk/common/bean/FileWrapperList;Ljava/util/ArrayList;IIIILjava/lang/Object;)Lcom/oplus/backup/sdk/common/bean/FileWrapperList;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->copy(Ljava/util/ArrayList;III)Lcom/oplus/backup/sdk/common/bean/FileWrapperList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/backup/sdk/common/bean/FileWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    return p0
.end method

.method public final copy(Ljava/util/ArrayList;III)Lcom/oplus/backup/sdk/common/bean/FileWrapperList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/backup/sdk/common/bean/FileWrapper;",
            ">;III)",
            "Lcom/oplus/backup/sdk/common/bean/FileWrapperList;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;-><init>(Ljava/util/ArrayList;III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    iget v3, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    iget v3, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    iget p1, p1, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    return p0
.end method

.method public final getFromIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    return p0
.end method

.method public final getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/backup/sdk/common/bean/FileWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileWrapperList(list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->fromIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->totalCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
