.class public Lcom/coloros/translate/engine/offline/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/offline/f0$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/translate/engine/offline/f0$a;

.field b:Z

.field c:I

.field d:J

.field e:J

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:J

.field l:J

.field m:I

.field n:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZIJZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/coloros/translate/engine/offline/f0;->b:Z

    iput p3, p0, Lcom/coloros/translate/engine/offline/f0;->f:I

    iput-wide p4, p0, Lcom/coloros/translate/engine/offline/f0;->l:J

    iput p7, p0, Lcom/coloros/translate/engine/offline/f0;->m:I

    if-eqz p6, :cond_0

    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/f0;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    :goto_0
    return-void
.end method

.method c(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/g;->getLanguagePackage(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coloros/translate/engine/offline/g;->deleteNativeFile(Landroid/content/Context;)V

    invoke-static {}, Lcom/coloros/translate/engine/offline/k0;->e()Lcom/coloros/translate/engine/offline/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/k0;->c(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/coloros/translate/utils/l0$a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/f0;->f()V

    :cond_1
    return-void
.end method

.method d(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/g;->getLanguagePackage(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/g;->existsNativeFile(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method e()I
    .locals 3

    iget-wide v0, p0, Lcom/coloros/translate/engine/offline/f0;->k:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/coloros/translate/engine/offline/f0;->l:J

    long-to-float p0, v1

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method f()V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/translate/engine/offline/f0;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coloros/translate/engine/offline/f0;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coloros/translate/engine/offline/f0;->k:J

    :cond_0
    return-void
.end method

.method g(Landroid/content/Context;Lt1/a;Z)V
    .locals 4

    iget-object v0, p2, Lt1/a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    iget-wide v0, p2, Lt1/a;->a:J

    iput-wide v0, p0, Lcom/coloros/translate/engine/offline/f0;->e:J

    iget-wide v0, p2, Lt1/a;->k:J

    iput-wide v0, p0, Lcom/coloros/translate/engine/offline/f0;->k:J

    iget-wide v0, p2, Lt1/a;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/coloros/translate/engine/offline/f0;->l:J

    :cond_0
    iget v0, p2, Lt1/a;->g:I

    iput v0, p0, Lcom/coloros/translate/engine/offline/f0;->c:I

    iget-wide v1, p2, Lt1/a;->p:J

    iput-wide v1, p0, Lcom/coloros/translate/engine/offline/f0;->d:J

    const/4 p2, 0x1

    if-eq v0, p2, :cond_5

    const/4 p2, 0x2

    if-eq v0, p2, :cond_4

    const/4 p2, 0x4

    if-eq v0, p2, :cond_3

    const/16 p2, 0x8

    if-eq v0, p2, :cond_2

    const/16 p1, 0x10

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADFIALED:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/f0;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->PAUSE:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADING:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->PENDING:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    :cond_6
    :goto_0
    return-void
.end method

.method public h(I)V
    .locals 1

    iget v0, p0, Lcom/coloros/translate/engine/offline/f0;->m:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->NEEDUPDATE:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflinePackageData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmBusiness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmFileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/f0;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/coloros/translate/utils/c0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmDownloadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/coloros/translate/engine/offline/f0;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/f0;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/translate/utils/c0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
