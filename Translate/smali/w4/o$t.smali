.class Lw4/o$t;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method

.method private f(La5/a;La5/b;)Lcom/google/gson/i;
    .locals 1

    sget-object p0, Lw4/o$b0;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    sget-object p0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/gson/o;

    invoke-virtual {p1}, La5/a;->v0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/gson/o;

    invoke-virtual {p1}, La5/a;->J0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p1}, La5/a;->J0()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/o;

    new-instance p2, Lcom/google/gson/internal/g;

    invoke-direct {p2, p0}, Lcom/google/gson/internal/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/gson/o;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method private g(La5/a;La5/b;)Lcom/google/gson/i;
    .locals 0

    sget-object p0, Lw4/o$b0;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x4

    if-eq p0, p2, :cond_1

    const/4 p2, 0x5

    if-eq p0, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, La5/a;->i()V

    new-instance p0, Lcom/google/gson/l;

    invoke-direct {p0}, Lcom/google/gson/l;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p1}, La5/a;->c()V

    new-instance p0, Lcom/google/gson/f;

    invoke-direct {p0}, Lcom/google/gson/f;-><init>()V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw4/o$t;->e(La5/a;)Lcom/google/gson/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/gson/i;

    invoke-virtual {p0, p1, p2}, Lw4/o$t;->h(La5/c;Lcom/google/gson/i;)V

    return-void
.end method

.method public e(La5/a;)Lcom/google/gson/i;
    .locals 6

    instance-of v0, p1, Lw4/f;

    if-eqz v0, :cond_0

    check-cast p1, Lw4/f;

    invoke-virtual {p1}, Lw4/f;->Y0()Lcom/google/gson/i;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lw4/o$t;->g(La5/a;La5/b;)Lcom/google/gson/i;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lw4/o$t;->f(La5/a;La5/b;)Lcom/google/gson/i;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_2
    :goto_0
    invoke-virtual {p1}, La5/a;->X()Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, v1, Lcom/google/gson/l;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, La5/a;->F0()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lw4/o$t;->g(La5/a;La5/b;)Lcom/google/gson/i;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_5

    invoke-direct {p0, p1, v3}, Lw4/o$t;->f(La5/a;La5/b;)Lcom/google/gson/i;

    move-result-object v4

    :cond_5
    instance-of v3, v1, Lcom/google/gson/f;

    if-eqz v3, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/google/gson/f;

    invoke-virtual {v2, v4}, Lcom/google/gson/f;->m(Lcom/google/gson/i;)V

    goto :goto_3

    :cond_6
    move-object v3, v1

    check-cast v3, Lcom/google/gson/l;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/l;->m(Ljava/lang/String;Lcom/google/gson/i;)V

    :goto_3
    if-eqz v5, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_0

    :cond_7
    instance-of v2, v1, Lcom/google/gson/f;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, La5/a;->B()V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, La5/a;->D()V

    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v1

    :cond_9
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/i;

    goto :goto_0
.end method

.method public h(La5/c;Lcom/google/gson/i;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/google/gson/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/i;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/i;->f()Lcom/google/gson/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/o;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/o;->m()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, La5/c;->N0(Ljava/lang/Number;)La5/c;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/o;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/o;->a()Z

    move-result p0

    invoke-virtual {p1, p0}, La5/c;->P0(Z)La5/c;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/o;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, La5/c;->O0(Ljava/lang/String;)La5/c;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/i;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, La5/c;->k()La5/c;

    invoke-virtual {p2}, Lcom/google/gson/i;->d()Lcom/google/gson/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/f;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/i;

    invoke-virtual {p0, p1, v0}, Lw4/o$t;->h(La5/c;Lcom/google/gson/i;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, La5/c;->B()La5/c;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/i;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, La5/c;->v()La5/c;

    invoke-virtual {p2}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/l;->o()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La5/c;->a0(Ljava/lang/String;)La5/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/i;

    invoke-virtual {p0, p1, v0}, Lw4/o$t;->h(La5/c;Lcom/google/gson/i;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, La5/c;->D()La5/c;

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p1}, La5/c;->q0()La5/c;

    :goto_3
    return-void
.end method
