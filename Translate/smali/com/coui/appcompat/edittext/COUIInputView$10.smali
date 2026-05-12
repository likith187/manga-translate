.class Lcom/coui/appcompat/edittext/COUIInputView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->hideErrorMsgAnim()V
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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$10;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$10;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$800(Lcom/coui/appcompat/edittext/COUIInputView;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$10;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$800(Lcom/coui/appcompat/edittext/COUIInputView;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
