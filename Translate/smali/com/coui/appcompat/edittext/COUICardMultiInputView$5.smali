.class Lcom/coui/appcompat/edittext/COUICardMultiInputView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUICardMultiInputView;->executeColorAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$5;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$5;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$502(Lcom/coui/appcompat/edittext/COUICardMultiInputView;I)I

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$5;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$200(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$5;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$500(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
