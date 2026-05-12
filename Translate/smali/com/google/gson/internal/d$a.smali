.class Lcom/google/gson/internal/d$a;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/d;->a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcom/google/gson/v;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/google/gson/d;

.field final synthetic e:Lcom/google/gson/reflect/TypeToken;

.field final synthetic f:Lcom/google/gson/internal/d;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d;ZZLcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/d$a;->f:Lcom/google/gson/internal/d;

    iput-boolean p2, p0, Lcom/google/gson/internal/d$a;->b:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/d$a;->c:Z

    iput-object p4, p0, Lcom/google/gson/internal/d$a;->d:Lcom/google/gson/d;

    iput-object p5, p0, Lcom/google/gson/internal/d$a;->e:Lcom/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method

.method private e()Lcom/google/gson/v;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/d$a;->a:Lcom/google/gson/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/d$a;->d:Lcom/google/gson/d;

    iget-object v1, p0, Lcom/google/gson/internal/d$a;->f:Lcom/google/gson/internal/d;

    iget-object v2, p0, Lcom/google/gson/internal/d$a;->e:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->q(Lcom/google/gson/w;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/d$a;->a:Lcom/google/gson/v;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(La5/a;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/internal/d$a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La5/a;->V0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/d$a;->e()Lcom/google/gson/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(La5/c;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/internal/d$a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La5/c;->q0()La5/c;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/d$a;->e()Lcom/google/gson/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    return-void
.end method
