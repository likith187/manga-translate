.class Lcom/coui/appcompat/reddot/COUIHintRedDot$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
