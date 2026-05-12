.class abstract Lkotlin/io/n;
.super Lkotlin/io/m;
.source "SourceFile"


# direct methods
.method public static final o(Ljava/io/File;Ljava/io/File;ZLw8/p;)Z
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/io/o;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string v6, "The source file doesn\'t exist."

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lkotlin/io/o;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p3, p0, p1}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/io/p;->TERMINATE:Lkotlin/io/p;

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-static {p0}, Lkotlin/io/m;->n(Ljava/io/File;)Lkotlin/io/h;

    move-result-object v0

    new-instance v3, Lkotlin/io/n$b;

    invoke-direct {v3, p3}, Lkotlin/io/n$b;-><init>(Lw8/p;)V

    invoke-virtual {v0, v3}, Lkotlin/io/h;->h(Lw8/p;)Lkotlin/io/h;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/io/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v10, Lkotlin/io/o;

    const-string v7, "The source file doesn\'t exist."

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lkotlin/io/o;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p3, v3, v10}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlin/io/p;->TERMINATE:Lkotlin/io/p;

    if-ne v3, v4, :cond_2

    return v2

    :cond_3
    invoke-static {v3, p0}, Lkotlin/io/n;->v(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v5}, Lkotlin/io/n;->s(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_7

    :goto_2
    new-instance v4, Lkotlin/io/e;

    const-string v6, "The destination file already exists."

    invoke-direct {v4, v3, v5, v6}, Lkotlin/io/e;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p3, v5, v4}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlin/io/p;->TERMINATE:Lkotlin/io/p;

    if-ne v3, v4, :cond_2

    return v2

    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_8
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    move v6, p2

    invoke-static/range {v4 .. v9}, Lkotlin/io/n;->r(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Source file wasn\'t copied completely, length of destination file differs."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v3, v4}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlin/io/p;->TERMINATE:Lkotlin/io/p;
    :try_end_0
    .catch Lkotlin/io/q; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_2

    return v2

    :cond_9
    return v1

    :catch_0
    return v2
.end method

.method public static synthetic p(Ljava/io/File;Ljava/io/File;ZLw8/p;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lkotlin/io/n$a;->INSTANCE:Lkotlin/io/n$a;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/io/n;->o(Ljava/io/File;Ljava/io/File;ZLw8/p;)Z

    move-result p0

    return p0
.end method

.method public static final q(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlin/io/e;

    const-string p3, "Tried to overwrite the destination, but failed to delete it."

    invoke-direct {p2, p0, p1, p3}, Lkotlin/io/e;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Lkotlin/io/e;

    const-string p3, "The destination file already exists."

    invoke-direct {p2, p0, p1, p3}, Lkotlin/io/e;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Lkotlin/io/g;

    const-string p3, "Failed to create target directory."

    invoke-direct {p2, p0, p1, p3}, Lkotlin/io/g;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2, p0, p3}, Lkotlin/io/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p3, 0x0

    :try_start_2
    invoke-static {p0, p3}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p2, p3}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p3

    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    new-instance p1, Lkotlin/io/o;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string v3, "The source file doesn\'t exist."

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/io/o;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public static synthetic r(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x2000

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/io/n;->q(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Ljava/io/File;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/io/m;->m(Ljava/io/File;)Lkotlin/io/h;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return v1
.end method

.method private static final t(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".."

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lkotlin/collections/o;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static final u(Lkotlin/io/f;)Lkotlin/io/f;
    .locals 2

    new-instance v0, Lkotlin/io/f;

    invoke-virtual {p0}, Lkotlin/io/f;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/io/f;->b()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/io/n;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/io/f;-><init>(Ljava/io/File;Ljava/util/List;)V

    return-object v0
.end method

.method public static final v(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/io/n;->w(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this and base files have different roots: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final w(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 17

    invoke-static/range {p0 .. p0}, Lkotlin/io/k;->b(Ljava/io/File;)Lkotlin/io/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/n;->u(Lkotlin/io/f;)Lkotlin/io/f;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lkotlin/io/k;->b(Ljava/io/File;)Lkotlin/io/f;

    move-result-object v1

    invoke-static {v1}, Lkotlin/io/n;->u(Lkotlin/io/f;)Lkotlin/io/f;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/io/f;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/io/f;->a()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v1}, Lkotlin/io/f;->c()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/io/f;->c()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {v0}, Lkotlin/io/f;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1}, Lkotlin/io/f;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v2, -0x1

    if-gt v6, v7, :cond_4

    :goto_1
    invoke-virtual {v1}, Lkotlin/io/f;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".."

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v7, v6, :cond_3

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eq v7, v6, :cond_4

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_4
    if-ge v6, v4, :cond_6

    if-ge v6, v2, :cond_5

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Lkotlin/io/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/collections/o;->N(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "separator"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0x7c

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v5

    invoke-static/range {v7 .. v16}, Lkotlin/collections/o;->Y(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lw8/l;ILjava/lang/Object;)Ljava/lang/Appendable;

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
