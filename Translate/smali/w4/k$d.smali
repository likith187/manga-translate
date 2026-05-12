.class final Lw4/k$d;
.super Lw4/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final b:Lcom/google/gson/internal/i;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/i;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p2}, Lw4/k$b;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lw4/k$d;->b:Lcom/google/gson/internal/i;

    return-void
.end method


# virtual methods
.method e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw4/k$d;->b:Lcom/google/gson/internal/i;

    invoke-interface {p0}, Lcom/google/gson/internal/i;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method g(Ljava/lang/Object;La5/a;Lw4/k$c;)V
    .locals 0

    invoke-virtual {p3, p2, p1}, Lw4/k$c;->b(La5/a;Ljava/lang/Object;)V

    return-void
.end method
