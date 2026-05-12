.class public final Lkotlin/coroutines/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/c$a;
    }
.end annotation


# instance fields
.field private final element:Lkotlin/coroutines/g$b;

.field private final left:Lkotlin/coroutines/g;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    iput-object p2, p0, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    return-void
.end method

.method private final contains(Lkotlin/coroutines/g$b;)Z
    .locals 1

    invoke-interface {p1}, Lkotlin/coroutines/g$b;->getKey()Lkotlin/coroutines/g$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/c;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final containsAll(Lkotlin/coroutines/c;)Z
    .locals 1

    :goto_0
    iget-object v0, p1, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    invoke-direct {p0, v0}, Lkotlin/coroutines/c;->contains(Lkotlin/coroutines/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p1, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    instance-of v0, p1, Lkotlin/coroutines/c;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlin/coroutines/c;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/coroutines/g$b;

    invoke-direct {p0, p1}, Lkotlin/coroutines/c;->contains(Lkotlin/coroutines/g$b;)Z

    move-result p0

    return p0
.end method

.method private final size()I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    iget-object p0, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    instance-of v1, p0, Lkotlin/coroutines/c;

    if-eqz v1, :cond_0

    check-cast p0, Lkotlin/coroutines/c;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    invoke-direct {p0}, Lkotlin/coroutines/c;->size()I

    move-result v0

    new-array v1, v0, [Lkotlin/coroutines/g;

    new-instance v2, Lkotlin/jvm/internal/a0;

    invoke-direct {v2}, Lkotlin/jvm/internal/a0;-><init>()V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;

    new-instance v4, Lkotlin/coroutines/c$c;

    invoke-direct {v4, v1, v2}, Lkotlin/coroutines/c$c;-><init>([Lkotlin/coroutines/g;Lkotlin/jvm/internal/a0;)V

    invoke-virtual {p0, v3, v4}, Lkotlin/coroutines/c;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    iget p0, v2, Lkotlin/jvm/internal/a0;->element:I

    if-ne p0, v0, :cond_0

    new-instance p0, Lkotlin/coroutines/c$a;

    invoke-direct {p0, v1}, Lkotlin/coroutines/c$a;-><init>([Lkotlin/coroutines/g;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lkotlin/coroutines/c;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/coroutines/c;

    invoke-direct {p1}, Lkotlin/coroutines/c;->size()I

    move-result v0

    invoke-direct {p0}, Lkotlin/coroutines/c;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lkotlin/coroutines/c;->containsAll(Lkotlin/coroutines/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lw8/p;",
            ")TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    invoke-interface {p2, p1, p0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/g$b;",
            ">(",
            "Lkotlin/coroutines/g$c;",
            ")TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g$b;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    instance-of v0, p0, Lkotlin/coroutines/c;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlin/coroutines/c;

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g$c;",
            ")",
            "Lkotlin/coroutines/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g$b;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    return-object p0

    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g;->minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p1

    iget-object v0, p0, Lkotlin/coroutines/c;->left:Lkotlin/coroutines/g;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/coroutines/c;

    iget-object p0, p0, Lkotlin/coroutines/c;->element:Lkotlin/coroutines/g$b;

    invoke-direct {v0, p1, p0}, Lkotlin/coroutines/c;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/g$a;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ""

    sget-object v2, Lkotlin/coroutines/c$b;->INSTANCE:Lkotlin/coroutines/c$b;

    invoke-virtual {p0, v1, v2}, Lkotlin/coroutines/c;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
