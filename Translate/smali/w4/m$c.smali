.class final Lw4/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/gson/reflect/TypeToken;

.field private final b:Z

.field private final c:Ljava/lang/Class;

.field private final f:Lcom/google/gson/h;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/gson/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/gson/h;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lw4/m$c;->f:Lcom/google/gson/h;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/gson/internal/a;->a(Z)V

    iput-object p2, p0, Lw4/m$c;->a:Lcom/google/gson/reflect/TypeToken;

    iput-boolean p3, p0, Lw4/m$c;->b:Z

    iput-object p4, p0, Lw4/m$c;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 7

    iget-object v0, p0, Lw4/m$c;->a:Lcom/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lw4/m$c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw4/m$c;->a:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lw4/m$c;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Lw4/m;

    const/4 v2, 0x0

    iget-object v3, p0, Lw4/m$c;->f:Lcom/google/gson/h;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lw4/m;-><init>(Lcom/google/gson/p;Lcom/google/gson/h;Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/w;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
