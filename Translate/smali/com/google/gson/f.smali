.class public final Lcom/google/gson/f;
.super Lcom/google/gson/i;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private o()Lcom/google/gson/i;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/i;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have size 1, but has size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/f;->o()Lcom/google/gson/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/i;->a()Z

    move-result p0

    return p0
.end method

.method public b()D
    .locals 2

    invoke-direct {p0}, Lcom/google/gson/f;->o()Lcom/google/gson/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/i;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/f;->o()Lcom/google/gson/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/i;->c()I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/google/gson/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/gson/f;

    iget-object p1, p1, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

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

.method public g()J
    .locals 2

    invoke-direct {p0}, Lcom/google/gson/f;->o()Lcom/google/gson/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/i;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/f;->o()Lcom/google/gson/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public m(Lcom/google/gson/i;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    :cond_0
    iget-object p0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(I)Lcom/google/gson/i;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/i;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/gson/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
