.class final Lw4/n;
.super Lcom/google/gson/v;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/d;

.field private final b:Lcom/google/gson/v;

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/d;Lcom/google/gson/v;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    iput-object p1, p0, Lw4/n;->a:Lcom/google/gson/d;

    iput-object p2, p0, Lw4/n;->b:Lcom/google/gson/v;

    iput-object p3, p0, Lw4/n;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method private static e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static f(Lcom/google/gson/v;)Z
    .locals 1

    :goto_0
    instance-of v0, p0, Lw4/l;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lw4/l;

    invoke-virtual {v0}, Lw4/l;->e()Lcom/google/gson/v;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    :goto_1
    instance-of p0, p0, Lw4/k$b;

    return p0
.end method


# virtual methods
.method public b(La5/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw4/n;->b:Lcom/google/gson/v;

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(La5/c;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lw4/n;->b:Lcom/google/gson/v;

    iget-object v1, p0, Lw4/n;->c:Ljava/lang/reflect/Type;

    invoke-static {v1, p2}, Lw4/n;->e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lw4/n;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lw4/n;->a:Lcom/google/gson/d;

    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/d;->o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object v0

    instance-of v1, v0, Lw4/k$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw4/n;->b:Lcom/google/gson/v;

    invoke-static {v1}, Lw4/n;->f(Lcom/google/gson/v;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lw4/n;->b:Lcom/google/gson/v;

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    return-void
.end method
