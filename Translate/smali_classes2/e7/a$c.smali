.class Le7/a$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Le7/a;


# direct methods
.method public constructor <init>(Le7/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Le7/a$c;->a:Le7/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Le7/a$c;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le7/a$c;->b(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/a;

    iget-object v1, v1, Lt1/a;->i:Ljava/lang/String;

    const-string v2, "DownloadManager"

    if-nez v1, :cond_0

    const-string p0, "downloadInfo.mPackage = null, return"

    invoke-static {v2, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Le7/a$c;->a:Le7/a;

    invoke-static {v1}, Le7/a;->d(Le7/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/a;

    iget-object v1, v1, Lt1/a;->i:Ljava/lang/String;

    iget-object v3, p0, Le7/a$c;->a:Le7/a;

    invoke-static {v3}, Le7/a;->d(Le7/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadInfo list downloadInfo.mPackage = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt1/a;

    iget-object p1, p1, Lt1/a;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". is not equal "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p0}, Le7/a;->d(Le7/a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-boolean v0, Lf7/a;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadInfo.list downloadInfos.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Le7/a$c;->a:Le7/a;

    invoke-static {v0}, Le7/a;->c(Le7/a;)Le7/b;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "insert"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p0}, Le7/a;->c(Le7/a;)Le7/b;

    move-result-object p0

    invoke-interface {p0, p1}, Le7/b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const-string v0, "update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p0}, Le7/a;->c(Le7/a;)Le7/b;

    move-result-object p0

    invoke-interface {p0, p1}, Le7/b;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const-string v0, "timeout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p0}, Le7/a;->c(Le7/a;)Le7/b;

    move-result-object p0

    invoke-interface {p0, p1}, Le7/b;->d(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    const-string p0, "handleDownloadInfo list mDownloadStatesCallback = null"

    invoke-static {v2, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le7/a$c;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 2
    sget-boolean p1, Lf7/a;->a:Z

    const-string v0, "DownloadManager"

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange run, uri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p1}, Le7/a;->b(Le7/a;)Le7/a$b;

    if-nez p2, :cond_1

    .line 5
    const-string p0, "onChange error uri = null, return."

    invoke-static {v0, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p1}, Le7/a;->c(Le7/a;)Le7/b;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    const-string p0, "onChange error mDownloadStatesCallback = null, return."

    invoke-static {v0, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p1}, Le7/a;->e(Le7/a;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Le7/a$c$a;

    invoke-direct {v0, p0, p2}, Le7/a$c$a;-><init>(Le7/a$c;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
