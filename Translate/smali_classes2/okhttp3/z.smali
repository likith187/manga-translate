.class public final Lokhttp3/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/z$a;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/u;

.field private final b:Ljava/lang/String;

.field private final c:Lokhttp3/t;

.field private final d:Lokhttp3/a0;

.field private final e:Ljava/util/Map;

.field private f:Lokhttp3/d;


# direct methods
.method public constructor <init>(Lokhttp3/u;Ljava/lang/String;Lokhttp3/t;Lokhttp3/a0;Ljava/util/Map;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/z;->a:Lokhttp3/u;

    iput-object p2, p0, Lokhttp3/z;->b:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/z;->c:Lokhttp3/t;

    iput-object p4, p0, Lokhttp3/z;->d:Lokhttp3/a0;

    iput-object p5, p0, Lokhttp3/z;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/a0;
    .locals 0

    iget-object p0, p0, Lokhttp3/z;->d:Lokhttp3/a0;

    return-object p0
.end method

.method public final b()Lokhttp3/d;
    .locals 2

    iget-object v0, p0, Lokhttp3/z;->f:Lokhttp3/d;

    if-nez v0, :cond_0

    sget-object v0, Lokhttp3/d;->n:Lokhttp3/d$b;

    iget-object v1, p0, Lokhttp3/z;->c:Lokhttp3/t;

    invoke-virtual {v0, v1}, Lokhttp3/d$b;->b(Lokhttp3/t;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->f:Lokhttp3/d;

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lokhttp3/z;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/z;->c:Lokhttp3/t;

    invoke-virtual {p0, p1}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lokhttp3/t;
    .locals 0

    iget-object p0, p0, Lokhttp3/z;->c:Lokhttp3/t;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lokhttp3/z;->a:Lokhttp3/u;

    invoke-virtual {p0}, Lokhttp3/u;->i()Z

    move-result p0

    return p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/z;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Lokhttp3/z$a;
    .locals 1

    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0, p0}, Lokhttp3/z$a;-><init>(Lokhttp3/z;)V

    return-object v0
.end method

.method public final i()Lokhttp3/u;
    .locals 0

    iget-object p0, p0, Lokhttp3/z;->a:Lokhttp3/u;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/z;->a:Lokhttp3/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/z;->c:Lokhttp3/t;

    invoke-virtual {v1}, Lokhttp3/t;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", headers=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/z;->c:Lokhttp3/t;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/o;->q()V

    :cond_0
    check-cast v3, Ln8/q;

    invoke-virtual {v3}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lokhttp3/z;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/z;->e:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
