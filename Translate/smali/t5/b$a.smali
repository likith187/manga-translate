.class Lt5/b$a;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/b;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lt5/b;


# direct methods
.method constructor <init>(Lt5/b;Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Lt5/b$a;->d:Lt5/b;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `a_e` (`id`,`auth_code`,`is_enable`,`uid`,`packageName`,`capability_name`,`expiration`,`permission`,`last_update_time`,`cache_time`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method

.method public bridge synthetic g(Ls0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lt5/c;

    invoke-virtual {p0, p1, p2}, Lt5/b$a;->l(Ls0/f;Lt5/c;)V

    return-void
.end method

.method public l(Ls0/f;Lt5/c;)V
    .locals 3

    invoke-virtual {p2}, Lt5/c;->e()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lt5/c;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lt5/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lt5/c;->j()Z

    move-result p0

    const/4 v0, 0x3

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lt5/c;->i()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lt5/c;->g()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lt5/c;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lt5/c;->c()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lt5/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x7

    invoke-virtual {p2}, Lt5/c;->d()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lt5/c;->h()[B

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lt5/c;->h()[B

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->k0(I[B)V

    :goto_3
    const/16 p0, 0x9

    invoke-virtual {p2}, Lt5/c;->f()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/16 p0, 0xa

    invoke-virtual {p2}, Lt5/c;->b()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    return-void
.end method
