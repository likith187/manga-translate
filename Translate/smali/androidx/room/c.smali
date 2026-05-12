.class public abstract Landroidx/room/c;
.super Landroidx/room/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/n;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method protected abstract g(Ls0/f;Ljava/lang/Object;)V
.end method

.method public final h(Ljava/lang/Iterable;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/room/c;->g(Ls0/f;Ljava/lang/Object;)V

    invoke-interface {v0}, Ls0/f;->w0()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw p1
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/c;->g(Ls0/f;Ljava/lang/Object;)V

    invoke-interface {v0}, Ls0/f;->w0()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw p1
.end method

.method public final j(Ljava/lang/Object;)J
    .locals 3

    invoke-virtual {p0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/c;->g(Ls0/f;Ljava/lang/Object;)V

    invoke-interface {v0}, Ls0/f;->w0()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw p1
.end method

.method public final k(Ljava/util/Collection;)Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroidx/room/c;->g(Ls0/f;Ljava/lang/Object;)V

    invoke-interface {v0}, Ls0/f;->w0()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return-object v1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw p1
.end method
