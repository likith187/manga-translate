.class public final Lcom/google/gson/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/gson/internal/d;

.field private b:Lcom/google/gson/r;

.field private c:Lcom/google/gson/c;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/gson/u;

.field private s:Lcom/google/gson/u;

.field private final t:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/gson/internal/d;->j:Lcom/google/gson/internal/d;

    iput-object v0, p0, Lcom/google/gson/e;->a:Lcom/google/gson/internal/d;

    sget-object v0, Lcom/google/gson/r;->DEFAULT:Lcom/google/gson/r;

    iput-object v0, p0, Lcom/google/gson/e;->b:Lcom/google/gson/r;

    sget-object v0, Lcom/google/gson/b;->IDENTITY:Lcom/google/gson/b;

    iput-object v0, p0, Lcom/google/gson/e;->c:Lcom/google/gson/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/e;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/e;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/e;->g:Z

    sget-object v1, Lcom/google/gson/d;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/gson/e;->h:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/gson/e;->i:I

    iput v1, p0, Lcom/google/gson/e;->j:I

    iput-boolean v0, p0, Lcom/google/gson/e;->k:Z

    iput-boolean v0, p0, Lcom/google/gson/e;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/gson/e;->m:Z

    iput-boolean v0, p0, Lcom/google/gson/e;->n:Z

    iput-boolean v0, p0, Lcom/google/gson/e;->o:Z

    iput-boolean v0, p0, Lcom/google/gson/e;->p:Z

    iput-boolean v1, p0, Lcom/google/gson/e;->q:Z

    sget-object v0, Lcom/google/gson/d;->B:Lcom/google/gson/u;

    iput-object v0, p0, Lcom/google/gson/e;->r:Lcom/google/gson/u;

    sget-object v0, Lcom/google/gson/d;->C:Lcom/google/gson/u;

    iput-object v0, p0, Lcom/google/gson/e;->s:Lcom/google/gson/u;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/e;->t:Ljava/util/LinkedList;

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .locals 3

    sget-boolean p0, Lz4/d;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p2, Lw4/d$b;->b:Lw4/d$b;

    invoke-virtual {p2, p1}, Lw4/d$b;->b(Ljava/lang/String;)Lcom/google/gson/w;

    move-result-object p2

    if-eqz p0, :cond_0

    sget-object p3, Lz4/d;->c:Lw4/d$b;

    invoke-virtual {p3, p1}, Lw4/d$b;->b(Ljava/lang/String;)Lcom/google/gson/w;

    move-result-object v0

    sget-object p3, Lz4/d;->b:Lw4/d$b;

    invoke-virtual {p3, p1}, Lw4/d$b;->b(Ljava/lang/String;)Lcom/google/gson/w;

    move-result-object p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    if-eq p3, p1, :cond_3

    sget-object p1, Lw4/d$b;->b:Lw4/d$b;

    invoke-virtual {p1, p2, p3}, Lw4/d$b;->a(II)Lcom/google/gson/w;

    move-result-object p1

    if-eqz p0, :cond_2

    sget-object v0, Lz4/d;->c:Lw4/d$b;

    invoke-virtual {v0, p2, p3}, Lw4/d$b;->a(II)Lcom/google/gson/w;

    move-result-object v0

    sget-object v1, Lz4/d;->b:Lw4/d$b;

    invoke-virtual {v1, p2, p3}, Lw4/d$b;->a(II)Lcom/google/gson/w;

    move-result-object p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_2
    move-object p2, p1

    goto :goto_0

    :goto_1
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_3

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public b()Lcom/google/gson/d;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v19, v1

    iget-object v2, v0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/gson/e;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/gson/e;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/google/gson/e;->h:Ljava/lang/String;

    iget v3, v0, Lcom/google/gson/e;->i:I

    iget v4, v0, Lcom/google/gson/e;->j:I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;IILjava/util/List;)V

    new-instance v23, Lcom/google/gson/d;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/google/gson/e;->a:Lcom/google/gson/internal/d;

    iget-object v3, v0, Lcom/google/gson/e;->c:Lcom/google/gson/c;

    new-instance v5, Ljava/util/HashMap;

    move-object v4, v5

    iget-object v6, v0, Lcom/google/gson/e;->d:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v5, v0, Lcom/google/gson/e;->g:Z

    iget-boolean v6, v0, Lcom/google/gson/e;->k:Z

    iget-boolean v7, v0, Lcom/google/gson/e;->o:Z

    iget-boolean v8, v0, Lcom/google/gson/e;->m:Z

    iget-boolean v9, v0, Lcom/google/gson/e;->n:Z

    iget-boolean v10, v0, Lcom/google/gson/e;->p:Z

    iget-boolean v11, v0, Lcom/google/gson/e;->l:Z

    iget-boolean v12, v0, Lcom/google/gson/e;->q:Z

    iget-object v13, v0, Lcom/google/gson/e;->b:Lcom/google/gson/r;

    iget-object v14, v0, Lcom/google/gson/e;->h:Ljava/lang/String;

    iget v15, v0, Lcom/google/gson/e;->i:I

    move-object/from16 v24, v1

    iget v1, v0, Lcom/google/gson/e;->j:I

    move/from16 v16, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v17, v1

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-object v2, v0, Lcom/google/gson/e;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/google/gson/e;->r:Lcom/google/gson/u;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/gson/e;->s:Lcom/google/gson/u;

    move-object/from16 v21, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v22, v1

    iget-object v0, v0, Lcom/google/gson/e;->t:Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v22}, Lcom/google/gson/d;-><init>(Lcom/google/gson/internal/d;Lcom/google/gson/c;Ljava/util/Map;ZZZZZZZZLcom/google/gson/r;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/u;Lcom/google/gson/u;Ljava/util/List;)V

    return-object v23
.end method

.method public c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Lcom/google/gson/h;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/gson/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/gson/internal/a;->a(Z)V

    instance-of v0, p2, Lcom/google/gson/h;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lw4/m;->g(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p2, Lcom/google/gson/v;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    check-cast p2, Lcom/google/gson/v;

    invoke-static {p1, p2}, Lw4/o;->a(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p1

    iget-object p2, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public d()Lcom/google/gson/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/e;->l:Z

    return-object p0
.end method

.method public e()Lcom/google/gson/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/e;->n:Z

    return-object p0
.end method
