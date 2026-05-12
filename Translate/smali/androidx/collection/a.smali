.class public Landroidx/collection/a;
.super Landroidx/collection/i;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/a$a;,
        Landroidx/collection/a$c;,
        Landroidx/collection/a$e;,
        Landroidx/collection/a$d;,
        Landroidx/collection/a$f;,
        Landroidx/collection/a$b;
    }
.end annotation


# instance fields
.field f:Landroidx/collection/a$a;

.field h:Landroidx/collection/a$c;

.field i:Landroidx/collection/a$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/collection/i;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/collection/i;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/collection/i;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/collection/i;-><init>(Landroidx/collection/i;)V

    return-void
.end method

.method static m(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/collection/i;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/collection/i;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/collection/a;->f:Landroidx/collection/a$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/a$a;

    invoke-direct {v0, p0}, Landroidx/collection/a$a;-><init>(Landroidx/collection/a;)V

    iput-object v0, p0, Landroidx/collection/a;->f:Landroidx/collection/a$a;

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Landroidx/collection/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/collection/a;->h:Landroidx/collection/a$c;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/a$c;

    invoke-direct {v0, p0}, Landroidx/collection/a$c;-><init>(Landroidx/collection/a;)V

    iput-object v0, p0, Landroidx/collection/a;->h:Landroidx/collection/a$c;

    :cond_0
    return-object v0
.end method

.method public l(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public n(Ljava/util/Collection;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/collection/i;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/i;->size()I

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public o(Ljava/util/Collection;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/collection/i;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/collection/i;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroidx/collection/i;->g(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Landroidx/collection/i;->i(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/collection/i;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/collection/i;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/i;->c(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/collection/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Landroidx/collection/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Landroidx/collection/a;->i:Landroidx/collection/a$e;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/a$e;

    invoke-direct {v0, p0}, Landroidx/collection/a$e;-><init>(Landroidx/collection/a;)V

    iput-object v0, p0, Landroidx/collection/a;->i:Landroidx/collection/a$e;

    :cond_0
    return-object v0
.end method
