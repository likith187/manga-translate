.class public Landroidx/lifecycle/u;
.super Landroidx/lifecycle/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/u$a;,
        Landroidx/lifecycle/u$b;
    }
.end annotation


# static fields
.field public static final k:Landroidx/lifecycle/u$a;


# instance fields
.field private final b:Z

.field private c:Li/a;

.field private d:Landroidx/lifecycle/l$b;

.field private final e:Ljava/lang/ref/WeakReference;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/util/ArrayList;

.field private final j:Lkotlinx/coroutines/flow/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/u$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/u;->k:Landroidx/lifecycle/u$a;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/s;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;Z)V

    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/s;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/l;-><init>()V

    .line 2
    iput-boolean p2, p0, Landroidx/lifecycle/u;->b:Z

    .line 3
    new-instance p2, Li/a;

    invoke-direct {p2}, Li/a;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/u;->c:Li/a;

    .line 4
    sget-object p2, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    iput-object p2, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/u;->i:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/u;->e:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-static {p2}, Lkotlinx/coroutines/flow/i;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/u;->j:Lkotlinx/coroutines/flow/f;

    return-void
.end method

.method private final e(Landroidx/lifecycle/s;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v0}, Li/b;->a()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "descendingIterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/u;->h:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/r;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u$b;

    :goto_0
    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v3

    iget-object v4, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/u;->h:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v3, v2}, Li/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/l$a$a;->a(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/lifecycle/l$a;->getTargetState()Landroidx/lifecycle/l$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/u;->m(Landroidx/lifecycle/l$b;)V

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/u$b;->a(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/u;->l()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no event down from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private final f(Landroidx/lifecycle/r;)Landroidx/lifecycle/l$b;
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v0, p1}, Li/a;->i(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/u$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/u;->i:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/l$b;

    :cond_1
    sget-object v1, Landroidx/lifecycle/u;->k:Landroidx/lifecycle/u$a;

    iget-object p0, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    invoke-virtual {v1, p0, p1}, Landroidx/lifecycle/u$a;->a(Landroidx/lifecycle/l$b;Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$b;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/u$a;->a(Landroidx/lifecycle/l$b;Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$b;

    move-result-object p0

    return-object p0
.end method

.method private final g(Ljava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Landroidx/lifecycle/u;->b:Z

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/lifecycle/w;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Method "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final h(Landroidx/lifecycle/s;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v0}, Li/b;->d()Li/b$d;

    move-result-object v0

    const-string v1, "iteratorWithAdditions(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/u;->h:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/r;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u$b;

    :goto_0
    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v3

    iget-object v4, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/u;->h:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v3, v2}, Li/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/lifecycle/u;->m(Landroidx/lifecycle/l$b;)V

    sget-object v3, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/l$a$a;->c(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/u$b;->a(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/u;->l()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no event up from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private final j()Z
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v0}, Li/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v0}, Li/b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/u$b;

    invoke-virtual {v0}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    iget-object v2, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v2}, Li/b;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/u$b;

    invoke-virtual {v2}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final k(Landroidx/lifecycle/l$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/s;

    iget-object v1, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;Landroidx/lifecycle/l$b;Landroidx/lifecycle/l$b;)V

    iput-object p1, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    iget-boolean p1, p0, Landroidx/lifecycle/u;->g:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget p1, p0, Landroidx/lifecycle/u;->f:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/u;->g:Z

    invoke-direct {p0}, Landroidx/lifecycle/u;->o()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/u;->g:Z

    iget-object p1, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    sget-object v0, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    if-ne p1, v0, :cond_2

    new-instance p1, Li/a;

    invoke-direct {p1}, Li/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/u;->c:Li/a;

    :cond_2
    return-void

    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/u;->h:Z

    return-void
.end method

.method private final l()V
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/u;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final m(Landroidx/lifecycle/l$b;)V
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/u;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final o()V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/s;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/u;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroidx/lifecycle/u;->h:Z

    iget-object v1, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    iget-object v2, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v2}, Li/b;->b()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/u$b;

    invoke-virtual {v2}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->e(Landroidx/lifecycle/s;)V

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v1}, Li/b;->e()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/u;->h:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u$b;

    invoke-virtual {v1}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->h(Landroidx/lifecycle/s;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroidx/lifecycle/u;->h:Z

    iget-object v0, p0, Landroidx/lifecycle/u;->j:Lkotlinx/coroutines/flow/f;

    invoke-virtual {p0}, Landroidx/lifecycle/u;->b()Landroidx/lifecycle/l$b;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/f;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/r;)V
    .locals 6

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addObserver"

    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->g(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    sget-object v1, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    :goto_0
    new-instance v0, Landroidx/lifecycle/u$b;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/u$b;-><init>(Landroidx/lifecycle/r;Landroidx/lifecycle/l$b;)V

    iget-object v1, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v1, p1, v0}, Li/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u$b;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/s;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Landroidx/lifecycle/u;->f:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/u;->g:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/r;)Landroidx/lifecycle/l$b;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/u;->f:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/u;->f:I

    :goto_3
    invoke-virtual {v0}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {v3, p1}, Li/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/lifecycle/u;->m(Landroidx/lifecycle/l$b;)V

    sget-object v3, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v0}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/l$a$a;->c(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/u$b;->a(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/u;->l()V

    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/r;)Landroidx/lifecycle/l$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event up from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/lifecycle/u$b;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-nez v2, :cond_7

    invoke-direct {p0}, Landroidx/lifecycle/u;->o()V

    :cond_7
    iget p1, p0, Landroidx/lifecycle/u;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/u;->f:I

    return-void
.end method

.method public b()Landroidx/lifecycle/l$b;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/l$b;

    return-object p0
.end method

.method public d(Landroidx/lifecycle/r;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeObserver"

    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->g(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/u;->c:Li/a;

    invoke-virtual {p0, p1}, Li/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Landroidx/lifecycle/l$a;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleLifecycleEvent"

    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/l$a;->getTargetState()Landroidx/lifecycle/l$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->k(Landroidx/lifecycle/l$b;)V

    return-void
.end method

.method public n(Landroidx/lifecycle/l$b;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCurrentState"

    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->g(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->k(Landroidx/lifecycle/l$b;)V

    return-void
.end method
