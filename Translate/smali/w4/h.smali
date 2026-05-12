.class public final Lw4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/h$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/internal/c;

.field final b:Z


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/h;->a:Lcom/google/gson/internal/c;

    iput-boolean p2, p0, Lw4/h;->b:Z

    return-void
.end method

.method private b(Lcom/google/gson/d;Ljava/lang/reflect/Type;)Lcom/google/gson/v;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/d;->o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lw4/o;->f:Lcom/google/gson/v;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 11

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/gson/internal/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lw4/h;->b(Lcom/google/gson/d;Ljava/lang/reflect/Type;)Lcom/google/gson/v;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/gson/d;->o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object v9

    iget-object v3, p0, Lw4/h;->a:Lcom/google/gson/internal/c;

    invoke-virtual {v3, p2}, Lcom/google/gson/internal/c;->b(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/i;

    move-result-object v10

    new-instance p2, Lw4/h$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lw4/h$a;-><init>(Lw4/h;Lcom/google/gson/d;Ljava/lang/reflect/Type;Lcom/google/gson/v;Ljava/lang/reflect/Type;Lcom/google/gson/v;Lcom/google/gson/internal/i;)V

    return-object p2
.end method
