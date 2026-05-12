.class public abstract Lw4/k$b;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    iput-object p1, p0, Lw4/k$b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(La5/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object v0

    sget-object v1, La5/b;->NULL:La5/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lw4/k$b;->e()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, La5/a;->i()V

    :goto_0
    invoke-virtual {p1}, La5/a;->X()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, La5/a;->F0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lw4/k$b;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw4/k$c;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lw4/k$c;->e:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lw4/k$b;->g(Ljava/lang/Object;La5/a;Lw4/k$c;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p1}, La5/a;->V0()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, La5/a;->D()V

    invoke-virtual {p0, v0}, Lw4/k$b;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_2
    invoke-static {p0}, Ly4/a;->e(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_3
    new-instance p1, Lcom/google/gson/q;

    invoke-direct {p1, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public d(La5/c;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/c;->q0()La5/c;

    return-void

    :cond_0
    invoke-virtual {p1}, La5/c;->v()La5/c;

    :try_start_0
    iget-object p0, p0, Lw4/k$b;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw4/k$c;

    invoke-virtual {v0, p1, p2}, Lw4/k$c;->c(La5/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, La5/c;->D()La5/c;

    return-void

    :goto_1
    invoke-static {p0}, Ly4/a;->e(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method abstract e()Ljava/lang/Object;
.end method

.method abstract f(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract g(Ljava/lang/Object;La5/a;Lw4/k$c;)V
.end method
