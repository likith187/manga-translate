.class public final Lcom/coloros/translate/screen/translate/engine/language/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/observer/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/engine/language/j$b;
    }
.end annotation


# static fields
.field public static final i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

.field private static final j:Ln8/j;


# instance fields
.field private volatile a:Z

.field private final b:Landroid/util/ArrayMap;

.field private c:Lcom/coloros/translate/screen/translate/engine/language/a;

.field private d:Lcom/coloros/translate/screen/translate/engine/language/a;

.field private final e:Ln8/j;

.field private final f:Landroid/content/Context;

.field private final g:Ljava/util/ArrayList;

.field private final h:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/language/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/language/j$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j$a;->INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/j$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->j:Ln8/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->b:Landroid/util/ArrayMap;

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->ENGLISH:Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->CHINESE:Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j$f;->INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/j$f;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->e:Ln8/j;

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v0}, Lcom/coloros/translate/base/a;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->g:Ljava/util/ArrayList;

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j$d;->INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/j$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->h:Ln8/j;

    return-void
.end method

.method private static final C(Lcom/coloros/translate/screen/translate/engine/language/j;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/language/c;

    invoke-direct {v0}, Lcom/coloros/translate/screen/translate/engine/language/c;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/language/c;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->D()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->O(Lcom/coloros/translate/screen/translate/engine/language/j;Ljava/util/List;ILjava/lang/Object;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->u()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/e;->l(Lcom/coloros/translate/observer/e$a;)V

    :goto_0
    return-void
.end method

.method private final D()V
    .locals 4

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->w()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/coloros/translate/screen/translate/engine/language/a;->getEntries()Lr8/a;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->w()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final E(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->o(Lcom/coloros/translate/screen/translate/engine/language/a;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final G(Lcom/coloros/translate/screen/translate/engine/language/j;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->u()V

    return-void
.end method

.method private final J()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->a:Z

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->b:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method private final K()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/screen/utils/e;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final L()V
    .locals 4

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->x()Ln8/q;

    move-result-object v0

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/screen/translate/engine/language/a;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->E(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->m()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/coloros/translate/screen/translate/engine/language/a;->ENGLISH:Lcom/coloros/translate/screen/translate/engine/language/a;

    :goto_1
    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->q()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentToSystemLanguage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenTranslation.LanguageManager"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->ENGLISH:Lcom/coloros/translate/screen/translate/engine/language/a;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->CHINESE:Lcom/coloros/translate/screen/translate/engine/language/a;

    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    :goto_3
    return-void
.end method

.method private final N(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->J()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->b:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->h(Landroid/util/ArrayMap;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->b:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->i(Landroid/util/ArrayMap;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->k(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->L()V

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/language/i;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/language/i;-><init>(Lcom/coloros/translate/screen/translate/engine/language/j;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic O(Lcom/coloros/translate/screen/translate/engine/language/j;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->N(Ljava/util/List;)V

    return-void
.end method

.method private static final P(Lcom/coloros/translate/screen/translate/engine/language/j;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->a:Z

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->g:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/screen/translate/engine/language/e;

    invoke-interface {v0}, Lcom/coloros/translate/screen/translate/engine/language/e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final R(Ljava/util/ArrayList;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    new-instance p0, Lcom/coloros/translate/screen/translate/engine/language/j$e;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j$e;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/o;->u(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/screen/translate/engine/language/j;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->P(Lcom/coloros/translate/screen/translate/engine/language/j;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/screen/translate/engine/language/j;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->G(Lcom/coloros/translate/screen/translate/engine/language/j;)V

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/screen/translate/engine/language/j;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->C(Lcom/coloros/translate/screen/translate/engine/language/j;)V

    return-void
.end method

.method public static final synthetic f()Ln8/j;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->j:Ln8/j;

    return-object v0
.end method

.method public static final synthetic g(Lcom/coloros/translate/screen/translate/engine/language/j;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->N(Ljava/util/List;)V

    return-void
.end method

.method private final h(Landroid/util/ArrayMap;)V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->q()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->ENGLISH:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final i(Landroid/util/ArrayMap;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->CHINESE:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final k(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->b:Landroid/util/ArrayMap;

    invoke-static {p2}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->b:Landroid/util/ArrayMap;

    sget-object p1, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic p(Lcom/coloros/translate/screen/translate/engine/language/j;Lcom/coloros/translate/screen/translate/engine/language/a;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->o(Lcom/coloros/translate/screen/translate/engine/language/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final q()Lcom/coloros/translate/screen/translate/engine/language/a;
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->s()Ljava/util/List;

    move-result-object p0

    const-string v2, "fil"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v1, Lcom/coloros/translate/screen/translate/engine/language/a;->FILIPINO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "zh"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "toString(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "Hant"

    invoke-static {v2, v6, v4, v5, v3}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/coloros/translate/screen/translate/engine/language/a;->CHINESE_TW:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentToSystemLanguage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScreenTranslation.LanguageManager"

    invoke-virtual {v2, v4, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v3, v0

    :cond_3
    check-cast v3, Lcom/coloros/translate/screen/translate/engine/language/a;

    return-object v3
.end method

.method private final r()Ljava/util/List;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/coloros/translate/screen/translate/engine/language/a;->getEntries()Lr8/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->BENGALI:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->TURKISH:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->POLISH:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private final s()Ljava/util/List;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/coloros/translate/screen/translate/engine/language/a;->getEntries()Lr8/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private final u()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslation.LanguageManager"

    const-string v2, "getImgTransConfig"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->Companion:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;->getINSTANCE()Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/language/j$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/translate/engine/language/j$c;-><init>(Lcom/coloros/translate/screen/translate/engine/language/j;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->getImgTransConfig(Lcom/coloros/translate/screen/translate/engine/language/f;)V

    return-void
.end method

.method private final v()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->b:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private final w()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->h:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final x()Ln8/q;
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/screen/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->u0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->w()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->w()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object p0, v1

    :goto_0
    new-instance v0, Ln8/q;

    invoke-direct {v0, v1, p0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final y()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->e:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->a:Z

    return p0
.end method

.method public final B()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/language/g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/g;-><init>(Lcom/coloros/translate/screen/translate/engine/language/j;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->K()V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->g:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/screen/translate/engine/language/e;

    invoke-interface {v0}, Lcom/coloros/translate/screen/translate/engine/language/e;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final H(Lcom/coloros/translate/screen/translate/engine/language/e;)V
    .locals 3

    const-string v0, "languageListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslation.LanguageManager"

    const-string v2, "language has loaded"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/coloros/translate/screen/translate/engine/language/e;->a()V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final I()V
    .locals 1

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->w()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/e;->n(Lcom/coloros/translate/observer/e$a;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final M(Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 1

    const-string v0, "fromLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-void
.end method

.method public final Q(Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 1

    const-string v0, "toLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-void
.end method

.method public final S()Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->j(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->F()V

    const/4 p0, 0x1

    return p0
.end method

.method public final T(Lcom/coloros/translate/screen/translate/engine/language/e;)V
    .locals 1

    const-string v0, "languageListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()V
    .locals 1

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/e;->n(Lcom/coloros/translate/observer/e$a;)V

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/language/h;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/h;-><init>(Lcom/coloros/translate/screen/translate/engine/language/j;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final j(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z
    .locals 5

    const-string v0, "fromLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can switch, from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslation.LanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->v()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Lcom/coloros/translate/screen/translate/engine/language/a;
    .locals 3

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/coloros/translate/screen/translate/engine/language/a;->ENGLISH:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/coloros/translate/screen/translate/engine/language/a;

    :goto_0
    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

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

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->w()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/screen/translate/engine/language/a;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->R(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final n()Lcom/coloros/translate/screen/translate/engine/language/a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->p(Lcom/coloros/translate/screen/translate/engine/language/j;Lcom/coloros/translate/screen/translate/engine/language/a;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-object p0
.end method

.method public final o(Lcom/coloros/translate/screen/translate/engine/language/a;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->w()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/screen/translate/engine/language/a;

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->R(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
