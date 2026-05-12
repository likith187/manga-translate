.class public final Lw4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/b;->a:Lcom/google/gson/internal/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 3

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/gson/internal/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/d;->o(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object v1

    iget-object p0, p0, Lw4/b;->a:Lcom/google/gson/internal/c;

    invoke-virtual {p0, p2}, Lcom/google/gson/internal/c;->b(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/i;

    move-result-object p0

    new-instance p2, Lw4/b$a;

    invoke-direct {p2, p1, v0, v1, p0}, Lw4/b$a;-><init>(Lcom/google/gson/d;Ljava/lang/reflect/Type;Lcom/google/gson/v;Lcom/google/gson/internal/i;)V

    return-object p2
.end method
