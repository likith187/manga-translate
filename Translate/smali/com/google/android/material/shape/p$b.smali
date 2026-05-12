.class Lcom/google/android/material/shape/p$b;
.super Lcom/google/android/material/shape/p$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/google/android/material/shape/p$d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/p$d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/p$g;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/p$b;->c:Lcom/google/android/material/shape/p$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lk4/a;ILandroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/shape/p$b;->c:Lcom/google/android/material/shape/p$d;

    invoke-static {v0}, Lcom/google/android/material/shape/p$d;->h(Lcom/google/android/material/shape/p$d;)F

    move-result v6

    iget-object v0, p0, Lcom/google/android/material/shape/p$b;->c:Lcom/google/android/material/shape/p$d;

    invoke-static {v0}, Lcom/google/android/material/shape/p$d;->i(Lcom/google/android/material/shape/p$d;)F

    move-result v7

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/shape/p$b;->c:Lcom/google/android/material/shape/p$d;

    invoke-static {v0}, Lcom/google/android/material/shape/p$d;->b(Lcom/google/android/material/shape/p$d;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/p$b;->c:Lcom/google/android/material/shape/p$d;

    invoke-static {v1}, Lcom/google/android/material/shape/p$d;->c(Lcom/google/android/material/shape/p$d;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/shape/p$b;->c:Lcom/google/android/material/shape/p$d;

    invoke-static {v2}, Lcom/google/android/material/shape/p$d;->d(Lcom/google/android/material/shape/p$d;)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/material/shape/p$b;->c:Lcom/google/android/material/shape/p$d;

    invoke-static {p0}, Lcom/google/android/material/shape/p$d;->e(Lcom/google/android/material/shape/p$d;)F

    move-result p0

    invoke-direct {v4, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lk4/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
