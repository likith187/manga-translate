.class public final synthetic Lcom/google/android/material/search/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lf/d;


# direct methods
.method public synthetic constructor <init>(Lf/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/r;->a:Lf/d;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/r;->a:Lf/d;

    invoke-static {p0, p1}, Lcom/google/android/material/search/w;->c(Lf/d;Landroid/animation/ValueAnimator;)V

    return-void
.end method
