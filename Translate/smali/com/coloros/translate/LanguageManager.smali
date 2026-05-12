.class public final Lcom/coloros/translate/LanguageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/LanguageManager$d;
    }
.end annotation


# static fields
.field private static final A:Ln8/j;

.field private static final B:Ln8/j;

.field public static final w:Lcom/coloros/translate/LanguageManager$d;

.field private static final x:Lcom/coloros/translate/b;

.field private static final y:Lcom/coloros/translate/b;

.field private static final z:Ln8/j;


# instance fields
.field private final a:Landroid/util/ArrayMap;

.field private final b:Ljava/util/ArrayList;

.field private final c:Landroid/util/ArrayMap;

.field private final d:Landroid/util/ArrayMap;

.field private final e:Landroid/util/ArrayMap;

.field private f:Landroid/util/ArrayMap;

.field private g:Landroid/util/ArrayMap;

.field private h:Landroid/util/ArrayMap;

.field private final i:Landroid/util/ArrayMap;

.field private final j:Ln8/j;

.field private final k:Ln8/j;

.field private l:Lcom/coloros/translate/b;

.field private m:Lcom/coloros/translate/b;

.field private n:Lcom/coloros/translate/b;

.field private o:Lcom/coloros/translate/b;

.field private volatile p:Lcom/coloros/translate/d;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/LanguageManager$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/LanguageManager$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    sget-object v0, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    sput-object v0, Lcom/coloros/translate/LanguageManager;->x:Lcom/coloros/translate/b;

    sput-object v0, Lcom/coloros/translate/LanguageManager;->y:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/LanguageManager$c;->INSTANCE:Lcom/coloros/translate/LanguageManager$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/LanguageManager;->z:Ln8/j;

    sget-object v0, Lcom/coloros/translate/LanguageManager$a;->INSTANCE:Lcom/coloros/translate/LanguageManager$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/LanguageManager;->A:Ln8/j;

    sget-object v0, Lcom/coloros/translate/LanguageManager$b;->INSTANCE:Lcom/coloros/translate/LanguageManager$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/LanguageManager;->B:Ln8/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->i:Landroid/util/ArrayMap;

    sget-object v0, Lcom/coloros/translate/LanguageManager$h;->INSTANCE:Lcom/coloros/translate/LanguageManager$h;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->j:Ln8/j;

    sget-object v0, Lcom/coloros/translate/LanguageManager$i;->INSTANCE:Lcom/coloros/translate/LanguageManager$i;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->k:Ln8/j;

    sget-object v0, Lcom/coloros/translate/LanguageManager;->x:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    sget-object v1, Lcom/coloros/translate/LanguageManager;->y:Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->n:Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/LanguageManager;->o:Lcom/coloros/translate/b;

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->v:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Lcom/coloros/translate/utils/p;->INSTANCE:Lcom/coloros/translate/utils/p;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->K()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->L()V

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->H()V

    return-void
.end method

