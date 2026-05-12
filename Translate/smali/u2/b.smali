.class public abstract Lu2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Set;

.field private final c:Lu2/i;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private e:Z


# direct methods
.method public constructor <init>(Lu2/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu2/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lu2/b;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lu2/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/b;->e:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lu2/b;->c:Lu2/i;

    invoke-virtual {p1, p0}, Lu2/i;->a(Lu2/b;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "springLooper is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lu2/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/e;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lu2/b;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lu2/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu2/b;->e:Z

    iget-object p0, p0, Lu2/b;->c:Lu2/i;

    invoke-virtual {p0}, Lu2/i;->b()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "springId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not reference a registered spring"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method b(D)V
    .locals 4

    iget-object v0, p0, Lu2/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/e;

    invoke-virtual {v1}, Lu2/e;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, p1, v2

    invoke-virtual {v1, v2, v3}, Lu2/e;->b(D)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lu2/b;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Lu2/e;
    .locals 1

    new-instance v0, Lu2/e;

    invoke-direct {v0, p0}, Lu2/e;-><init>(Lu2/b;)V

    invoke-virtual {p0, v0}, Lu2/b;->f(Lu2/e;)V

    return-object v0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lu2/b;->e:Z

    return p0
.end method

.method public e(D)V
    .locals 3

    iget-object v0, p0, Lu2/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lu2/b;->b(D)V

    iget-object p1, p0, Lu2/b;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu2/b;->e:Z

    :cond_0
    iget-object p1, p0, Lu2/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p1, p0, Lu2/b;->e:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lu2/b;->c:Lu2/i;

    invoke-virtual {p0}, Lu2/i;->c()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    throw v2

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    throw v2
.end method

.method f(Lu2/e;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lu2/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lu2/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lu2/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lu2/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spring is already registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spring is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
