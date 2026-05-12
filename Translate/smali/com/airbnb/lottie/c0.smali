.class public final synthetic Lcom/airbnb/lottie/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/c0;->a:Lcom/airbnb/lottie/i0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/c0;->a:Lcom/airbnb/lottie/i0;

    invoke-static {p0, p1}, Lcom/airbnb/lottie/i0;->g(Lcom/airbnb/lottie/i0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
