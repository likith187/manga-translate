.class Lcom/google/android/material/shape/t$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/t;->n(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/shape/t;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/shape/t$a;->a:Lcom/google/android/material/shape/t;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget-object p1, p0, Lcom/google/android/material/shape/t$a;->a:Lcom/google/android/material/shape/t;

    iget-object v0, p1, Lcom/google/android/material/shape/s;->c:Lcom/google/android/material/shape/n;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/material/shape/s;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/t$a;->a:Lcom/google/android/material/shape/t;

    iget-object p1, p0, Lcom/google/android/material/shape/s;->d:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, p1

    invoke-static {p0}, Lcom/google/android/material/shape/t;->l(Lcom/google/android/material/shape/t;)F

    move-result v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_0
    return-void
.end method
