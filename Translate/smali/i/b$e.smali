.class abstract Li/b$e;
.super Li/b$f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field a:Li/b$c;

.field b:Li/b$c;


# direct methods
.method constructor <init>(Li/b$c;Li/b$c;)V
    .locals 0

    invoke-direct {p0}, Li/b$f;-><init>()V

    iput-object p2, p0, Li/b$e;->a:Li/b$c;

    iput-object p1, p0, Li/b$e;->b:Li/b$c;

    return-void
.end method

.method private e()Li/b$c;
    .locals 2

    iget-object v0, p0, Li/b$e;->b:Li/b$c;

    iget-object v1, p0, Li/b$e;->a:Li/b$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Li/b$e;->c(Li/b$c;)Li/b$c;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Li/b$c;)V
    .locals 1

    iget-object v0, p0, Li/b$e;->a:Li/b$c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Li/b$e;->b:Li/b$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Li/b$e;->b:Li/b$c;

    iput-object v0, p0, Li/b$e;->a:Li/b$c;

    :cond_0
    iget-object v0, p0, Li/b$e;->a:Li/b$c;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Li/b$e;->b(Li/b$c;)Li/b$c;

    move-result-object v0

    iput-object v0, p0, Li/b$e;->a:Li/b$c;

    :cond_1
    iget-object v0, p0, Li/b$e;->b:Li/b$c;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Li/b$e;->e()Li/b$c;

    move-result-object p1

    iput-object p1, p0, Li/b$e;->b:Li/b$c;

    :cond_2
    return-void
.end method

.method abstract b(Li/b$c;)Li/b$c;
.end method

.method abstract c(Li/b$c;)Li/b$c;
.end method

.method public d()Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Li/b$e;->b:Li/b$c;

    invoke-direct {p0}, Li/b$e;->e()Li/b$c;

    move-result-object v1

    iput-object v1, p0, Li/b$e;->b:Li/b$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Li/b$e;->b:Li/b$c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li/b$e;->d()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
