.class Lcom/google/gson/internal/n$b;
.super Lcom/google/gson/internal/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/n;->c()Lcom/google/gson/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/n$b;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/google/gson/internal/n$b;->b:I

    invoke-direct {p0}, Lcom/google/gson/internal/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/gson/internal/n;->a(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/gson/internal/n$b;->a:Ljava/lang/reflect/Method;

    iget p0, p0, Lcom/google/gson/internal/n$b;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
