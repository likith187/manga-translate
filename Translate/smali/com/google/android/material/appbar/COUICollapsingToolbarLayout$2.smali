.class Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->startFadeAnimation(ZLandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

.field final synthetic val$isFadeIn:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    iput-boolean p2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->val$isFadeIn:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$502(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->val$isFadeIn:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$302(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$402(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)Z

    :goto_0
    return-void
.end method
