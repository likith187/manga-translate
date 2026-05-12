.class public Lt1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected final a:Landroid/content/ContentResolver;

.field protected final b:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/a$a;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lt1/a$a;->b:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lt1/a$a;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lt1/a$a;->b:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lt1/a$a;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lt1/a$a;->b:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt1/a$a;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lt1/a$a;->b:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public d()Lt1/a;
    .locals 1

    new-instance v0, Lt1/a;

    invoke-direct {v0}, Lt1/a;-><init>()V

    invoke-virtual {p0, v0}, Lt1/a$a;->e(Lt1/a;)V

    return-object v0
.end method

.method public e(Lt1/a;)V
    .locals 2

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lt1/a$a;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lt1/a;->a:J

    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->b:Ljava/lang/String;

    const-string v0, "hint"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->c:Ljava/lang/String;

    const-string v0, "local_filename"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->d:Ljava/lang/String;

    const-string v0, "media_type"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->e:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->m:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->n:Ljava/lang/String;

    const-string v0, "errorMsg"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->o:Ljava/lang/String;

    const-string v0, "destination"

    invoke-virtual {p0, v0}, Lt1/a$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lt1/a;->f:I

    const-string v0, "status_detailed"

    invoke-virtual {p0, v0}, Lt1/a$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Le7/a$a;->x(I)I

    move-result v1

    iput v1, p1, Lt1/a;->g:I

    invoke-static {v0}, Le7/a$a;->v(I)J

    move-result-wide v0

    iput-wide v0, p1, Lt1/a;->p:J

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p0, v0}, Lt1/a$a;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lt1/a;->h:J

    const-string v0, "notificationpackage"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->i:Ljava/lang/String;

    const-string v0, "total_size"

    invoke-virtual {p0, v0}, Lt1/a$a;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lt1/a;->j:J

    const-string v0, "bytes_so_far"

    invoke-virtual {p0, v0}, Lt1/a$a;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lt1/a;->k:J

    const-string v0, "is_visible_in_downloads_ui"

    invoke-virtual {p0, v0}, Lt1/a$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lt1/a;->l:I

    const-string v0, "download_speed"

    invoke-virtual {p0, v0}, Lt1/a$a;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lt1/a;->q:J

    const-string v0, "extra"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->r:Ljava/lang/String;

    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Lt1/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->s:Ljava/lang/String;

    const-string v0, "statistics_id"

    invoke-virtual {p0, v0}, Lt1/a$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lt1/a;->t:I

    return-void
.end method
