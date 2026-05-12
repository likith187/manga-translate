.class Lw4/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/j;->f(Lcom/google/gson/u;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/u;


# direct methods
.method constructor <init>(Lcom/google/gson/u;)V
    .locals 0

    iput-object p1, p0, Lw4/j$a;->a:Lcom/google/gson/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 2

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lw4/j;

    iget-object p0, p0, Lw4/j$a;->a:Lcom/google/gson/u;

    invoke-direct {p2, p1, p0, v1}, Lw4/j;-><init>(Lcom/google/gson/d;Lcom/google/gson/u;Lw4/j$a;)V

    return-object p2

    :cond_0
    return-object v1
.end method
