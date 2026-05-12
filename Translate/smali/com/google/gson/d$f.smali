.class Lcom/google/gson/d$f;
.super Lw4/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/google/gson/v;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw4/l;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/d$f;->a:Lcom/google/gson/v;

    return-void
.end method

.method private f()Lcom/google/gson/v;
    .locals 1

    iget-object p0, p0, Lcom/google/gson/d$f;->a:Lcom/google/gson/v;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/d$f;->f()Lcom/google/gson/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(La5/c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/d$f;->f()Lcom/google/gson/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lcom/google/gson/v;
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/d$f;->f()Lcom/google/gson/v;

    move-result-object p0

    return-object p0
.end method

.method public g(Lcom/google/gson/v;)V
    .locals 1

    iget-object v0, p0, Lcom/google/gson/d$f;->a:Lcom/google/gson/v;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/gson/d$f;->a:Lcom/google/gson/v;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Delegate is already set"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
