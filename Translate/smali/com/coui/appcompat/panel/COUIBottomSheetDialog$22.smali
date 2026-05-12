.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
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

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v3, v3, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return v1

    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V

    return v1
.end method
