.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismissWithInterruptibleAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1902(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;->onBottomSheetDialogCollapsed()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1902(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1902(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;->onDismissAnimationStart()V

    :cond_0
    return-void
.end method
