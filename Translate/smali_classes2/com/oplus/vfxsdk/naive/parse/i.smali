.class public final Lcom/oplus/vfxsdk/naive/parse/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/b;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 2

    const-string v0, "layers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/i;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/oplus/vfxsdk/naive/parse/i;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getAnimators()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/i;->a:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Animator;->getData()Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Ld8/c;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/i;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld8/c;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/i;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw8/l;

    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_1

    :cond_0
    move-object v0, p2

    :goto_1
    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
