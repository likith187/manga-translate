.class Lcom/google/android/material/shape/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/shape/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/shape/i$a;->a:Lcom/google/android/material/shape/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/p;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/shape/i$a;->a:Lcom/google/android/material/shape/i;

    invoke-static {v0}, Lcom/google/android/material/shape/i;->access$000(Lcom/google/android/material/shape/i;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lcom/google/android/material/shape/p;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object p0, p0, Lcom/google/android/material/shape/i$a;->a:Lcom/google/android/material/shape/i;

    invoke-static {p0}, Lcom/google/android/material/shape/i;->access$200(Lcom/google/android/material/shape/i;)[Lcom/google/android/material/shape/p$g;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/p;->f(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/p$g;

    move-result-object p1

    aput-object p1, p0, p3

    return-void
.end method

.method public b(Lcom/google/android/material/shape/p;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i$a;->a:Lcom/google/android/material/shape/i;

    invoke-static {v0}, Lcom/google/android/material/shape/i;->access$000(Lcom/google/android/material/shape/i;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/shape/p;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object p0, p0, Lcom/google/android/material/shape/i$a;->a:Lcom/google/android/material/shape/i;

    invoke-static {p0}, Lcom/google/android/material/shape/i;->access$100(Lcom/google/android/material/shape/i;)[Lcom/google/android/material/shape/p$g;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/p;->f(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/p$g;

    move-result-object p1

    aput-object p1, p0, p3

    return-void
.end method
