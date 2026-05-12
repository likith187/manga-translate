.class public Lb1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/b;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lb1/b;

.field private final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb1/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb1/a;->c:Ljava/util/HashMap;

    return-void
.end method

.method private c(Lb1/d;)Lb1/d;
    .locals 0

    invoke-virtual {p0, p1}, Lb1/a;->g(Lb1/d;)Lb1/d;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lb1/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lb1/a;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public a(Lb1/b;)Lb1/b;
    .locals 3

    iput-object p1, p0, Lb1/a;->b:Lb1/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lb1/b;->h()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lb1/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb1/d;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lb1/a;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/e;

    if-eqz v2, :cond_0

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lb1/a;->i()V

    return-object p0
.end method

.method public b(Lb1/d;)Lb1/e;
    .locals 4

    invoke-direct {p0, p1}, Lb1/a;->c(Lb1/d;)Lb1/d;

    move-result-object p1

    iget-object v0, p0, Lb1/a;->b:Lb1/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb1/b;->b(Lb1/d;)Lb1/e;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lb1/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb1/e;

    if-nez v0, :cond_2

    move-object v0, p1

    check-cast v0, Lb1/g;

    invoke-virtual {v0}, Lb1/g;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lb1/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/slp/library/common/log/Logs;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v3, "[%s] value not implements IClone\uff0c You need call setParamsValue a New Value!!"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lb1/h;

    invoke-direct {v0, v1}, Lb1/h;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lb1/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public d(Lb1/d;Ljava/lang/Object;)Lb1/b;
    .locals 1

    invoke-direct {p0, p1}, Lb1/a;->c(Lb1/d;)Lb1/d;

    move-result-object p1

    iget-object v0, p0, Lb1/a;->b:Lb1/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lb1/b;->d(Lb1/d;Ljava/lang/Object;)Lb1/b;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lb1/a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lb1/a;->b(Lb1/d;)Lb1/e;

    move-result-object p1

    invoke-interface {p1, p2}, Lb1/c;->set(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public e(Lb1/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb1/a;->b(Lb1/d;)Lb1/e;

    move-result-object p0

    invoke-interface {p0}, Lb1/c;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g(Lb1/d;)Lb1/d;
    .locals 0

    iget-object p0, p0, Lb1/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb1/d;

    return-object p0
.end method

.method public h()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lb1/a;->b:Lb1/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb1/b;->h()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lb1/a;->a:Ljava/util/Map;

    return-object p0
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lb1/a;->i()V

    return-void
.end method
