.class final Lcom/google/gson/internal/h$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/h;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/h$c;->a:Lcom/google/gson/internal/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/h$c;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0}, Lcom/google/gson/internal/h;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/h$c;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/gson/internal/h$c$a;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/h$c$a;-><init>(Lcom/google/gson/internal/h$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/h$c;->a:Lcom/google/gson/internal/h;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/h$c;->a:Lcom/google/gson/internal/h;

    iget p0, p0, Lcom/google/gson/internal/h;->size:I

    return p0
.end method
