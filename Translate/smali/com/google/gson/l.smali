.class public final Lcom/google/gson/l;
.super Lcom/google/gson/i;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/internal/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/gson/i;-><init>()V

    new-instance v0, Lcom/google/gson/internal/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gson/internal/h;-><init>(Z)V

    iput-object v0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/google/gson/l;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/gson/l;

    iget-object p1, p1, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    iget-object p0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public m(Ljava/lang/String;Lcom/google/gson/i;)V
    .locals 0

    iget-object p0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0, p2}, Lcom/google/gson/o;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/l;->m(Ljava/lang/String;Lcom/google/gson/i;)V

    return-void
.end method

.method public o()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0}, Lcom/google/gson/internal/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/google/gson/i;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/i;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/google/gson/f;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/f;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/l;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
