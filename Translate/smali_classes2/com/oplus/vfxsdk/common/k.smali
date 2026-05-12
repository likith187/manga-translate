.class public final Lcom/oplus/vfxsdk/common/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lu1/b;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/k;->a:Ljava/util/HashMap;

    new-instance v0, Lu1/b;

    invoke-direct {v0}, Lu1/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/k;->b:Lu1/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/k;->b:Lu1/b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lu1/b;->c(Ljava/lang/String;Ljava/lang/String;)Lu1/b;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;FF)Ljava/math/BigDecimal;
    .locals 4

    const-string p2, "expr"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v1, "origin"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p2, v0}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/k;->b:Lu1/b;

    float-to-double v2, p3

    invoke-virtual {p2, v1, v2, v3}, Lu1/b;->b(Ljava/lang/String;D)Lu1/b;

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/k;->b:Lu1/b;

    invoke-virtual {p0, p1}, Lu1/b;->d(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/k;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/k;->b:Lu1/b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v2, v3, v1}, Lu1/b;->c(Ljava/lang/String;Ljava/lang/String;)Lu1/b;

    goto :goto_0

    :cond_0
    return-void
.end method
