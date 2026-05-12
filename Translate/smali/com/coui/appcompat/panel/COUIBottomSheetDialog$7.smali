.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismissWithAlphaAnim()V
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

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1902(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2402(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)F

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;->onBottomSheetDialogCollapsed()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1902(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2402(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)F

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1902(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
