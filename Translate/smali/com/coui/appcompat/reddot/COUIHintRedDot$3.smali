.class Lcom/coui/appcompat/reddot/COUIHintRedDot$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeAlphaAnim()V
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

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$3;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$3;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$302(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I

    return-void
.end method