.method private final A(Ljava/util/List;Ljava/util/List;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 7

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2}, Lcom/coloros/translate/LanguageManager;->x(Landroid/util/ArrayMap;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v5}, Lcom/coloros/translate/LanguageManager;->A(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static final E(Lcom/coloros/translate/LanguageManager;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->p:Lcom/coloros/translate/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/coloros/translate/d;->i(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyLanguageChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LanguageManager"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final G(Lcom/coloros/translate/LanguageManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coloros/translate/LanguageManager;->W(Z)V

    return-void
.end method

.method private final H()V
    .locals 2

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    new-instance v1, Lcom/coloros/translate/LanguageManager$f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/LanguageManager$f;-><init>(Lcom/coloros/translate/LanguageManager;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/e;->l(Lcom/coloros/translate/observer/e$a;)V

    return-void
.end method

.method private final I()V
    .locals 12

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    move-object v6, v0

    invoke-static/range {v5 .. v11}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final J()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->u()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/coloros/translate/LanguageManager;->s(Ljava/lang/String;)Lcom/coloros/translate/b;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/coloros/translate/LanguageManager;->s(Ljava/lang/String;)Lcom/coloros/translate/b;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/LanguageManager;->z(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/LanguageManager;->u:Z

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    const-string v1, "si"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/coloros/translate/LanguageManager;->y:Lcom/coloros/translate/b;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/coloros/translate/LanguageManager;->x:Lcom/coloros/translate/b;

    :goto_1
    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coloros/translate/LanguageManager;->x:Lcom/coloros/translate/b;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/coloros/translate/LanguageManager;->y:Lcom/coloros/translate/b;

    :goto_2
    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/LanguageManager;->u:Z

    :goto_3
    return-void
.end method

.method private final K()V
    .locals 50

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->i:Landroid/util/ArrayMap;

    const-string v2, "auto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v33, "pa"

    const-string v34, "tl"

    const-string v3, "zh"

    const-string v4, "zh-TW"

    const-string v5, "en"

    const-string v6, "ja"

    const-string v7, "ko"

    const-string v8, "it"

    const-string v9, "fr"

    const-string v10, "es"

    const-string v11, "es-MX"

    const-string v12, "pt"

    const-string v13, "pt-BR"

    const-string v14, "vi"

    const-string v15, "th"

    const-string v16, "ms"

    const-string v17, "id"

    const-string v18, "hi"

    const-string v19, "ru"

    const-string v20, "de"

    const-string v21, "ur"

    const-string v22, "ar"

    const-string v23, "km"

    const-string v24, "bn"

    const-string v25, "tr"

    const-string v26, "pl"

    const-string v27, "kn"

    const-string v28, "mr"

    const-string v29, "gu"

    const-string v30, "ta"

    const-string v31, "ml"

    const-string v32, "te"

    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v24, "pl"

    const-string v25, "tl"

    const-string v2, "zh-TW"

    const-string v3, "en"

    const-string v4, "ja"

    const-string v5, "ko"

    const-string v6, "it"

    const-string v7, "fr"

    const-string v8, "es"

    const-string v9, "es-MX"

    const-string v10, "pt"

    const-string v11, "pt-BR"

    const-string v12, "vi"

    const-string v13, "th"

    const-string v14, "ms"

    const-string v15, "id"

    const-string v16, "hi"

    const-string v17, "ru"

    const-string v18, "de"

    const-string v19, "ur"

    const-string v20, "ar"

    const-string v21, "km"

    const-string v22, "bn"

    const-string v23, "tr"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "zh"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v26, "pl"

    const-string v27, "tl"

    const-string v4, "zh"

    const-string v5, "en"

    const-string v6, "ja"

    const-string v7, "ko"

    const-string v8, "it"

    const-string v9, "fr"

    const-string v10, "es"

    const-string v11, "es-MX"

    const-string v12, "pt"

    const-string v13, "pt-BR"

    const-string v14, "vi"

    const-string v15, "th"

    const-string v16, "ms"

    const-string v17, "id"

    const-string v18, "hi"

    const-string v19, "ru"

    const-string v20, "de"

    const-string v21, "ur"

    const-string v22, "ar"

    const-string v23, "km"

    const-string v24, "bn"

    const-string v25, "tr"

    filled-new-array/range {v4 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "zh-TW"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v27, "pl"

    const-string v28, "tl"

    const-string v5, "zh"

    const-string v6, "zh-TW"

    const-string v7, "ja"

    const-string v8, "ko"

    const-string v9, "it"

    const-string v10, "fr"

    const-string v11, "es"

    const-string v12, "es-MX"

    const-string v13, "pt"

    const-string v14, "pt-BR"

    const-string v15, "vi"

    const-string v16, "th"

    const-string v17, "ms"

    const-string v18, "id"

    const-string v19, "hi"

    const-string v20, "ru"

    const-string v21, "de"

    const-string v22, "ur"

    const-string v23, "ar"

    const-string v24, "km"

    const-string v25, "bn"

    const-string v26, "tr"

    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "en"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v28, "pl"

    const-string v29, "tl"

    const-string v6, "zh"

    const-string v7, "zh-TW"

    const-string v8, "en"

    const-string v9, "ko"

    const-string v10, "it"

    const-string v11, "fr"

    const-string v12, "es"

    const-string v13, "es-MX"

    const-string v14, "pt"

    const-string v15, "pt-BR"

    const-string v16, "vi"

    const-string v17, "th"

    const-string v18, "ms"

    const-string v19, "id"

    const-string v20, "hi"

    const-string v21, "ru"

    const-string v22, "de"

    const-string v23, "ur"

    const-string v24, "ar"

    const-string v25, "km"

    const-string v26, "bn"

    const-string v27, "tr"

    filled-new-array/range {v6 .. v29}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "ja"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v29, "pl"

    const-string v30, "tl"

    const-string v7, "zh"

    const-string v8, "zh-TW"

    const-string v9, "en"

    const-string v10, "ja"

    const-string v11, "it"

    const-string v12, "fr"

    const-string v13, "es"

    const-string v14, "es-MX"

    const-string v15, "pt"

    const-string v16, "pt-BR"

    const-string v17, "vi"

    const-string v18, "th"

    const-string v19, "ms"

    const-string v20, "id"

    const-string v21, "hi"

    const-string v22, "ru"

    const-string v23, "de"

    const-string v24, "ur"

    const-string v25, "ar"

    const-string v26, "km"

    const-string v27, "bn"

    const-string v28, "tr"

    filled-new-array/range {v7 .. v30}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v7, "ko"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v30, "pl"

    const-string v31, "tl"

    const-string v8, "zh"

    const-string v9, "zh-TW"

    const-string v10, "en"

    const-string v11, "ja"

    const-string v12, "ko"

    const-string v13, "fr"

    const-string v14, "es"

    const-string v15, "es-MX"

    const-string v16, "pt"

    const-string v17, "pt-BR"

    const-string v18, "vi"

    const-string v19, "th"

    const-string v20, "ms"

    const-string v21, "id"

    const-string v22, "hi"

    const-string v23, "ru"

    const-string v24, "de"

    const-string v25, "ur"

    const-string v26, "ar"

    const-string v27, "km"

    const-string v28, "bn"

    const-string v29, "tr"

    filled-new-array/range {v8 .. v31}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v8, "it"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v31, "pl"

    const-string v32, "tl"

    const-string v9, "zh"

    const-string v10, "zh-TW"

    const-string v11, "en"

    const-string v12, "ja"

    const-string v13, "ko"

    const-string v14, "it"

    const-string v15, "es"

    const-string v16, "es-MX"

    const-string v17, "pt"

    const-string v18, "pt-BR"

    const-string v19, "vi"

    const-string v20, "th"

    const-string v21, "ms"

    const-string v22, "id"

    const-string v23, "hi"

    const-string v24, "ru"

    const-string v25, "de"

    const-string v26, "ur"

    const-string v27, "ar"

    const-string v28, "km"

    const-string v29, "bn"

    const-string v30, "tr"

    filled-new-array/range {v9 .. v32}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v9, "fr"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v32, "pl"

    const-string v33, "tl"

    const-string v10, "zh"

    const-string v11, "zh-TW"

    const-string v12, "en"

    const-string v13, "ja"

    const-string v14, "ko"

    const-string v15, "it"

    const-string v16, "fr"

    const-string v17, "es-MX"

    const-string v18, "pt"

    const-string v19, "pt-BR"

    const-string v20, "vi"

    const-string v21, "th"

    const-string v22, "ms"

    const-string v23, "id"

    const-string v24, "hi"

    const-string v25, "ru"

    const-string v26, "de"

    const-string v27, "ur"

    const-string v28, "ar"

    const-string v29, "km"

    const-string v30, "bn"

    const-string v31, "tr"

    filled-new-array/range {v10 .. v33}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v10, "es"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v33, "pl"

    const-string v34, "tl"

    const-string v11, "zh"

    const-string v12, "zh-TW"

    const-string v13, "en"

    const-string v14, "ja"

    const-string v15, "ko"

    const-string v16, "it"

    const-string v17, "fr"

    const-string v18, "es"

    const-string v19, "pt"

    const-string v20, "pt-BR"

    const-string v21, "vi"

    const-string v22, "th"

    const-string v23, "ms"

    const-string v24, "id"

    const-string v25, "hi"

    const-string v26, "ru"

    const-string v27, "de"

    const-string v28, "ur"

    const-string v29, "ar"

    const-string v30, "km"

    const-string v31, "bn"

    const-string v32, "tr"

    filled-new-array/range {v11 .. v34}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v11, "es-MX"

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v34, "pl"

    const-string v35, "tl"

    const-string v12, "zh"

    const-string v13, "zh-TW"

    const-string v14, "en"

    const-string v15, "ja"

    const-string v16, "ko"

    const-string v17, "it"

    const-string v18, "fr"

    const-string v19, "es"

    const-string v20, "es-MX"

    const-string v21, "pt-BR"

    const-string v22, "vi"

    const-string v23, "th"

    const-string v24, "ms"

    const-string v25, "id"

    const-string v26, "hi"

    const-string v27, "ru"

    const-string v28, "de"

    const-string v29, "ur"

    const-string v30, "ar"

    const-string v31, "km"

    const-string v32, "bn"

    const-string v33, "tr"

    filled-new-array/range {v12 .. v35}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v12, "pt"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v35, "pl"

    const-string v36, "tl"

    const-string v13, "zh"

    const-string v14, "zh-TW"

    const-string v15, "en"

    const-string v16, "ja"

    const-string v17, "ko"

    const-string v18, "it"

    const-string v19, "fr"

    const-string v20, "es"

    const-string v21, "es-MX"

    const-string v22, "pt"

    const-string v23, "vi"

    const-string v24, "th"

    const-string v25, "ms"

    const-string v26, "id"

    const-string v27, "hi"

    const-string v28, "ru"

    const-string v29, "de"

    const-string v30, "ur"

    const-string v31, "ar"

    const-string v32, "km"

    const-string v33, "bn"

    const-string v34, "tr"

    filled-new-array/range {v13 .. v36}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v13, "pt-BR"

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v36, "pl"

    const-string v37, "tl"

    const-string v14, "zh"

    const-string v15, "zh-TW"

    const-string v16, "en"

    const-string v17, "ja"

    const-string v18, "ko"

    const-string v19, "it"

    const-string v20, "fr"

    const-string v21, "es"

    const-string v22, "es-MX"

    const-string v23, "pt"

    const-string v24, "pt-BR"

    const-string v25, "th"

    const-string v26, "ms"

    const-string v27, "id"

    const-string v28, "hi"

    const-string v29, "ru"

    const-string v30, "de"

    const-string v31, "ur"

    const-string v32, "ar"

    const-string v33, "km"

    const-string v34, "bn"

    const-string v35, "tr"

    filled-new-array/range {v14 .. v37}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v14, "vi"

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v37, "pl"

    const-string v38, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "ms"

    const-string v28, "id"

    const-string v29, "hi"

    const-string v30, "ru"

    const-string v31, "de"

    const-string v32, "ur"

    const-string v33, "ar"

    const-string v34, "km"

    const-string v35, "bn"

    const-string v36, "tr"

    filled-new-array/range {v15 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "th"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v38, "pl"

    const-string v39, "tl"

    const-string v16, "zh"

    const-string v17, "zh-TW"

    const-string v18, "en"

    const-string v19, "ja"

    const-string v20, "ko"

    const-string v21, "it"

    const-string v22, "fr"

    const-string v23, "es"

    const-string v24, "es-MX"

    const-string v25, "pt"

    const-string v26, "pt-BR"

    const-string v27, "vi"

    const-string v28, "th"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    filled-new-array/range {v16 .. v39}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v16, v15

    const-string v15, "ms"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v39, "pl"

    const-string v40, "tl"

    const-string v17, "zh"

    const-string v18, "zh-TW"

    const-string v19, "en"

    const-string v20, "ja"

    const-string v21, "ko"

    const-string v22, "it"

    const-string v23, "fr"

    const-string v24, "es"

    const-string v25, "es-MX"

    const-string v26, "pt"

    const-string v27, "pt-BR"

    const-string v28, "vi"

    const-string v29, "th"

    const-string v30, "ms"

    const-string v31, "hi"

    const-string v32, "ru"

    const-string v33, "de"

    const-string v34, "ur"

    const-string v35, "ar"

    const-string v36, "km"

    const-string v37, "bn"

    const-string v38, "tr"

    filled-new-array/range {v17 .. v40}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v17, v15

    const-string v15, "id"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v40, "pl"

    const-string v41, "tl"

    const-string v18, "zh"

    const-string v19, "zh-TW"

    const-string v20, "en"

    const-string v21, "ja"

    const-string v22, "ko"

    const-string v23, "it"

    const-string v24, "fr"

    const-string v25, "es"

    const-string v26, "es-MX"

    const-string v27, "pt"

    const-string v28, "pt-BR"

    const-string v29, "vi"

    const-string v30, "th"

    const-string v31, "ms"

    const-string v32, "id"

    const-string v33, "ru"

    const-string v34, "de"

    const-string v35, "ur"

    const-string v36, "ar"

    const-string v37, "km"

    const-string v38, "bn"

    const-string v39, "tr"

    filled-new-array/range {v18 .. v41}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v18, v15

    const-string v15, "hi"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v41, "pl"

    const-string v42, "tl"

    const-string v19, "zh"

    const-string v20, "zh-TW"

    const-string v21, "en"

    const-string v22, "ja"

    const-string v23, "ko"

    const-string v24, "it"

    const-string v25, "fr"

    const-string v26, "es"

    const-string v27, "es-MX"

    const-string v28, "pt"

    const-string v29, "pt-BR"

    const-string v30, "vi"

    const-string v31, "th"

    const-string v32, "ms"

    const-string v33, "id"

    const-string v34, "hi"

    const-string v35, "de"

    const-string v36, "ur"

    const-string v37, "ar"

    const-string v38, "km"

    const-string v39, "bn"

    const-string v40, "tr"

    filled-new-array/range {v19 .. v42}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v19, v15

    const-string v15, "ru"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v42, "pl"

    const-string v43, "tl"

    const-string v20, "zh"

    const-string v21, "zh-TW"

    const-string v22, "en"

    const-string v23, "ja"

    const-string v24, "ko"

    const-string v25, "it"

    const-string v26, "fr"

    const-string v27, "es"

    const-string v28, "es-MX"

    const-string v29, "pt"

    const-string v30, "pt-BR"

    const-string v31, "vi"

    const-string v32, "th"

    const-string v33, "ms"

    const-string v34, "id"

    const-string v35, "hi"

    const-string v36, "ru"

    const-string v37, "ur"

    const-string v38, "ar"

    const-string v39, "km"

    const-string v40, "bn"

    const-string v41, "tr"

    filled-new-array/range {v20 .. v43}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v20, v15

    const-string v15, "de"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v43, "pl"

    const-string v44, "tl"

    const-string v21, "zh"

    const-string v22, "zh-TW"

    const-string v23, "en"

    const-string v24, "ja"

    const-string v25, "ko"

    const-string v26, "it"

    const-string v27, "fr"

    const-string v28, "es"

    const-string v29, "es-MX"

    const-string v30, "pt"

    const-string v31, "pt-BR"

    const-string v32, "vi"

    const-string v33, "th"

    const-string v34, "ms"

    const-string v35, "id"

    const-string v36, "hi"

    const-string v37, "ru"

    const-string v38, "de"

    const-string v39, "ar"

    const-string v40, "km"

    const-string v41, "bn"

    const-string v42, "tr"

    filled-new-array/range {v21 .. v44}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v21, v15

    const-string v15, "ur"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v44, "pl"

    const-string v45, "tl"

    const-string v22, "zh"

    const-string v23, "zh-TW"

    const-string v24, "en"

    const-string v25, "ja"

    const-string v26, "ko"

    const-string v27, "it"

    const-string v28, "fr"

    const-string v29, "es"

    const-string v30, "es-MX"

    const-string v31, "pt"

    const-string v32, "pt-BR"

    const-string v33, "vi"

    const-string v34, "th"

    const-string v35, "ms"

    const-string v36, "id"

    const-string v37, "hi"

    const-string v38, "ru"

    const-string v39, "de"

    const-string v40, "ur"

    const-string v41, "km"

    const-string v42, "bn"

    const-string v43, "tr"

    filled-new-array/range {v22 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v22, v15

    const-string v15, "ar"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v45, "pl"

    const-string v46, "tl"

    const-string v23, "zh"

    const-string v24, "zh-TW"

    const-string v25, "en"

    const-string v26, "ja"

    const-string v27, "ko"

    const-string v28, "it"

    const-string v29, "fr"

    const-string v30, "es"

    const-string v31, "es-MX"

    const-string v32, "pt"

    const-string v33, "pt-BR"

    const-string v34, "vi"

    const-string v35, "th"

    const-string v36, "ms"

    const-string v37, "id"

    const-string v38, "hi"

    const-string v39, "ru"

    const-string v40, "de"

    const-string v41, "ur"

    const-string v42, "ar"

    const-string v43, "bn"

    const-string v44, "tr"

    filled-new-array/range {v23 .. v46}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v23, v15

    const-string v15, "km"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v46, "pl"

    const-string v47, "tl"

    const-string v24, "zh"

    const-string v25, "zh-TW"

    const-string v26, "en"

    const-string v27, "ja"

    const-string v28, "ko"

    const-string v29, "it"

    const-string v30, "fr"

    const-string v31, "es"

    const-string v32, "es-MX"

    const-string v33, "pt"

    const-string v34, "pt-BR"

    const-string v35, "vi"

    const-string v36, "th"

    const-string v37, "ms"

    const-string v38, "id"

    const-string v39, "hi"

    const-string v40, "ru"

    const-string v41, "de"

    const-string v42, "ur"

    const-string v43, "ar"

    const-string v44, "km"

    const-string v45, "tr"

    filled-new-array/range {v24 .. v47}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v24, v15

    const-string v15, "bn"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v47, "pl"

    const-string v48, "tl"

    const-string v25, "zh"

    const-string v26, "zh-TW"

    const-string v27, "en"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    filled-new-array/range {v25 .. v48}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v25, v15

    const-string v15, "tr"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v48, "tr"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "pl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "tl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh-TW"

    const-string v27, "en"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "en"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v4, v16

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v11, v17

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v11, v18

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v12, v19

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v13, v20

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v13, v21

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v22

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v23

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "bn"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v24

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v48, "pl"

    const-string v49, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "tr"

    filled-new-array/range {v26 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v25

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v37, "pl"

    const-string v38, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    filled-new-array/range {v15 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "tr"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v37, "tr"

    const-string v38, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    filled-new-array/range {v15 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "pl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    filled-new-array/range {v15 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "tl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    const-string v21, "es"

    const-string v22, "vi"

    const-string v15, "en"

    const-string v16, "ja"

    const-string v17, "ko"

    const-string v18, "it"

    const-string v19, "fr"

    const-string v20, "de"

    filled-new-array/range {v15 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    const-string v19, "es"

    const-string v20, "id"

    const-string v15, "zh"

    const-string v16, "hi"

    const-string v17, "vi"

    const-string v18, "th"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v5}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v5}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v5}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->b:Ljava/util/ArrayList;

    const-string v25, "pl"

    const-string v26, "tl"

    const-string v2, "zh"

    const-string v3, "zh-TW"

    const-string v4, "en"

    const-string v5, "ja"

    const-string v6, "ko"

    const-string v7, "it"

    const-string v8, "fr"

    const-string v9, "es"

    const-string v10, "es-MX"

    const-string v11, "pt"

    const-string v12, "pt-BR"

    const-string v13, "vi"

    const-string v14, "th"

    const-string v15, "ms"

    const-string v16, "id"

    const-string v17, "hi"

    const-string v18, "ru"

    const-string v19, "de"

    const-string v20, "ur"

    const-string v21, "ar"

    const-string v22, "km"

    const-string v23, "bn"

    const-string v24, "tr"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/coloros/translate/LanguageManager;->C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/translate/LanguageManager;->h:Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/coloros/translate/LanguageManager;->C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/translate/LanguageManager;->f:Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/coloros/translate/LanguageManager;->C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/translate/LanguageManager;->g:Landroid/util/ArrayMap;

    return-void
.end method

.method private final L()V
    .locals 57

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->i:Landroid/util/ArrayMap;

    const-string v2, "auto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v33, "pa"

    const-string v34, "tl"

    const-string v3, "zh"

    const-string v4, "zh-TW"

    const-string v5, "en"

    const-string v6, "ja"

    const-string v7, "ko"

    const-string v8, "it"

    const-string v9, "fr"

    const-string v10, "es"

    const-string v11, "es-MX"

    const-string v12, "pt"

    const-string v13, "pt-BR"

    const-string v14, "vi"

    const-string v15, "th"

    const-string v16, "ms"

    const-string v17, "id"

    const-string v18, "hi"

    const-string v19, "ru"

    const-string v20, "de"

    const-string v21, "ur"

    const-string v22, "ar"

    const-string v23, "km"

    const-string v24, "bn"

    const-string v25, "tr"

    const-string v26, "pl"

    const-string v27, "kn"

    const-string v28, "mr"

    const-string v29, "gu"

    const-string v30, "ta"

    const-string v31, "ml"

    const-string v32, "te"

    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v31, "pa"

    const-string v32, "tl"

    const-string v2, "zh-TW"

    const-string v3, "en"

    const-string v4, "ja"

    const-string v5, "ko"

    const-string v6, "it"

    const-string v7, "fr"

    const-string v8, "es"

    const-string v9, "es-MX"

    const-string v10, "pt"

    const-string v11, "pt-BR"

    const-string v12, "vi"

    const-string v13, "th"

    const-string v14, "ms"

    const-string v15, "id"

    const-string v16, "hi"

    const-string v17, "ru"

    const-string v18, "de"

    const-string v19, "ur"

    const-string v20, "ar"

    const-string v21, "km"

    const-string v22, "bn"

    const-string v23, "tr"

    const-string v24, "pl"

    const-string v25, "kn"

    const-string v26, "mr"

    const-string v27, "gu"

    const-string v28, "ta"

    const-string v29, "ml"

    const-string v30, "te"

    filled-new-array/range {v2 .. v32}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "zh"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v33, "pa"

    const-string v34, "tl"

    const-string v4, "zh"

    const-string v5, "en"

    const-string v6, "ja"

    const-string v7, "ko"

    const-string v8, "it"

    const-string v9, "fr"

    const-string v10, "es"

    const-string v11, "es-MX"

    const-string v12, "pt"

    const-string v13, "pt-BR"

    const-string v14, "vi"

    const-string v15, "th"

    const-string v16, "ms"

    const-string v17, "id"

    const-string v18, "hi"

    const-string v19, "ru"

    const-string v20, "de"

    const-string v21, "ur"

    const-string v22, "ar"

    const-string v23, "km"

    const-string v24, "bn"

    const-string v25, "tr"

    const-string v26, "pl"

    const-string v27, "kn"

    const-string v28, "mr"

    const-string v29, "gu"

    const-string v30, "ta"

    const-string v31, "ml"

    const-string v32, "te"

    filled-new-array/range {v4 .. v34}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "zh-TW"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v34, "pa"

    const-string v35, "tl"

    const-string v5, "zh"

    const-string v6, "zh-TW"

    const-string v7, "ja"

    const-string v8, "ko"

    const-string v9, "it"

    const-string v10, "fr"

    const-string v11, "es"

    const-string v12, "es-MX"

    const-string v13, "pt"

    const-string v14, "pt-BR"

    const-string v15, "vi"

    const-string v16, "th"

    const-string v17, "ms"

    const-string v18, "id"

    const-string v19, "hi"

    const-string v20, "ru"

    const-string v21, "de"

    const-string v22, "ur"

    const-string v23, "ar"

    const-string v24, "km"

    const-string v25, "bn"

    const-string v26, "tr"

    const-string v27, "pl"

    const-string v28, "kn"

    const-string v29, "mr"

    const-string v30, "gu"

    const-string v31, "ta"

    const-string v32, "ml"

    const-string v33, "te"

    filled-new-array/range {v5 .. v35}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "en"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v35, "pa"

    const-string v36, "tl"

    const-string v6, "zh"

    const-string v7, "zh-TW"

    const-string v8, "en"

    const-string v9, "ko"

    const-string v10, "it"

    const-string v11, "fr"

    const-string v12, "es"

    const-string v13, "es-MX"

    const-string v14, "pt"

    const-string v15, "pt-BR"

    const-string v16, "vi"

    const-string v17, "th"

    const-string v18, "ms"

    const-string v19, "id"

    const-string v20, "hi"

    const-string v21, "ru"

    const-string v22, "de"

    const-string v23, "ur"

    const-string v24, "ar"

    const-string v25, "km"

    const-string v26, "bn"

    const-string v27, "tr"

    const-string v28, "pl"

    const-string v29, "kn"

    const-string v30, "mr"

    const-string v31, "gu"

    const-string v32, "ta"

    const-string v33, "ml"

    const-string v34, "te"

    filled-new-array/range {v6 .. v36}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "ja"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v36, "pa"

    const-string v37, "tl"

    const-string v7, "zh"

    const-string v8, "zh-TW"

    const-string v9, "en"

    const-string v10, "ja"

    const-string v11, "it"

    const-string v12, "fr"

    const-string v13, "es"

    const-string v14, "es-MX"

    const-string v15, "pt"

    const-string v16, "pt-BR"

    const-string v17, "vi"

    const-string v18, "th"

    const-string v19, "ms"

    const-string v20, "id"

    const-string v21, "hi"

    const-string v22, "ru"

    const-string v23, "de"

    const-string v24, "ur"

    const-string v25, "ar"

    const-string v26, "km"

    const-string v27, "bn"

    const-string v28, "tr"

    const-string v29, "pl"

    const-string v30, "kn"

    const-string v31, "mr"

    const-string v32, "gu"

    const-string v33, "ta"

    const-string v34, "ml"

    const-string v35, "te"

    filled-new-array/range {v7 .. v37}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v7, "ko"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v37, "pa"

    const-string v38, "tl"

    const-string v8, "zh"

    const-string v9, "zh-TW"

    const-string v10, "en"

    const-string v11, "ja"

    const-string v12, "ko"

    const-string v13, "fr"

    const-string v14, "es"

    const-string v15, "es-MX"

    const-string v16, "pt"

    const-string v17, "pt-BR"

    const-string v18, "vi"

    const-string v19, "th"

    const-string v20, "ms"

    const-string v21, "id"

    const-string v22, "hi"

    const-string v23, "ru"

    const-string v24, "de"

    const-string v25, "ur"

    const-string v26, "ar"

    const-string v27, "km"

    const-string v28, "bn"

    const-string v29, "tr"

    const-string v30, "pl"

    const-string v31, "kn"

    const-string v32, "mr"

    const-string v33, "gu"

    const-string v34, "ta"

    const-string v35, "ml"

    const-string v36, "te"

    filled-new-array/range {v8 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v8, "it"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v38, "pa"

    const-string v39, "tl"

    const-string v9, "zh"

    const-string v10, "zh-TW"

    const-string v11, "en"

    const-string v12, "ja"

    const-string v13, "ko"

    const-string v14, "it"

    const-string v15, "es"

    const-string v16, "es-MX"

    const-string v17, "pt"

    const-string v18, "pt-BR"

    const-string v19, "vi"

    const-string v20, "th"

    const-string v21, "ms"

    const-string v22, "id"

    const-string v23, "hi"

    const-string v24, "ru"

    const-string v25, "de"

    const-string v26, "ur"

    const-string v27, "ar"

    const-string v28, "km"

    const-string v29, "bn"

    const-string v30, "tr"

    const-string v31, "pl"

    const-string v32, "kn"

    const-string v33, "mr"

    const-string v34, "gu"

    const-string v35, "ta"

    const-string v36, "ml"

    const-string v37, "te"

    filled-new-array/range {v9 .. v39}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v9, "fr"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v39, "pa"

    const-string v40, "tl"

    const-string v10, "zh"

    const-string v11, "zh-TW"

    const-string v12, "en"

    const-string v13, "ja"

    const-string v14, "ko"

    const-string v15, "it"

    const-string v16, "fr"

    const-string v17, "es-MX"

    const-string v18, "pt"

    const-string v19, "pt-BR"

    const-string v20, "vi"

    const-string v21, "th"

    const-string v22, "ms"

    const-string v23, "id"

    const-string v24, "hi"

    const-string v25, "ru"

    const-string v26, "de"

    const-string v27, "ur"

    const-string v28, "ar"

    const-string v29, "km"

    const-string v30, "bn"

    const-string v31, "tr"

    const-string v32, "pl"

    const-string v33, "kn"

    const-string v34, "mr"

    const-string v35, "gu"

    const-string v36, "ta"

    const-string v37, "ml"

    const-string v38, "te"

    filled-new-array/range {v10 .. v40}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v10, "es"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v40, "pa"

    const-string v41, "tl"

    const-string v11, "zh"

    const-string v12, "zh-TW"

    const-string v13, "en"

    const-string v14, "ja"

    const-string v15, "ko"

    const-string v16, "it"

    const-string v17, "fr"

    const-string v18, "es"

    const-string v19, "pt"

    const-string v20, "pt-BR"

    const-string v21, "vi"

    const-string v22, "th"

    const-string v23, "ms"

    const-string v24, "id"

    const-string v25, "hi"

    const-string v26, "ru"

    const-string v27, "de"

    const-string v28, "ur"

    const-string v29, "ar"

    const-string v30, "km"

    const-string v31, "bn"

    const-string v32, "tr"

    const-string v33, "pl"

    const-string v34, "kn"

    const-string v35, "mr"

    const-string v36, "gu"

    const-string v37, "ta"

    const-string v38, "ml"

    const-string v39, "te"

    filled-new-array/range {v11 .. v41}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v11, "es-MX"

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v41, "pa"

    const-string v42, "tl"

    const-string v12, "zh"

    const-string v13, "zh-TW"

    const-string v14, "en"

    const-string v15, "ja"

    const-string v16, "ko"

    const-string v17, "it"

    const-string v18, "fr"

    const-string v19, "es"

    const-string v20, "es-MX"

    const-string v21, "pt-BR"

    const-string v22, "vi"

    const-string v23, "th"

    const-string v24, "ms"

    const-string v25, "id"

    const-string v26, "hi"

    const-string v27, "ru"

    const-string v28, "de"

    const-string v29, "ur"

    const-string v30, "ar"

    const-string v31, "km"

    const-string v32, "bn"

    const-string v33, "tr"

    const-string v34, "pl"

    const-string v35, "kn"

    const-string v36, "mr"

    const-string v37, "gu"

    const-string v38, "ta"

    const-string v39, "ml"

    const-string v40, "te"

    filled-new-array/range {v12 .. v42}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v12, "pt"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v42, "pa"

    const-string v43, "tl"

    const-string v13, "zh"

    const-string v14, "zh-TW"

    const-string v15, "en"

    const-string v16, "ja"

    const-string v17, "ko"

    const-string v18, "it"

    const-string v19, "fr"

    const-string v20, "es"

    const-string v21, "es-MX"

    const-string v22, "pt"

    const-string v23, "vi"

    const-string v24, "th"

    const-string v25, "ms"

    const-string v26, "id"

    const-string v27, "hi"

    const-string v28, "ru"

    const-string v29, "de"

    const-string v30, "ur"

    const-string v31, "ar"

    const-string v32, "km"

    const-string v33, "bn"

    const-string v34, "tr"

    const-string v35, "pl"

    const-string v36, "kn"

    const-string v37, "mr"

    const-string v38, "gu"

    const-string v39, "ta"

    const-string v40, "ml"

    const-string v41, "te"

    filled-new-array/range {v13 .. v43}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v13, "pt-BR"

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v43, "pa"

    const-string v44, "tl"

    const-string v14, "zh"

    const-string v15, "zh-TW"

    const-string v16, "en"

    const-string v17, "ja"

    const-string v18, "ko"

    const-string v19, "it"

    const-string v20, "fr"

    const-string v21, "es"

    const-string v22, "es-MX"

    const-string v23, "pt"

    const-string v24, "pt-BR"

    const-string v25, "th"

    const-string v26, "ms"

    const-string v27, "id"

    const-string v28, "hi"

    const-string v29, "ru"

    const-string v30, "de"

    const-string v31, "ur"

    const-string v32, "ar"

    const-string v33, "km"

    const-string v34, "bn"

    const-string v35, "tr"

    const-string v36, "pl"

    const-string v37, "kn"

    const-string v38, "mr"

    const-string v39, "gu"

    const-string v40, "ta"

    const-string v41, "ml"

    const-string v42, "te"

    filled-new-array/range {v14 .. v44}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v14, "vi"

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "ms"

    const-string v28, "id"

    const-string v29, "hi"

    const-string v30, "ru"

    const-string v31, "de"

    const-string v32, "ur"

    const-string v33, "ar"

    const-string v34, "km"

    const-string v35, "bn"

    const-string v36, "tr"

    const-string v37, "pl"

    const-string v38, "kn"

    const-string v39, "mr"

    const-string v40, "gu"

    const-string v41, "ta"

    const-string v42, "ml"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "th"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v45, "pa"

    const-string v46, "tl"

    const-string v16, "zh"

    const-string v17, "zh-TW"

    const-string v18, "en"

    const-string v19, "ja"

    const-string v20, "ko"

    const-string v21, "it"

    const-string v22, "fr"

    const-string v23, "es"

    const-string v24, "es-MX"

    const-string v25, "pt"

    const-string v26, "pt-BR"

    const-string v27, "vi"

    const-string v28, "th"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "mr"

    const-string v41, "gu"

    const-string v42, "ta"

    const-string v43, "ml"

    const-string v44, "te"

    filled-new-array/range {v16 .. v46}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v16, v15

    const-string v15, "ms"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v46, "pa"

    const-string v47, "tl"

    const-string v17, "zh"

    const-string v18, "zh-TW"

    const-string v19, "en"

    const-string v20, "ja"

    const-string v21, "ko"

    const-string v22, "it"

    const-string v23, "fr"

    const-string v24, "es"

    const-string v25, "es-MX"

    const-string v26, "pt"

    const-string v27, "pt-BR"

    const-string v28, "vi"

    const-string v29, "th"

    const-string v30, "ms"

    const-string v31, "hi"

    const-string v32, "ru"

    const-string v33, "de"

    const-string v34, "ur"

    const-string v35, "ar"

    const-string v36, "km"

    const-string v37, "bn"

    const-string v38, "tr"

    const-string v39, "pl"

    const-string v40, "kn"

    const-string v41, "mr"

    const-string v42, "gu"

    const-string v43, "ta"

    const-string v44, "ml"

    const-string v45, "te"

    filled-new-array/range {v17 .. v47}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v17, v15

    const-string v15, "id"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v47, "pa"

    const-string v48, "tl"

    const-string v18, "zh"

    const-string v19, "zh-TW"

    const-string v20, "en"

    const-string v21, "ja"

    const-string v22, "ko"

    const-string v23, "it"

    const-string v24, "fr"

    const-string v25, "es"

    const-string v26, "es-MX"

    const-string v27, "pt"

    const-string v28, "pt-BR"

    const-string v29, "vi"

    const-string v30, "th"

    const-string v31, "ms"

    const-string v32, "id"

    const-string v33, "ru"

    const-string v34, "de"

    const-string v35, "ur"

    const-string v36, "ar"

    const-string v37, "km"

    const-string v38, "bn"

    const-string v39, "tr"

    const-string v40, "pl"

    const-string v41, "kn"

    const-string v42, "mr"

    const-string v43, "gu"

    const-string v44, "ta"

    const-string v45, "ml"

    const-string v46, "te"

    filled-new-array/range {v18 .. v48}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v18, v15

    const-string v15, "hi"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v48, "pa"

    const-string v49, "tl"

    const-string v19, "zh"

    const-string v20, "zh-TW"

    const-string v21, "en"

    const-string v22, "ja"

    const-string v23, "ko"

    const-string v24, "it"

    const-string v25, "fr"

    const-string v26, "es"

    const-string v27, "es-MX"

    const-string v28, "pt"

    const-string v29, "pt-BR"

    const-string v30, "vi"

    const-string v31, "th"

    const-string v32, "ms"

    const-string v33, "id"

    const-string v34, "hi"

    const-string v35, "de"

    const-string v36, "ur"

    const-string v37, "ar"

    const-string v38, "km"

    const-string v39, "bn"

    const-string v40, "tr"

    const-string v41, "pl"

    const-string v42, "kn"

    const-string v43, "mr"

    const-string v44, "gu"

    const-string v45, "ta"

    const-string v46, "ml"

    const-string v47, "te"

    filled-new-array/range {v19 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v19, v15

    const-string v15, "ru"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v49, "pa"

    const-string v50, "tl"

    const-string v20, "zh"

    const-string v21, "zh-TW"

    const-string v22, "en"

    const-string v23, "ja"

    const-string v24, "ko"

    const-string v25, "it"

    const-string v26, "fr"

    const-string v27, "es"

    const-string v28, "es-MX"

    const-string v29, "pt"

    const-string v30, "pt-BR"

    const-string v31, "vi"

    const-string v32, "th"

    const-string v33, "ms"

    const-string v34, "id"

    const-string v35, "hi"

    const-string v36, "ru"

    const-string v37, "ur"

    const-string v38, "ar"

    const-string v39, "km"

    const-string v40, "bn"

    const-string v41, "tr"

    const-string v42, "pl"

    const-string v43, "kn"

    const-string v44, "mr"

    const-string v45, "gu"

    const-string v46, "ta"

    const-string v47, "ml"

    const-string v48, "te"

    filled-new-array/range {v20 .. v50}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v20, v15

    const-string v15, "de"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v50, "pa"

    const-string v51, "tl"

    const-string v21, "zh"

    const-string v22, "zh-TW"

    const-string v23, "en"

    const-string v24, "ja"

    const-string v25, "ko"

    const-string v26, "it"

    const-string v27, "fr"

    const-string v28, "es"

    const-string v29, "es-MX"

    const-string v30, "pt"

    const-string v31, "pt-BR"

    const-string v32, "vi"

    const-string v33, "th"

    const-string v34, "ms"

    const-string v35, "id"

    const-string v36, "hi"

    const-string v37, "ru"

    const-string v38, "de"

    const-string v39, "ar"

    const-string v40, "km"

    const-string v41, "bn"

    const-string v42, "tr"

    const-string v43, "pl"

    const-string v44, "kn"

    const-string v45, "mr"

    const-string v46, "gu"

    const-string v47, "ta"

    const-string v48, "ml"

    const-string v49, "te"

    filled-new-array/range {v21 .. v51}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v21, v15

    const-string v15, "ur"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v51, "pa"

    const-string v52, "tl"

    const-string v22, "zh"

    const-string v23, "zh-TW"

    const-string v24, "en"

    const-string v25, "ja"

    const-string v26, "ko"

    const-string v27, "it"

    const-string v28, "fr"

    const-string v29, "es"

    const-string v30, "es-MX"

    const-string v31, "pt"

    const-string v32, "pt-BR"

    const-string v33, "vi"

    const-string v34, "th"

    const-string v35, "ms"

    const-string v36, "id"

    const-string v37, "hi"

    const-string v38, "ru"

    const-string v39, "de"

    const-string v40, "ur"

    const-string v41, "km"

    const-string v42, "bn"

    const-string v43, "tr"

    const-string v44, "pl"

    const-string v45, "kn"

    const-string v46, "mr"

    const-string v47, "gu"

    const-string v48, "ta"

    const-string v49, "ml"

    const-string v50, "te"

    filled-new-array/range {v22 .. v52}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v22, v15

    const-string v15, "ar"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v52, "pa"

    const-string v53, "tl"

    const-string v23, "zh"

    const-string v24, "zh-TW"

    const-string v25, "en"

    const-string v26, "ja"

    const-string v27, "ko"

    const-string v28, "it"

    const-string v29, "fr"

    const-string v30, "es"

    const-string v31, "es-MX"

    const-string v32, "pt"

    const-string v33, "pt-BR"

    const-string v34, "vi"

    const-string v35, "th"

    const-string v36, "ms"

    const-string v37, "id"

    const-string v38, "hi"

    const-string v39, "ru"

    const-string v40, "de"

    const-string v41, "ur"

    const-string v42, "ar"

    const-string v43, "bn"

    const-string v44, "tr"

    const-string v45, "pl"

    const-string v46, "kn"

    const-string v47, "mr"

    const-string v48, "gu"

    const-string v49, "ta"

    const-string v50, "ml"

    const-string v51, "te"

    filled-new-array/range {v23 .. v53}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v23, v15

    const-string v15, "km"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v53, "pa"

    const-string v54, "tl"

    const-string v24, "zh"

    const-string v25, "zh-TW"

    const-string v26, "en"

    const-string v27, "ja"

    const-string v28, "ko"

    const-string v29, "it"

    const-string v30, "fr"

    const-string v31, "es"

    const-string v32, "es-MX"

    const-string v33, "pt"

    const-string v34, "pt-BR"

    const-string v35, "vi"

    const-string v36, "th"

    const-string v37, "ms"

    const-string v38, "id"

    const-string v39, "hi"

    const-string v40, "ru"

    const-string v41, "de"

    const-string v42, "ur"

    const-string v43, "ar"

    const-string v44, "km"

    const-string v45, "tr"

    const-string v46, "pl"

    const-string v47, "kn"

    const-string v48, "mr"

    const-string v49, "gu"

    const-string v50, "ta"

    const-string v51, "ml"

    const-string v52, "te"

    filled-new-array/range {v24 .. v54}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v24, v15

    const-string v15, "bn"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v54, "pa"

    const-string v55, "tl"

    const-string v25, "zh"

    const-string v26, "zh-TW"

    const-string v27, "en"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "pl"

    const-string v48, "kn"

    const-string v49, "mr"

    const-string v50, "gu"

    const-string v51, "ta"

    const-string v52, "ml"

    const-string v53, "te"

    filled-new-array/range {v25 .. v55}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v25, v15

    const-string v15, "tr"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "pl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "kn"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "kn"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "mr"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "kn"

    const-string v51, "mr"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "gu"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "kn"

    const-string v51, "mr"

    const-string v52, "gu"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "ta"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "kn"

    const-string v51, "mr"

    const-string v52, "gu"

    const-string v53, "ta"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "ml"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "kn"

    const-string v51, "mr"

    const-string v52, "gu"

    const-string v53, "ta"

    const-string v54, "ml"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "te"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "te"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "kn"

    const-string v51, "mr"

    const-string v52, "gu"

    const-string v53, "ta"

    const-string v54, "ml"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "pa"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    const-string v55, "te"

    const-string v56, "pa"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "bn"

    const-string v48, "tr"

    const-string v49, "pl"

    const-string v50, "kn"

    const-string v51, "mr"

    const-string v52, "gu"

    const-string v53, "ta"

    const-string v54, "ml"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "tl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh-TW"

    const-string v27, "en"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "en"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "ja"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ko"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "it"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "fr"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "es"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es-MX"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "pt"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt-BR"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "vi"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "th"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "ms"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v4, v16

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "id"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v11, v17

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "hi"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v11, v18

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "ru"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v12, v19

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "de"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v13, v20

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "ur"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v13, v21

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ar"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v22

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "km"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v23

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "bn"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v24

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v55, "pa"

    const-string v56, "tl"

    const-string v26, "zh"

    const-string v27, "zh-TW"

    const-string v28, "en"

    const-string v29, "ja"

    const-string v30, "ko"

    const-string v31, "it"

    const-string v32, "fr"

    const-string v33, "es"

    const-string v34, "es-MX"

    const-string v35, "pt"

    const-string v36, "pt-BR"

    const-string v37, "vi"

    const-string v38, "th"

    const-string v39, "ms"

    const-string v40, "id"

    const-string v41, "hi"

    const-string v42, "ru"

    const-string v43, "de"

    const-string v44, "ur"

    const-string v45, "ar"

    const-string v46, "km"

    const-string v47, "tr"

    const-string v48, "pl"

    const-string v49, "kn"

    const-string v50, "mr"

    const-string v51, "gu"

    const-string v52, "ta"

    const-string v53, "ml"

    const-string v54, "te"

    filled-new-array/range {v26 .. v56}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v15, v25

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "pl"

    const-string v38, "kn"

    const-string v39, "mr"

    const-string v40, "gu"

    const-string v41, "ta"

    const-string v42, "ml"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "tr"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "kn"

    const-string v39, "mr"

    const-string v40, "gu"

    const-string v41, "ta"

    const-string v42, "ml"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "pl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "mr"

    const-string v40, "gu"

    const-string v41, "ta"

    const-string v42, "ml"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "kn"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "gu"

    const-string v41, "ta"

    const-string v42, "ml"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "mr"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "mr"

    const-string v41, "ta"

    const-string v42, "ml"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "gu"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "mr"

    const-string v41, "gu"

    const-string v42, "ml"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "ta"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "mr"

    const-string v41, "gu"

    const-string v42, "ta"

    const-string v43, "te"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "ml"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "pa"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "mr"

    const-string v41, "gu"

    const-string v42, "ta"

    const-string v43, "ml"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "te"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "te"

    const-string v45, "tl"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "mr"

    const-string v41, "gu"

    const-string v42, "ta"

    const-string v43, "ml"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "pa"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    const-string v44, "te"

    const-string v45, "pa"

    const-string v15, "zh"

    const-string v16, "zh-TW"

    const-string v17, "en"

    const-string v18, "ja"

    const-string v19, "ko"

    const-string v20, "it"

    const-string v21, "fr"

    const-string v22, "es"

    const-string v23, "es-MX"

    const-string v24, "pt"

    const-string v25, "pt-BR"

    const-string v26, "vi"

    const-string v27, "th"

    const-string v28, "ms"

    const-string v29, "id"

    const-string v30, "hi"

    const-string v31, "ru"

    const-string v32, "de"

    const-string v33, "ur"

    const-string v34, "ar"

    const-string v35, "km"

    const-string v36, "bn"

    const-string v37, "tr"

    const-string v38, "pl"

    const-string v39, "kn"

    const-string v40, "mr"

    const-string v41, "gu"

    const-string v42, "ta"

    const-string v43, "ml"

    filled-new-array/range {v15 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v15, "tl"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    const-string v21, "es"

    const-string v22, "vi"

    const-string v15, "en"

    const-string v16, "ja"

    const-string v17, "ko"

    const-string v18, "it"

    const-string v19, "fr"

    const-string v20, "de"

    filled-new-array/range {v15 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    const-string v19, "es"

    const-string v20, "id"

    const-string v15, "zh"

    const-string v16, "hi"

    const-string v17, "vi"

    const-string v18, "th"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v3}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v5}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v5}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-static {v5}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->b:Ljava/util/ArrayList;

    const-string v32, "pa"

    const-string v33, "tl"

    const-string v2, "zh"

    const-string v3, "zh-TW"

    const-string v4, "en"

    const-string v5, "ja"

    const-string v6, "ko"

    const-string v7, "it"

    const-string v8, "fr"

    const-string v9, "es"

    const-string v10, "es-MX"

    const-string v11, "pt"

    const-string v12, "pt-BR"

    const-string v13, "vi"

    const-string v14, "th"

    const-string v15, "ms"

    const-string v16, "id"

    const-string v17, "hi"

    const-string v18, "ru"

    const-string v19, "de"

    const-string v20, "ur"

    const-string v21, "ar"

    const-string v22, "km"

    const-string v23, "bn"

    const-string v24, "tr"

    const-string v25, "pl"

    const-string v26, "kn"

    const-string v27, "mr"

    const-string v28, "gu"

    const-string v29, "ta"

    const-string v30, "ml"

    const-string v31, "te"

    filled-new-array/range {v2 .. v33}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/coloros/translate/LanguageManager;->C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/translate/LanguageManager;->h:Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/coloros/translate/LanguageManager;->C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/translate/LanguageManager;->f:Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/coloros/translate/LanguageManager;->C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/translate/LanguageManager;->g:Landroid/util/ArrayMap;

    return-void
.end method

.method private final P(Lcom/coloros/translate/SupportLanguageConfig;)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "LanguageManager"

    const-string v2, "setSupportLanguage start:"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/o;->v0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/SupportLanguageConfig;->getTts()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/o;->v0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lkotlin/collections/o;->W(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/SupportLanguageConfig;->getAsr()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->e:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/coloros/translate/SupportLanguageConfig;->getAsr()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/coloros/translate/LanguageManager;->w(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->h:Landroid/util/ArrayMap;

    const-string v3, "displayAsrLanguageMap"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->h:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    :cond_3
    invoke-virtual {p1}, Lcom/coloros/translate/SupportLanguageConfig;->getOnlineText()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->c:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/coloros/translate/SupportLanguageConfig;->getOnlineText()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/coloros/translate/LanguageManager;->w(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->f:Landroid/util/ArrayMap;

    const-string v3, "displayOnLineLanguageMap"

    if-nez v2, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->f:Landroid/util/ArrayMap;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_5
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    :cond_6
    invoke-virtual {p1}, Lcom/coloros/translate/SupportLanguageConfig;->getOfflineText()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->d:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/coloros/translate/SupportLanguageConfig;->getOfflineText()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/LanguageManager;->w(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->g:Landroid/util/ArrayMap;

    const-string v2, "displayOffLineLanguageMap"

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->g:Landroid/util/ArrayMap;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/LanguageManager;->s:Z

    iget-boolean p1, p0, Lcom/coloros/translate/LanguageManager;->r:Z

    if-nez p1, :cond_a

    new-instance p1, Lcom/coloros/translate/h;

    invoke-direct {p1, p0}, Lcom/coloros/translate/h;-><init>(Lcom/coloros/translate/LanguageManager;)V

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, p1}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method private static final Q(Lcom/coloros/translate/LanguageManager;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/LanguageManager;->X(Lcom/coloros/translate/LanguageManager;ZILjava/lang/Object;)V

    return-void
.end method

.method private final T(Ljava/util/ArrayList;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    new-instance p0, Lcom/coloros/translate/LanguageManager$g;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager$g;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/o;->u(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method private final W(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/LanguageManager;->Y()Ljava/util/Map;

    iget-object v2, v0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    iget-object v3, v0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    sget-object v4, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v4}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/b;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    invoke-virtual {v0, v6}, Lcom/coloros/translate/LanguageManager;->p(Lcom/coloros/translate/b;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    sget-object v7, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v7}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v10

    const-string v11, "LanguageManager"

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLanguageConfig lastCurrentFromLanguage : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " , lastCurrentToLanguage : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " , languageSystem : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " , isSystemLanguageSupported : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , isNetChanged : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v10, v0, Lcom/coloros/translate/LanguageManager;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    sub-long/2addr v12, v14

    iget-boolean v10, v0, Lcom/coloros/translate/LanguageManager;->u:Z

    const-wide/16 v14, 0x1f4

    if-eqz v10, :cond_2

    cmp-long v16, v12, v14

    if-gez v16, :cond_2

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLanguageConfig: cold start protection, isNetChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeSinceLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v10, :cond_3

    cmp-long v10, v12, v14

    if-ltz v10, :cond_3

    iput-boolean v9, v0, Lcom/coloros/translate/LanguageManager;->u:Z

    const-string v10, "updateLanguageConfig: timeSinceLoad is over\uff0creset"

    invoke-virtual {v7, v11, v10}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v10, 0x0

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    invoke-virtual {v13}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v13, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    goto :goto_1

    :cond_4
    sget-object v12, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    if-eq v4, v12, :cond_5

    sget-object v14, Lcom/coloros/translate/b;->CHINESE_TW:Lcom/coloros/translate/b;

    if-ne v4, v14, :cond_7

    :cond_5
    move-object v13, v12

    goto :goto_1

    :cond_6
    move-object v13, v10

    :cond_7
    :goto_1
    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    if-eq v2, v5, :cond_b

    sget-object v5, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-eq v2, v5, :cond_b

    :cond_9
    if-eqz v13, :cond_a

    if-eq v2, v13, :cond_a

    goto :goto_2

    :cond_a
    move v5, v9

    goto :goto_3

    :cond_b
    :goto_2
    move v5, v8

    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateLanguageConfig:expectedFromLanguage="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", needUpdateFromLanguage="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "text_panel"

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v5, v12}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v5}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    sget-object v5, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    iput-object v5, v0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    :cond_d
    iget-object v5, v0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    invoke-virtual {v0, v5}, Lcom/coloros/translate/LanguageManager;->p(Lcom/coloros/translate/b;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v1, :cond_11

    if-eqz v4, :cond_11

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    invoke-virtual {v13}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    :goto_4
    move-object v10, v13

    goto :goto_5

    :cond_f
    sget-object v10, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    if-eq v4, v10, :cond_e

    sget-object v10, Lcom/coloros/translate/b;->CHINESE_TW:Lcom/coloros/translate/b;

    if-ne v4, v10, :cond_10

    goto :goto_4

    :cond_10
    move-object v10, v4

    :cond_11
    :goto_5
    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_12
    if-eqz v1, :cond_13

    if-eqz v4, :cond_13

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-ne v3, v4, :cond_15

    :cond_13
    if-eqz v10, :cond_14

    if-eq v3, v10, :cond_14

    goto :goto_6

    :cond_14
    move v4, v9

    goto :goto_7

    :cond_15
    :goto_6
    move v4, v8

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateLanguageConfig:expectedToLanguage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", needUpdateToLanguage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v11, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v4}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v4

    if-nez v4, :cond_17

    :cond_16
    sget-object v4, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    iput-object v4, v0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    :cond_17
    iget-object v4, v0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    sget-object v5, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    if-ne v4, v5, :cond_18

    iget-object v6, v0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    if-ne v6, v5, :cond_18

    sget-object v6, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    iput-object v6, v0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    :cond_18
    iget-object v6, v0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLanguageConfig currentFromLanguage : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", currentToLanguage : "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v11, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    if-eq v1, v5, :cond_1a

    iget-object v4, v0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    if-eq v4, v5, :cond_1a

    sget-object v5, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    if-eq v1, v5, :cond_1a

    if-ne v4, v5, :cond_19

    goto :goto_8

    :cond_19
    move v8, v9

    :cond_1a
    :goto_8
    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    if-ne v3, v1, :cond_1b

    iget-object v1, v0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    if-ne v2, v1, :cond_1b

    if-eqz v8, :cond_1c

    :cond_1b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/LanguageManager;->D(Ljava/lang/Boolean;)V

    :cond_1c
    return-void
.end method

.method static synthetic X(Lcom/coloros/translate/LanguageManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/LanguageManager;->W(Z)V

    return-void
.end method

.method private final Y()Ljava/util/Map;
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLanguageMap currentType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/LanguageManager;->t:Z

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    const-string v2, "voice"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    const-string v3, "si"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    const-string v3, "text"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "displayOnLineLanguageMap"

    const-string v4, "displayOffLineLanguageMap"

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    sget-object v1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v1}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v1

    iget-object v6, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    iput-boolean v5, p0, Lcom/coloros/translate/LanguageManager;->t:Z

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->g:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->f:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_5

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    const-string v6, "text_panel"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    sget-object v1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v1}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v5, p0, Lcom/coloros/translate/LanguageManager;->t:Z

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/coloros/translate/LanguageManager;->g:Landroid/util/ArrayMap;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/coloros/translate/LanguageManager;->i:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/coloros/translate/LanguageManager;->f:Landroid/util/ArrayMap;

    if-nez v4, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_5

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/coloros/translate/LanguageManager;->h:Landroid/util/ArrayMap;

    if-nez v3, :cond_8

    const-string v3, "displayAsrLanguageMap"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_9
    :goto_5
    iput-boolean v0, p0, Lcom/coloros/translate/LanguageManager;->s:Z

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static synthetic a(Lcom/coloros/translate/LanguageManager;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/LanguageManager;->Q(Lcom/coloros/translate/LanguageManager;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/LanguageManager;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/LanguageManager;->G(Lcom/coloros/translate/LanguageManager;)V

    return-void
.end method

.method public static synthetic c(Lw8/p;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/LanguageManager;->y(Lw8/p;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/LanguageManager;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/LanguageManager;->E(Lcom/coloros/translate/LanguageManager;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic e()Ln8/j;
    .locals 1

    sget-object v0, Lcom/coloros/translate/LanguageManager;->z:Ln8/j;

    return-object v0
.end method

.method public static final synthetic f()Ln8/j;
    .locals 1

    sget-object v0, Lcom/coloros/translate/LanguageManager;->A:Ln8/j;

    return-object v0
.end method

.method public static final synthetic g()Ln8/j;
    .locals 1

    sget-object v0, Lcom/coloros/translate/LanguageManager;->B:Ln8/j;

    return-object v0
.end method

.method public static final synthetic h(Lcom/coloros/translate/LanguageManager;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/LanguageManager;->A(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/LanguageManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/LanguageManager;->r:Z

    return p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/LanguageManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/LanguageManager;->s:Z

    return-void
.end method

.method public static final synthetic k(Lcom/coloros/translate/LanguageManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/LanguageManager;->W(Z)V

    return-void
.end method

.method private final s(Ljava/lang/String;)Lcom/coloros/translate/b;
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->j:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final u()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->k:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final v()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/p;->INSTANCE:Lcom/coloros/translate/utils/p;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/p;->e()Z

    move-result v0

    const-string v1, "-"

    const-string v2, "zh"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh_CN"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Hant"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "HK"

    invoke-static {v0, v2, v4, v5, v6}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-TW"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method

.method private final w(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, v1}, Lkotlin/collections/o;->W(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1, v4}, Lkotlin/collections/j0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {p2, v4}, Lkotlin/collections/j0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v2}, Lkotlin/collections/o;->W(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lkotlin/collections/o;->r0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/coloros/translate/LanguageManager;->C(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "merge newMap :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LanguageManager"

    invoke-virtual {p1, v0, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final x(Landroid/util/ArrayMap;Ljava/util/List;)Z
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    new-instance v1, Lcom/coloros/translate/LanguageManager$e;

    invoke-direct {v1, p0, p2, v0}, Lcom/coloros/translate/LanguageManager$e;-><init>(Lcom/coloros/translate/LanguageManager;Ljava/util/List;Lkotlin/jvm/internal/z;)V

    new-instance p0, Lcom/coloros/translate/e;

    invoke-direct {p0, v1}, Lcom/coloros/translate/e;-><init>(Lw8/p;)V

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-boolean p0, v0, Lkotlin/jvm/internal/z;->element:Z

    return p0
.end method

.method private static final y(Lw8/p;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final z(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/LanguageManager;->p(Lcom/coloros/translate/b;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final B()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/LanguageManager;->t:Z

    return p0
.end method

.method public final D(Ljava/lang/Boolean;)V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->I()V

    new-instance v0, Lcom/coloros/translate/f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/f;-><init>(Lcom/coloros/translate/LanguageManager;Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final F()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/LanguageManager;->r:Z

    iget-boolean v0, p0, Lcom/coloros/translate/LanguageManager;->s:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coloros/translate/g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/g;-><init>(Lcom/coloros/translate/LanguageManager;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final M(Lcom/coloros/translate/b;)V
    .locals 1

    const-string v0, "fromLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    return-void
.end method

.method public final N()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/LanguageManager;->r:Z

    return-void
.end method

.method public final O(Lcom/coloros/translate/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->p:Lcom/coloros/translate/d;

    iput-object p2, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->Y()Ljava/util/Map;

    const-string p1, "text_panel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->J()V

    iget-object p1, p0, Lcom/coloros/translate/LanguageManager;->n:Lcom/coloros/translate/b;

    sget-object p2, Lcom/coloros/translate/LanguageManager;->x:Lcom/coloros/translate/b;

    if-eq p1, p2, :cond_0

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/LanguageManager;->o:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/LanguageManager;->y:Lcom/coloros/translate/b;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    if-ne p1, p2, :cond_4

    :cond_2
    sget-object p1, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->J()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coloros/translate/LanguageManager;->W(Z)V

    :cond_4
    :goto_0
    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->p:Lcom/coloros/translate/d;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p1}, Lcom/coloros/translate/d$a;->a(Lcom/coloros/translate/d;Ljava/lang/Boolean;ILjava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLanguageListener : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LanguageManager"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/coloros/translate/b;->getEntries()Lr8/a;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/coloros/translate/LanguageManager;->n:Lcom/coloros/translate/b;

    :cond_2
    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/coloros/translate/LanguageManager;->o:Lcom/coloros/translate/b;

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/coloros/translate/LanguageManager;->y:Lcom/coloros/translate/b;

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->n:Lcom/coloros/translate/b;

    return-void
.end method

.method public final S(Lcom/coloros/translate/b;)V
    .locals 1

    const-string v0, "toLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    return-void
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/LanguageManager;->D(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fromLanguageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguageCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    move p1, v1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/b;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    goto :goto_2

    :cond_1
    move v1, p1

    :goto_2
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->I()V

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->p:Lcom/coloros/translate/d;

    if-eqz p0, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/coloros/translate/d;->i(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/LanguageManager$updateOnlineSupportLanguage$languageData$1;

    invoke-direct {v0}, Lcom/coloros/translate/LanguageManager$updateOnlineSupportLanguage$languageData$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/translate/utils/b0;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/SupportLanguageConfig;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "languageData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/coloros/translate/LanguageManager;->P(Lcom/coloros/translate/SupportLanguageConfig;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->p:Lcom/coloros/translate/d;

    return-void
.end method

.method public final m()Lcom/coloros/translate/b;
    .locals 8

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "text_panel"

    const-string v3, "LanguageManager"

    if-eqz v1, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "getCurrentFromLanguageList is empty"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    :cond_1
    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    sget-object v4, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-ne v1, v4, :cond_9

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentFromLanguage systemLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/o;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/b;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v4, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    if-eq v0, v1, :cond_6

    sget-object v2, Lcom/coloros/translate/b;->CHINESE_TW:Lcom/coloros/translate/b;

    if-ne v0, v2, :cond_8

    :cond_6
    move-object v4, v1

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    :cond_8
    :goto_0
    iput-object v4, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    goto :goto_2

    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v5, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentFromLanguage it : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " , currentFromLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    sget-object v4, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/coloros/translate/b;

    :goto_1
    iput-object v4, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    :cond_c
    :goto_2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentFromLanguage currentFromLanguage : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    return-object p0
.end method

.method public final n()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "<get-keys>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v4}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/b;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/coloros/translate/LanguageManager;->T(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final o()Lcom/coloros/translate/b;
    .locals 9

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/LanguageManager;->p(Lcom/coloros/translate/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "text_panel"

    const-string v3, "LanguageManager"

    if-eqz v1, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "getCurrentToLanguage getCurrentToLanguageList is empty"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    :cond_1
    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    sget-object v4, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-ne v1, v4, :cond_8

    sget-object v1, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/b;

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentToLanguage systemLanguage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , languageSystem : "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v2}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->v()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    if-eq v1, v0, :cond_7

    sget-object v0, Lcom/coloros/translate/b;->CHINESE_TW:Lcom/coloros/translate/b;

    if-ne v1, v0, :cond_5

    goto :goto_0

    :cond_5
    move-object v4, v1

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    :cond_7
    :goto_0
    iput-object v4, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentToLanguage it : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , currentToLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    const-string v5, "get(...)"

    if-eq v2, v4, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    :cond_a
    :goto_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentToLanguage currentToLanguage : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    return-object p0
.end method

.method public final p(Lcom/coloros/translate/b;)Ljava/util/ArrayList;
    .locals 6

    const-string v0, "fromLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p0, Lcom/coloros/translate/LanguageManager;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v5}, Lcom/coloros/translate/LanguageManager$d;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/b;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/LanguageManager;->q:Ljava/lang/String;

    const-string v1, "text_panel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0, v0}, Lcom/coloros/translate/LanguageManager;->T(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Ln8/q;
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/coloros/translate/LanguageManager;->s(Ljava/lang/String;)Lcom/coloros/translate/b;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/coloros/translate/LanguageManager;->s(Ljava/lang/String;)Lcom/coloros/translate/b;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ln8/q;

    invoke-direct {p0, v0, p1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/LanguageManager;->l:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-eq p1, v0, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager;->m:Lcom/coloros/translate/b;

    if-eq p0, v0, :cond_2

    new-instance v0, Ln8/q;

    invoke-direct {v0, p1, p0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance p0, Ln8/q;

    sget-object p1, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    invoke-direct {p0, p1, v0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final r(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "code"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-static {p0}, Lcom/coloros/translate/LanguageManager$d;->a(Lcom/coloros/translate/LanguageManager$d;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/n0;->c(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
