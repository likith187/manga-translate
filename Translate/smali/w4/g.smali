.class public final Lw4/g;
.super La5/c;
.source "SourceFile"


# static fields
.field private static final s:Ljava/io/Writer;

.field private static final t:Lcom/google/gson/o;


# instance fields
.field private final p:Ljava/util/List;

.field private q:Ljava/lang/String;

.field private r:Lcom/google/gson/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw4/g$a;

    invoke-direct {v0}, Lw4/g$a;-><init>()V

    sput-object v0, Lw4/g;->s:Ljava/io/Writer;

    new-instance v0, Lcom/google/gson/o;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/gson/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw4/g;->t:Lcom/google/gson/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lw4/g;->s:Ljava/io/Writer;

    invoke-direct {p0, v0}, La5/c;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw4/g;->p:Ljava/util/List;

    sget-object v0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    iput-object v0, p0, Lw4/g;->r:Lcom/google/gson/i;

    return-void
.end method

.method private S0()Lcom/google/gson/i;
    .locals 1

    iget-object p0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/i;

    return-object p0
.end method

.method private T0(Lcom/google/gson/i;)V
    .locals 2

    iget-object v0, p0, Lw4/g;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La5/c;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lw4/g;->S0()Lcom/google/gson/i;

    move-result-object v0

    check-cast v0, Lcom/google/gson/l;

    iget-object v1, p0, Lw4/g;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/l;->m(Ljava/lang/String;Lcom/google/gson/i;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lw4/g;->q:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lw4/g;->r:Lcom/google/gson/i;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lw4/g;->S0()Lcom/google/gson/i;

    move-result-object p0

    instance-of v0, p0, Lcom/google/gson/f;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/gson/f;

    invoke-virtual {p0, p1}, Lcom/google/gson/f;->m(Lcom/google/gson/i;)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public B()La5/c;
    .locals 2

    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw4/g;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lw4/g;->S0()Lcom/google/gson/i;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public D()La5/c;
    .locals 2

    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw4/g;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lw4/g;->S0()Lcom/google/gson/i;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public K0(D)La5/c;
    .locals 2

    invoke-virtual {p0}, La5/c;->N()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/gson/o;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    return-object p0
.end method

.method public L0(J)La5/c;
    .locals 1

    new-instance v0, Lcom/google/gson/o;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    return-object p0
.end method

.method public M0(Ljava/lang/Boolean;)La5/c;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lw4/g;->q0()La5/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    return-object p0
.end method

.method public N0(Ljava/lang/Number;)La5/c;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lw4/g;->q0()La5/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, La5/c;->N()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    return-object p0
.end method

.method public O0(Ljava/lang/String;)La5/c;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lw4/g;->q0()La5/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    return-object p0
.end method

.method public P0(Z)La5/c;
    .locals 1

    new-instance v0, Lcom/google/gson/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    return-object p0
.end method

.method public R0()Lcom/google/gson/i;
    .locals 3

    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lw4/g;->r:Lcom/google/gson/i;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a0(Ljava/lang/String;)La5/c;
    .locals 1

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw4/g;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lw4/g;->S0()Lcom/google/gson/i;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/l;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lw4/g;->q:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lw4/g;->p:Ljava/util/List;

    sget-object v0, Lw4/g;->t:Lcom/google/gson/o;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public k()La5/c;
    .locals 2

    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    iget-object v1, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public q0()La5/c;
    .locals 1

    sget-object v0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    return-object p0
.end method

.method public v()La5/c;
    .locals 2

    new-instance v0, Lcom/google/gson/l;

    invoke-direct {v0}, Lcom/google/gson/l;-><init>()V

    invoke-direct {p0, v0}, Lw4/g;->T0(Lcom/google/gson/i;)V

    iget-object v1, p0, Lw4/g;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
