.class Lcom/coui/appcompat/edittext/COUIEditText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIEditText;->animateToHideBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$4;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$4;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->access$402(Lcom/coui/appcompat/edittext/COUIEditText;I)I

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$4;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
