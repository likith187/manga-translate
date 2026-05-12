.class public final synthetic Lcom/coloros/translate/ui/simultaneous/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/d;->a:Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/d;->a:Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
