.class public final Lcom/google/gson/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/d$f;
    }
.end annotation


# static fields
.field static final A:Lcom/google/gson/c;

.field static final B:Lcom/google/gson/u;

.field static final C:Lcom/google/gson/u;

.field static final z:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/ThreadLocal;

.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Lcom/google/gson/internal/c;

.field private final d:Lw4/e;

.field final e:Ljava/util/List;

.field final f:Lcom/google/gson/internal/d;

.field final g:Lcom/google/gson/c;

.field final h:Ljava/util/Map;

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Z

.field final m:Z

.field final n:Z

.field final o:Z

.field final p:Z

.field final q:Ljava/lang/String;

.field final r:I

.field final s:I

.field final t:Lcom/google/gson/r;

.field final u:Ljava/util/List;

.field final v:Ljava/util/List;

.field final w:Lcom/google/gson/u;

.field final x:Lcom/google/gson/u;

.field final y:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/gson/b;->IDENTITY:Lcom/google/gson/b;

    sput-object v0, Lcom/google/gson/d;->A:Lcom/google/gson/c;

    sget-object v0, Lcom/google/gson/t;->DOUBLE:Lcom/google/gson/t;

    sput-object v0, Lcom/google/gson/d;->B:Lcom/google/gson/u;

    sget-object v0, Lcom/google/gson/t;->LAZILY_PARSED_NUMBER:Lcom/google/gson/t;

    sput-object v0, Lcom/google/gson/d;->C:Lcom/google/gson/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/gson/internal/d;->j:Lcom/google/gson/internal/d;

    sget-object v2, Lcom/google/gson/d;->A:Lcom/google/gson/c;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v12, Lcom/google/gson/r;->DEFAULT:Lcom/google/gson/r;

    sget-object v13, Lcom/google/gson/d;->z:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    sget-object v19, Lcom/google/gson/d;->B:Lcom/google/gson/u;

    sget-object v20, Lcom/google/gson/d;->C:Lcom/google/gson/u;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x2

    .line 6
    invoke-direct/range {v0 .. v21}, Lcom/google/gson/d;-><init>(Lcom/google/gson/internal/d;Lcom/google/gson/c;Ljava/util/Map;ZZZZZZZZLcom/google/gson/r;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/u;Lcom/google/gson/u;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/gson/internal/d;Lcom/google/gson/c;Ljava/util/Map;ZZZZZZZZLcom/google/gson/r;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/u;Lcom/google/gson/u;Ljava/util/List;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p10

    move/from16 v5, p11

    move-object/from16 v6, p21

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, v0, Lcom/google/gson/d;->a:Ljava/lang/ThreadLocal;

    .line 9
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, v0, Lcom/google/gson/d;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    iput-object v1, v0, Lcom/google/gson/d;->f:Lcom/google/gson/internal/d;

    move-object v7, p2

    .line 11
    iput-object v7, v0, Lcom/google/gson/d;->g:Lcom/google/gson/c;

    .line 12
    iput-object v2, v0, Lcom/google/gson/d;->h:Ljava/util/Map;

    .line 13
    new-instance v8, Lcom/google/gson/internal/c;

    invoke-direct {v8, v2, v5, v6}, Lcom/google/gson/internal/c;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object v8, v0, Lcom/google/gson/d;->c:Lcom/google/gson/internal/c;

    move/from16 v2, p4

    .line 14
    iput-boolean v2, v0, Lcom/google/gson/d;->i:Z

    .line 15
    iput-boolean v3, v0, Lcom/google/gson/d;->j:Z

    move/from16 v2, p6

    .line 16
    iput-boolean v2, v0, Lcom/google/gson/d;->k:Z

    move/from16 v2, p7

    .line 17
    iput-boolean v2, v0, Lcom/google/gson/d;->l:Z

    move/from16 v2, p8

    .line 18
    iput-boolean v2, v0, Lcom/google/gson/d;->m:Z

    move/from16 v2, p9

    .line 19
    iput-boolean v2, v0, Lcom/google/gson/d;->n:Z

    .line 20
    iput-boolean v4, v0, Lcom/google/gson/d;->o:Z

    .line 21
    iput-boolean v5, v0, Lcom/google/gson/d;->p:Z

    move-object/from16 v2, p12

    .line 22
    iput-object v2, v0, Lcom/google/gson/d;->t:Lcom/google/gson/r;

    move-object/from16 v5, p13

    .line 23
    iput-object v5, v0, Lcom/google/gson/d;->q:Ljava/lang/String;

    move/from16 v5, p14

    .line 24
    iput v5, v0, Lcom/google/gson/d;->r:I

    move/from16 v5, p15

    .line 25
    iput v5, v0, Lcom/google/gson/d;->s:I

    move-object/from16 v5, p16

    .line 26
    iput-object v5, v0, Lcom/google/gson/d;->u:Ljava/util/List;

    move-object/from16 v5, p17

    .line 27
    iput-object v5, v0, Lcom/google/gson/d;->v:Ljava/util/List;

    move-object/from16 v5, p19

    .line 28
    iput-object v5, v0, Lcom/google/gson/d;->w:Lcom/google/gson/u;

    move-object/from16 v9, p20

    .line 29
    iput-object v9, v0, Lcom/google/gson/d;->x:Lcom/google/gson/u;

    .line 30
    iput-object v6, v0, Lcom/google/gson/d;->y:Ljava/util/List;

    .line 31
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 32
    sget-object v11, Lw4/o;->W:Lcom/google/gson/w;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static/range {p19 .. p19}, Lw4/j;->e(Lcom/google/gson/u;)Lcom/google/gson/w;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-interface {v10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p18

    .line 35
    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    sget-object v5, Lw4/o;->C:Lcom/google/gson/w;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v5, Lw4/o;->m:Lcom/google/gson/w;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v5, Lw4/o;->g:Lcom/google/gson/w;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v5, Lw4/o;->i:Lcom/google/gson/w;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v5, Lw4/o;->k:Lcom/google/gson/w;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static/range {p12 .. p12}, Lcom/google/gson/d;->r(Lcom/google/gson/r;)Lcom/google/gson/v;

    move-result-object v2

    .line 42
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Long;

    invoke-static {v5, v11, v2}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Double;

    .line 44
    invoke-direct {p0, v4}, Lcom/google/gson/d;->e(Z)Lcom/google/gson/v;

    move-result-object v12

    .line 45
    invoke-static {v5, v11, v12}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    .line 47
    invoke-direct {p0, v4}, Lcom/google/gson/d;->f(Z)Lcom/google/gson/v;

    move-result-object v4

    .line 48
    invoke-static {v5, v11, v4}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static/range {p20 .. p20}, Lw4/i;->e(Lcom/google/gson/u;)Lcom/google/gson/w;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v4, Lw4/o;->o:Lcom/google/gson/w;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v4, Lw4/o;->q:Lcom/google/gson/w;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcom/google/gson/d;->b(Lcom/google/gson/v;)Lcom/google/gson/v;

    move-result-object v5

    invoke-static {v4, v5}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/google/gson/d;->c(Lcom/google/gson/v;)Lcom/google/gson/v;

    move-result-object v2

    invoke-static {v4, v2}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v2, Lw4/o;->s:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v2, Lw4/o;->x:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v2, Lw4/o;->E:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v2, Lw4/o;->G:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-class v2, Ljava/math/BigDecimal;

    sget-object v4, Lw4/o;->z:Lcom/google/gson/v;

    invoke-static {v2, v4}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const-class v2, Ljava/math/BigInteger;

    sget-object v4, Lw4/o;->A:Lcom/google/gson/v;

    invoke-static {v2, v4}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    const-class v2, Lcom/google/gson/internal/g;

    sget-object v4, Lw4/o;->B:Lcom/google/gson/v;

    invoke-static {v2, v4}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v2, Lw4/o;->I:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v2, Lw4/o;->K:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v2, Lw4/o;->O:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v2, Lw4/o;->Q:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v2, Lw4/o;->U:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v2, Lw4/o;->M:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v2, Lw4/o;->d:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v2, Lw4/c;->b:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v2, Lw4/o;->S:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-boolean v2, Lz4/d;->a:Z

    if-eqz v2, :cond_0

    .line 71
    sget-object v2, Lz4/d;->e:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v2, Lz4/d;->d:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v2, Lz4/d;->f:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    sget-object v2, Lw4/a;->c:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v2, Lw4/o;->b:Lcom/google/gson/w;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lw4/b;

    invoke-direct {v2, v8}, Lw4/b;-><init>(Lcom/google/gson/internal/c;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lw4/h;

    invoke-direct {v2, v8, v3}, Lw4/h;-><init>(Lcom/google/gson/internal/c;Z)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lw4/e;

    invoke-direct {v2, v8}, Lw4/e;-><init>(Lcom/google/gson/internal/c;)V

    iput-object v2, v0, Lcom/google/gson/d;->d:Lw4/e;

    .line 79
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v3, Lw4/o;->X:Lcom/google/gson/w;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v3, Lw4/k;

    move-object/from16 p3, v3

    move-object/from16 p4, v8

    move-object/from16 p5, p2

    move-object/from16 p6, p1

    move-object/from16 p7, v2

    move-object/from16 p8, p21

    invoke-direct/range {p3 .. p8}, Lw4/k;-><init>(Lcom/google/gson/internal/c;Lcom/google/gson/c;Lcom/google/gson/internal/d;Lw4/e;Ljava/util/List;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gson/d;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;La5/a;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object p0

    sget-object p1, La5/b;->END_DOCUMENT:La5/b;

    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Lcom/google/gson/q;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/google/gson/q;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch La5/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/google/gson/q;

    invoke-direct {p1, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private static b(Lcom/google/gson/v;)Lcom/google/gson/v;
    .locals 1

    new-instance v0, Lcom/google/gson/d$d;

    invoke-direct {v0, p0}, Lcom/google/gson/d$d;-><init>(Lcom/google/gson/v;)V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/gson/v;)Lcom/google/gson/v;
    .locals 1

    new-instance v0, Lcom/google/gson/d$e;

    invoke-direct {v0, p0}, Lcom/google/gson/d$e;-><init>(Lcom/google/gson/v;)V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object p0

    return-object p0
.end method

.method static d(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Z)Lcom/google/gson/v;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lw4/o;->v:Lcom/google/gson/v;

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/gson/d$a;

    invoke-direct {p1, p0}, Lcom/google/gson/d$a;-><init>(Lcom/google/gson/d;)V

    return-object p1
.end method

.method private f(Z)Lcom/google/gson/v;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lw4/o;->u:Lcom/google/gson/v;

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/gson/d$b;

    invoke-direct {p1, p0}, Lcom/google/gson/d$b;-><init>(Lcom/google/gson/d;)V

    return-object p1
.end method

.method private static r(Lcom/google/gson/r;)Lcom/google/gson/v;
    .locals 1

    sget-object v0, Lcom/google/gson/r;->DEFAULT:Lcom/google/gson/r;

    if-ne p0, v0, :cond_0

    sget-object p0, Lw4/o;->t:Lcom/google/gson/v;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/d$c;

    invoke-direct {p0}, Lcom/google/gson/d$c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p3}, Lcom/google/gson/internal/m;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/gson/d;->t(Ljava/io/Writer;)La5/c;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/d;->z(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public B(Ljava/lang/Object;)Lcom/google/gson/i;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/d;->C(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/i;

    move-result-object p0

    return-object p0
.end method

.method public C(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/i;
    .locals 1

    new-instance v0, Lw4/g;

    invoke-direct {v0}, Lw4/g;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/d;->z(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/c;)V

    invoke-virtual {v0}, Lw4/g;->R0()Lcom/google/gson/i;

    move-result-object p0

    return-object p0
.end method

.method public g(La5/a;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, La5/a;->a0()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, La5/a;->Q0(Z)V

    :try_start_0
    invoke-virtual {p1}, La5/a;->L0()La5/b;

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/google/gson/d;->o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, La5/a;->Q0(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssertionError (GSON 2.10.1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lcom/google/gson/q;

    invoke-direct {p2, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Lcom/google/gson/q;

    invoke-direct {p2, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, La5/a;->Q0(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_2
    new-instance p2, Lcom/google/gson/q;

    invoke-direct {p2, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-virtual {p1, v0}, La5/a;->Q0(Z)V

    throw p0
.end method

.method public h(Lcom/google/gson/i;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lw4/f;

    invoke-direct {v0, p1}, Lw4/f;-><init>(Lcom/google/gson/i;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/d;->g(La5/a;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/d;->h(Lcom/google/gson/i;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/d;->s(Ljava/io/Reader;)La5/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/d;->g(La5/a;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/gson/d;->a(Ljava/lang/Object;La5/a;)V

    return-object p0
.end method

.method public k(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/d;->j(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2}, Lcom/google/gson/internal/k;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/d;->j(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/d;->l(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2}, Lcom/google/gson/internal/k;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/d;->l(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 6

    const-string v0, "type must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/gson/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/v;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/gson/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/v;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    new-instance v2, Lcom/google/gson/d$f;

    invoke-direct {v2}, Lcom/google/gson/d$f;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/w;

    invoke-interface {v4, p0, p1}, Lcom/google/gson/w;->a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lcom/google/gson/d$f;->g(Lcom/google/gson/v;)V

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/gson/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/google/gson/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_6
    return-object v4

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON (2.10.1) cannot handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/google/gson/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_8
    throw p1
.end method

.method public p(Ljava/lang/Class;)Lcom/google/gson/v;
    .locals 0

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/gson/d;->o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object p0

    return-object p0
.end method

.method public q(Lcom/google/gson/w;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/gson/d;->d:Lw4/e;

    :cond_0
    iget-object v0, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/w;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/google/gson/w;->a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GSON cannot serialize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s(Ljava/io/Reader;)La5/a;
    .locals 1

    new-instance v0, La5/a;

    invoke-direct {v0, p1}, La5/a;-><init>(Ljava/io/Reader;)V

    iget-boolean p0, p0, Lcom/google/gson/d;->n:Z

    invoke-virtual {v0, p0}, La5/a;->Q0(Z)V

    return-object v0
.end method

.method public t(Ljava/io/Writer;)La5/c;
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/d;->k:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, La5/c;

    invoke-direct {v0, p1}, La5/c;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/google/gson/d;->m:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, La5/c;->G0(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lcom/google/gson/d;->l:Z

    invoke-virtual {v0, p1}, La5/c;->F0(Z)V

    iget-boolean p1, p0, Lcom/google/gson/d;->n:Z

    invoke-virtual {v0, p1}, La5/c;->H0(Z)V

    iget-boolean p0, p0, Lcom/google/gson/d;->i:Z

    invoke-virtual {v0, p0}, La5/c;->I0(Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{serializeNulls:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/gson/d;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/gson/d;->c:Lcom/google/gson/internal/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Lcom/google/gson/i;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/d;->y(Lcom/google/gson/i;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    invoke-virtual {p0, p1}, Lcom/google/gson/d;->u(Lcom/google/gson/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/d;->w(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/d;->A(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x(Lcom/google/gson/i;La5/c;)V
    .locals 5

    invoke-virtual {p2}, La5/c;->N()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, La5/c;->H0(Z)V

    invoke-virtual {p2}, La5/c;->I()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/gson/d;->l:Z

    invoke-virtual {p2, v2}, La5/c;->F0(Z)V

    invoke-virtual {p2}, La5/c;->G()Z

    move-result v2

    iget-boolean p0, p0, Lcom/google/gson/d;->i:Z

    invoke-virtual {p2, p0}, La5/c;->I0(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/gson/internal/m;->b(Lcom/google/gson/i;La5/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, La5/c;->H0(Z)V

    invoke-virtual {p2, v1}, La5/c;->F0(Z)V

    invoke-virtual {p2, v2}, La5/c;->I0(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.10.1): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2, v0}, La5/c;->H0(Z)V

    invoke-virtual {p2, v1}, La5/c;->F0(Z)V

    invoke-virtual {p2, v2}, La5/c;->I0(Z)V

    throw p0
.end method

.method public y(Lcom/google/gson/i;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Lcom/google/gson/internal/m;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/gson/d;->t(Ljava/io/Writer;)La5/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/d;->x(Lcom/google/gson/i;La5/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public z(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/c;)V
    .locals 4

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/gson/d;->o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object p2

    invoke-virtual {p3}, La5/c;->N()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, La5/c;->H0(Z)V

    invoke-virtual {p3}, La5/c;->I()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/gson/d;->l:Z

    invoke-virtual {p3, v2}, La5/c;->F0(Z)V

    invoke-virtual {p3}, La5/c;->G()Z

    move-result v2

    iget-boolean p0, p0, Lcom/google/gson/d;->i:Z

    invoke-virtual {p3, p0}, La5/c;->I0(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, La5/c;->H0(Z)V

    invoke-virtual {p3, v1}, La5/c;->F0(Z)V

    invoke-virtual {p3, v2}, La5/c;->I0(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.10.1): "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, La5/c;->H0(Z)V

    invoke-virtual {p3, v1}, La5/c;->F0(Z)V

    invoke-virtual {p3, v2}, La5/c;->I0(Z)V

    throw p0
.end method
