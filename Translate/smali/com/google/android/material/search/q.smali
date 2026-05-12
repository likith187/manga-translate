.class public final synthetic Lcom/google/android/material/search/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/w;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic f:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/w;FFLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/q;->a:Lcom/google/android/material/search/w;

    iput p2, p0, Lcom/google/android/material/search/q;->b:F

    iput p3, p0, Lcom/google/android/material/search/q;->c:F

    iput-object p4, p0, Lcom/google/android/material/search/q;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/q;->a:Lcom/google/android/material/search/w;

    iget v1, p0, Lcom/google/android/material/search/q;->b:F

    iget v2, p0, Lcom/google/android/material/search/q;->c:F

    iget-object p0, p0, Lcom/google/android/material/search/q;->f:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/material/search/w;->b(Lcom/google/android/material/search/w;FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
