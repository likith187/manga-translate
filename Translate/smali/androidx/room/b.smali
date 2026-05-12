.class public abstract Landroidx/room/b;
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

.method public final h(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/b;->g(Ls0/f;Ljava/lang/Object;)V

    invoke-interface {v0}, Ls0/f;->H()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw p1
.end method

.method public final i(Ljava/lang/Iterable;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/room/b;->g(Ls0/f;Ljava/lang/Object;)V

    invoke-interface {v0}, Ls0/f;->H()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return v1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw p1
.end method
