.class Lcom/google/gson/internal/h$b$a;
.super Lcom/google/gson/internal/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/gson/internal/h$b;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/h$b$a;->h:Lcom/google/gson/internal/h$b;

    iget-object p1, p1, Lcom/google/gson/internal/h$b;->a:Lcom/google/gson/internal/h;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/h$d;-><init>(Lcom/google/gson/internal/h;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 0

    invoke-virtual {p0}, Lcom/google/gson/internal/h$d;->a()Lcom/google/gson/internal/h$e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/gson/internal/h$b$a;->b()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
