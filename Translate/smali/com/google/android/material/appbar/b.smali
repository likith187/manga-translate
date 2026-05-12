.class public final synthetic Lcom/google/android/material/appbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic b:Lcom/google/android/material/shape/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/b;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/google/android/material/appbar/b;->b:Lcom/google/android/material/shape/i;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/b;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object p0, p0, Lcom/google/android/material/appbar/b;->b:Lcom/google/android/material/shape/i;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/i;Landroid/animation/ValueAnimator;)V

    return-void
.end method
