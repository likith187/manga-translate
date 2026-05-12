.class public Le7/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/net/Uri;

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/List;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:Landroid/net/Uri;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le7/a$e;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le7/a$e;->d:Ljava/util/List;

    const/4 v1, 0x6

    iput v1, p0, Le7/a$e;->h:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Le7/a$e;->i:Z

    iput-boolean v1, p0, Le7/a$e;->j:Z

    iput v0, p0, Le7/a$e;->k:I

    iput-boolean v0, p0, Le7/a$e;->l:Z

    iput-boolean v0, p0, Le7/a$e;->m:Z

    iput-boolean v0, p0, Le7/a$e;->n:Z

    const/4 v2, 0x0

    iput-object v2, p0, Le7/a$e;->o:Ljava/lang/String;

    iput v0, p0, Le7/a$e;->p:I

    iput-boolean v0, p0, Le7/a$e;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Le7/a$e;->r:I

    iput v0, p0, Le7/a$e;->s:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Le7/a$e;->t:J

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Le7/a$e;->u:J

    iput-object v2, p0, Le7/a$e;->w:Ljava/lang/String;

    iput-object v2, p0, Le7/a$e;->x:Ljava/lang/String;

    iput v1, p0, Le7/a$e;->y:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Le7/a$e;->b:Landroid/net/Uri;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/content/ContentValues;)V
    .locals 4

    iget-object p0, p0, Le7/a$e;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http_header_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(I)Le7/a$e;
    .locals 0

    iput p1, p0, Le7/a$e;->h:I

    return-object p0
.end method

.method public d(Z)Le7/a$e;
    .locals 0

    iput-boolean p1, p0, Le7/a$e;->j:Z

    return-object p0
.end method

.method public e(Landroid/net/Uri;)Le7/a$e;
    .locals 0

    iput-object p1, p0, Le7/a$e;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Le7/a$e;
    .locals 0

    iput-object p1, p0, Le7/a$e;->o:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Le7/a$e;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Le7/a$e;->w:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public h(I)Le7/a$e;
    .locals 0

    iput p1, p0, Le7/a$e;->a:I

    return-object p0
.end method

.method public i(I)Le7/a$e;
    .locals 0

    iput p1, p0, Le7/a$e;->y:I

    return-object p0
.end method

.method j(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Le7/a$e;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "is_public_api"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "notificationpackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Le7/a$e;->c:Landroid/net/Uri;

    const/4 v1, 0x2

    const-string v2, "destination"

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Le7/a$e;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "hint"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Le7/a$e;->m:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    iget-boolean p1, p0, Le7/a$e;->l:Z

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "scanned"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Le7/a$e;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Le7/a$e;->a(Landroid/content/ContentValues;)V

    :cond_3
    const-string p1, "title"

    iget-object v1, p0, Le7/a$e;->e:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1, v1}, Le7/a$e;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "description"

    iget-object v1, p0, Le7/a$e;->f:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1, v1}, Le7/a$e;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "mimetype"

    iget-object v1, p0, Le7/a$e;->g:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Le7/a$e;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, p0, Le7/a$e;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "visibility"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p1, p0, Le7/a$e;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "allowed_network_types"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean p1, p0, Le7/a$e;->i:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "allow_roaming"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean p1, p0, Le7/a$e;->j:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "allow_metered"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget p1, p0, Le7/a$e;->k:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "flags"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p1, p0, Le7/a$e;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "is_visible_in_downloads_ui"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean p1, p0, Le7/a$e;->n:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "control"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p1, 0xc1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string p1, "extra"

    iget-object v1, p0, Le7/a$e;->o:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Le7/a$e;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, p0, Le7/a$e;->p:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "priority"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean p1, p0, Le7/a$e;->q:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "relpace_file"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget p1, p0, Le7/a$e;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "statistics_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Le7/a$e;->t:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "time_out"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget p1, p0, Le7/a$e;->s:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "fail_retry_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Le7/a$e;->u:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "time_interval_for_fail"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Le7/a$e;->v:Landroid/net/Uri;

    if-eqz p1, :cond_5

    const-string v1, "backup_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "md5"

    iget-object v1, p0, Le7/a$e;->w:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Le7/a$e;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "header_md5"

    iget-object v1, p0, Le7/a$e;->x:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Le7/a$e;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
