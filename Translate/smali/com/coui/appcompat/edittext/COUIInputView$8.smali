.class Lcom/coui/appcompat/edittext/COUIInputView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->showErrorMsgAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$8;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$8;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$800(Lcom/coui/appcompat/edittext/COUIInputView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
