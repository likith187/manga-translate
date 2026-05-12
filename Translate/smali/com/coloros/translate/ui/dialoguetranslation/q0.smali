.class public final synthetic Lcom/coloros/translate/ui/dialoguetranslation/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/q0;->a:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/q0;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
