.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->animatePress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$602(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;F)F

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)F

    move-result p1

    const v0, 0x3f7ae148    # 0.98f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$602(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;F)F

    :cond_0
    return-void
.end method
