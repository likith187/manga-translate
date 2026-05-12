.class Lcom/coui/appcompat/state/StateEffectAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/state/StateEffectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/state/StateEffectAnimator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/state/StateEffectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator$1;->this$0:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator$1;->this$0:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator$1;->this$0:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-static {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->access$000(Lcom/coui/appcompat/state/StateEffectAnimator;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method
