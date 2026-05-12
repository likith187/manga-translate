.class public final Lcom/oplus/vfxsdk/common/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lw8/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lw8/a;)V
    .locals 1

    const-string v0, "flush"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/t;->a:Lw8/a;

    const-string p1, "VFX:RenderUpdateListener"

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/t;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/t;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lw8/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/common/t;->g(Lw8/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/oplus/vfxsdk/common/t;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/t;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static final g(Lw8/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Animator;->getData()Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/t;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/oplus/vfxsdk/common/t$a;

    invoke-direct {v1, p0, p1}, Lcom/oplus/vfxsdk/common/t$a;-><init>(Lcom/oplus/vfxsdk/common/t;Lcom/oplus/vfxsdk/common/Animator;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->addAnimEndListener(Lcom/oplus/vfxsdk/common/c;)V

    :cond_1
    return-void
.end method

.method public final d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final e()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/t;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public f(D)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Animator.onUpdate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Animator;->isPlay()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/oplus/vfxsdk/common/Animator;->onUpdate(D)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "Animator.flush"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/t;->a:Lw8/a;

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object p1, Lcom/oplus/vfxsdk/common/t$b;->INSTANCE:Lcom/oplus/vfxsdk/common/t$b;

    new-instance p2, Lcom/oplus/vfxsdk/common/s;

    invoke-direct {p2, p1}, Lcom/oplus/vfxsdk/common/s;-><init>(Lw8/l;)V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final h(Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Animator;->getData()Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/common/Animator;->removeAnimEndListener(Lcom/oplus/vfxsdk/common/c;)V

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Animator;->getData()Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/t;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
