.class final Ls4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/e;
.implements Lq4/g;


# instance fields
.field private a:Ls4/e;

.field private b:Z

.field private final c:Landroid/util/JsonWriter;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Lq4/d;

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lq4/d;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls4/e;->a:Ls4/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls4/e;->b:Z

    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    iput-object p2, p0, Ls4/e;->d:Ljava/util/Map;

    iput-object p3, p0, Ls4/e;->e:Ljava/util/Map;

    iput-object p4, p0, Ls4/e;->f:Lq4/d;

    iput-boolean p5, p0, Ls4/e;->g:Z

    return-void
.end method

.method private l(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/util/Collection;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/util/Date;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Enum;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private o(Ljava/lang/String;Ljava/lang/Object;)Ls4/e;
    .locals 1

    invoke-direct {p0}, Ls4/e;->q()V

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p2, :cond_0

    iget-object p1, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Ls4/e;->f(Ljava/lang/Object;Z)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/lang/String;Ljava/lang/Object;)Ls4/e;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Ls4/e;->q()V

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Ls4/e;->f(Ljava/lang/Object;Z)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 2

    iget-boolean v0, p0, Ls4/e;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls4/e;->a:Ls4/e;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Ls4/e;->q()V

    iget-object v0, p0, Ls4/e;->a:Ls4/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ls4/e;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ls4/e;->a:Ls4/e;

    iget-object p0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lq4/c;J)Lq4/e;
    .locals 0

    invoke-virtual {p1}, Lq4/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Ls4/e;->h(Ljava/lang/String;J)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Lq4/g;
    .locals 0

    invoke-virtual {p0, p1}, Ls4/e;->g(Ljava/lang/String;)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Z)Lq4/g;
    .locals 0

    invoke-virtual {p0, p1}, Ls4/e;->j(Z)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method public d(Lq4/c;Ljava/lang/Object;)Lq4/e;
    .locals 0

    invoke-virtual {p1}, Lq4/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ls4/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method public e(J)Ls4/e;
    .locals 1

    invoke-direct {p0}, Ls4/e;->q()V

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method f(Ljava/lang/Object;Z)Ls4/e;
    .locals 5

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Ls4/e;->l(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lq4/b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s cannot be encoded inline"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lq4/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    iget-object p2, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    instance-of p2, p1, [B

    if-eqz p2, :cond_4

    check-cast p1, [B

    invoke-virtual {p0, p1}, Ls4/e;->k([B)Ls4/e;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p2, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    instance-of p2, p1, [I

    if-eqz p2, :cond_5

    check-cast p1, [I

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_a

    aget v0, p1, v1

    iget-object v2, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    instance-of p2, p1, [J

    if-eqz p2, :cond_6

    check-cast p1, [J

    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ls4/e;->e(J)Ls4/e;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    instance-of p2, p1, [D

    if-eqz p2, :cond_7

    check-cast p1, [D

    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    instance-of p2, p1, [Z

    if-eqz p2, :cond_8

    check-cast p1, [Z

    array-length p2, p1

    :goto_4
    if-ge v1, p2, :cond_a

    aget-boolean v0, p1, v1

    iget-object v2, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    instance-of p2, p1, [Ljava/lang/Number;

    if-eqz p2, :cond_9

    check-cast p1, [Ljava/lang/Number;

    array-length p2, p1

    move v0, v1

    :goto_5
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Ls4/e;->f(Ljava/lang/Object;Z)Ls4/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    move v0, v1

    :goto_6
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Ls4/e;->f(Ljava/lang/Object;Z)Ls4/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object p1, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    :cond_b
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/Collection;

    iget-object p2, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Ls4/e;->f(Ljava/lang/Object;Z)Ls4/e;

    goto :goto_7

    :cond_c
    iget-object p1, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    :cond_d
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Ls4/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ls4/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    new-instance p1, Lq4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lq4/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_e
    iget-object p1, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-object p0

    :cond_f
    iget-object v0, p0, Ls4/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/d;

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0, p1, p2}, Ls4/e;->n(Lq4/d;Ljava/lang/Object;Z)Ls4/e;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object v0, p0, Ls4/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/f;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1, p0}, Lq4/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls4/e;->g(Ljava/lang/String;)Ls4/e;

    return-object p0

    :cond_12
    iget-object v0, p0, Ls4/e;->f:Lq4/d;

    invoke-virtual {p0, v0, p1, p2}, Ls4/e;->n(Lq4/d;Ljava/lang/Object;Z)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ls4/e;
    .locals 1

    invoke-direct {p0}, Ls4/e;->q()V

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public h(Ljava/lang/String;J)Ls4/e;
    .locals 1

    invoke-direct {p0}, Ls4/e;->q()V

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0, p2, p3}, Ls4/e;->e(J)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Object;)Ls4/e;
    .locals 1

    iget-boolean v0, p0, Ls4/e;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ls4/e;->p(Ljava/lang/String;Ljava/lang/Object;)Ls4/e;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Ls4/e;->o(Ljava/lang/String;Ljava/lang/Object;)Ls4/e;

    move-result-object p0

    return-object p0
.end method

.method public j(Z)Ls4/e;
    .locals 1

    invoke-direct {p0}, Ls4/e;->q()V

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public k([B)Ls4/e;
    .locals 2

    invoke-direct {p0}, Ls4/e;->q()V

    if-nez p1, :cond_0

    iget-object p1, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-object p0
.end method

.method m()V
    .locals 0

    invoke-direct {p0}, Ls4/e;->q()V

    iget-object p0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method n(Lq4/d;Ljava/lang/Object;Z)Ls4/e;
    .locals 1

    if-nez p3, :cond_0

    iget-object v0, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    :cond_0
    invoke-interface {p1, p2, p0}, Lq4/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_1

    iget-object p1, p0, Ls4/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_1
    return-object p0
.end method
