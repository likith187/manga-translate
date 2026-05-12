.class public final Lcom/oplus/aiunit/core/data/SceneData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downloadType:Lcom/oplus/aiunit/core/data/DownloadType;

.field private fullDownloadSize:J

.field private sceneName:Ljava/lang/String;

.field private support:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/core/data/SceneData;->sceneName:Ljava/lang/String;

    sget-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    iput-object v0, p0, Lcom/oplus/aiunit/core/data/SceneData;->downloadType:Lcom/oplus/aiunit/core/data/DownloadType;

    return-void
.end method


# virtual methods
.method public final build(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/SceneData;
    .locals 3

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "package::scene_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/data/SceneData;->sceneName:Ljava/lang/String;

    const-string v0, "ai::key::scene_support"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/data/SceneData;->support:I

    sget-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->Companion:Lcom/oplus/aiunit/core/data/DownloadType$Companion;

    const-string v2, "ai::key::scene_download_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/data/DownloadType$Companion;->find(I)Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/core/data/SceneData;->downloadType:Lcom/oplus/aiunit/core/data/DownloadType;

    const-string v0, "ai::key::scene_download_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/aiunit/core/data/SceneData;->fullDownloadSize:J

    return-object p0
.end method

.method public final getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/SceneData;->downloadType:Lcom/oplus/aiunit/core/data/DownloadType;

    return-object p0
.end method

.method public final getFullDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/core/data/SceneData;->fullDownloadSize:J

    return-wide v0
.end method

.method public final getSceneName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/SceneData;->sceneName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupport()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/SceneData;->support:I

    return p0
.end method

.method public final setDownloadType(Lcom/oplus/aiunit/core/data/DownloadType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/SceneData;->downloadType:Lcom/oplus/aiunit/core/data/DownloadType;

    return-void
.end method

.method public final setFullDownloadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/core/data/SceneData;->fullDownloadSize:J

    return-void
.end method

.method public final setSceneName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/SceneData;->sceneName:Ljava/lang/String;

    return-void
.end method

.method public final setSupport(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/data/SceneData;->support:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SceneData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/data/SceneData;->sceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/aiunit/core/data/SceneData;->support:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/core/data/SceneData;->downloadType:Lcom/oplus/aiunit/core/data/DownloadType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/aiunit/core/data/SceneData;->fullDownloadSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
