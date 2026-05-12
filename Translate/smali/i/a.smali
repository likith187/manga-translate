.class public Li/a;
.super Li/b;
.source "SourceFile"


# instance fields
.field private final h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Li/b;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li/a;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;)Li/b$c;
    .locals 0

    iget-object p0, p0, Li/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/b$c;

    return-object p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Li/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Li/a;->c(Ljava/lang/Object;)Li/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Li/b$c;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, Li/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Li/b;->f(Ljava/lang/Object;Ljava/lang/Object;)Li/b$c;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Li/b;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Li/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0, p1}, Li/a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Li/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/b$c;

    iget-object p0, p0, Li/b$c;->f:Li/b$c;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
