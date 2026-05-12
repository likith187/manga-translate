.class public final Ln8/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Lx8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln8/c0$a;
    }
.end annotation


# instance fields
.field private final a:[J


# direct methods
.method private synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln8/c0;->a:[J

    return-void
.end method

.method public static final synthetic a([J)Ln8/c0;
    .locals 1

    new-instance v0, Ln8/c0;

    invoke-direct {v0, p0}, Ln8/c0;-><init>([J)V

    return-object v0
.end method

.method public static c(I)[J
    .locals 0

    new-array p0, p0, [J

    invoke-static {p0}, Ln8/c0;->d([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static d([J)[J
    .locals 1

    const-string v0, "storage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static f([JJ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/collections/i;->x([JJ)Z

    move-result p0

    return p0
.end method

.method public static g([JLjava/util/Collection;)Z
    .locals 4

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ln8/b0;

    if-eqz v2, :cond_1

    check-cast v0, Ln8/b0;

    invoke-virtual {v0}, Ln8/b0;->f()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lkotlin/collections/i;->x([JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public static h([JLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ln8/c0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ln8/c0;

    invoke-virtual {p1}, Ln8/c0;->q()[J

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final i([JI)J
    .locals 0

    aget-wide p0, p0, p1

    invoke-static {p0, p1}, Ln8/b0;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static k([J)I
    .locals 0

    array-length p0, p0

    return p0
.end method

.method public static l([J)I
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    return p0
.end method

.method public static m([J)Z
    .locals 0

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n([J)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Ln8/c0$a;

    invoke-direct {v0, p0}, Ln8/c0$a;-><init>([J)V

    return-object v0
.end method

.method public static final o([JIJ)V
    .locals 0

    aput-wide p2, p0, p1

    return-void
.end method

.method public static p([J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ULongArray(storage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ln8/b0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ln8/b0;

    invoke-virtual {p1}, Ln8/b0;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ln8/c0;->e(J)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0, p1}, Ln8/c0;->g([JLjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public e(J)Z
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0, p1, p2}, Ln8/c0;->f([JJ)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0, p1}, Ln8/c0;->h([JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0}, Ln8/c0;->l([J)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0}, Ln8/c0;->m([J)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0}, Ln8/c0;->n([J)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0}, Ln8/c0;->k([J)I

    move-result p0

    return p0
.end method

.method public final synthetic q()[J
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic size()I
    .locals 0

    invoke-virtual {p0}, Ln8/c0;->j()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/i;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 2
    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln8/c0;->a:[J

    invoke-static {p0}, Ln8/c0;->p([J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
