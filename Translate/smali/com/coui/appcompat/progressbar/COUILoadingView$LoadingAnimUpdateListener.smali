.class Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingAnimUpdateListener"
.end annotation


# instance fields
.field mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/progressbar/COUILoadingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadingView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/progressbar/COUILoadingView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadingView state error,cancelAnimations"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$100(Lcom/coui/appcompat/progressbar/COUILoadingView;)V

    :cond_1
    :goto_0
    return-void
.end method
