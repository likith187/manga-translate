.class public final Lcom/oplus/aiunit/download/core/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fullSize:J

.field private groupName:Ljava/lang/String;

.field private offsetSize:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->groupName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->state:I

    return-void
.end method


# virtual methods
.method public final getFullSize()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->fullSize:J

    return-wide v0
.end method

.method public final getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOffsetSize()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->offsetSize:J

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->state:I

    return p0
.end method

.method public final setFullSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->fullSize:J

    return-void
.end method

.method public final setGroupName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->groupName:Ljava/lang/String;

    return-void
.end method

.method public final setOffsetSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->offsetSize:J

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/aiunit/download/core/DownloadInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
