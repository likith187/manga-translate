.class public final Lw4/m;
.super Lw4/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/m$b;,
        Lw4/m$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/h;

.field final b:Lcom/google/gson/d;

.field private final c:Lcom/google/gson/reflect/TypeToken;

.field private final d:Lcom/google/gson/w;

.field private final e:Lw4/m$b;

.field private final f:Z

.field private volatile g:Lcom/google/gson/v;


# direct methods
.method public constructor <init>(Lcom/google/gson/p;Lcom/google/gson/h;Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/w;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lw4/m;-><init>(Lcom/google/gson/p;Lcom/google/gson/h;Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/w;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/p;Lcom/google/gson/h;Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/w;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw4/l;-><init>()V

    .line 2
    new-instance p1, Lw4/m$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lw4/m$b;-><init>(Lw4/m;Lw4/m$a;)V

    iput-object p1, p0, Lw4/m;->e:Lw4/m$b;

    .line 3
    iput-object p2, p0, Lw4/m;->a:Lcom/google/gson/h;

    .line 4
    iput-object p3, p0, Lw4/m;->b:Lcom/google/gson/d;

    .line 5
    iput-object p4, p0, Lw4/m;->c:Lcom/google/gson/reflect/TypeToken;

    .line 6
    iput-object p5, p0, Lw4/m;->d:Lcom/google/gson/w;

    .line 7
    iput-boolean p6, p0, Lw4/m;->f:Z

    return-void
.end method

.method private f()Lcom/google/gson/v;
    .locals 3

    iget-object v0, p0, Lw4/m;->g:Lcom/google/gson/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw4/m;->b:Lcom/google/gson/d;

    iget-object v1, p0, Lw4/m;->d:Lcom/google/gson/w;

    iget-object v2, p0, Lw4/m;->c:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->q(Lcom/google/gson/w;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object v0

    iput-object v0, p0, Lw4/m;->g:Lcom/google/gson/v;

    :goto_0
    return-object v0
.end method

.method public static g(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/w;
    .locals 3

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lw4/m$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lw4/m$c;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method public b(La5/a;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw4/m;->a:Lcom/google/gson/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lw4/m;->f()Lcom/google/gson/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/gson/internal/m;->a(La5/a;)Lcom/google/gson/i;

    move-result-object p1

    iget-boolean v0, p0, Lw4/m;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/i;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lw4/m;->a:Lcom/google/gson/h;

    iget-object v1, p0, Lw4/m;->c:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object p0, p0, Lw4/m;->e:Lw4/m$b;

    invoke-interface {v0, p1, v1, p0}, Lcom/google/gson/h;->deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(La5/c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lw4/m;->f()Lcom/google/gson/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lcom/google/gson/v;
    .locals 0

    invoke-direct {p0}, Lw4/m;->f()Lcom/google/gson/v;

    move-result-object p0

    return-object p0
.end method
