.class final Lw4/b$a;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/gson/v;

.field private final b:Lcom/google/gson/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/gson/d;Ljava/lang/reflect/Type;Lcom/google/gson/v;Lcom/google/gson/internal/i;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    new-instance v0, Lw4/n;

    invoke-direct {v0, p1, p3, p2}, Lw4/n;-><init>(Lcom/google/gson/d;Lcom/google/gson/v;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lw4/b$a;->a:Lcom/google/gson/v;

    iput-object p4, p0, Lw4/b$a;->b:Lcom/google/gson/internal/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw4/b$a;->e(La5/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lw4/b$a;->f(La5/c;Ljava/util/Collection;)V

    return-void
.end method

.method public e(La5/a;)Ljava/util/Collection;
    .locals 2

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object v0

    sget-object v1, La5/b;->NULL:La5/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lw4/b$a;->b:Lcom/google/gson/internal/i;

    invoke-interface {v0}, Lcom/google/gson/internal/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, La5/a;->c()V

    :goto_0
    invoke-virtual {p1}, La5/a;->X()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw4/b$a;->a:Lcom/google/gson/v;

    invoke-virtual {v1, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La5/a;->B()V

    return-object v0
.end method

.method public f(La5/c;Ljava/util/Collection;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/c;->q0()La5/c;

    return-void

    :cond_0
    invoke-virtual {p1}, La5/c;->k()La5/c;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lw4/b$a;->a:Lcom/google/gson/v;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La5/c;->B()La5/c;

    return-void
.end method
