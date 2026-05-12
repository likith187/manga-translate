.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doTranslationAndScaleSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V
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

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p3

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p1

    sub-float p1, p2, p1

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result v0

    sub-float/2addr p3, v0

    div-float/2addr p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p3, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)V

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 p3, 0x4

    invoke-static {p2, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result p2

    const p3, 0x3e4ccccd    # 0.2f

    const v0, 0x3f4ccccd    # 0.8f

    if-eqz p2, :cond_2

    mul-float/2addr p1, p3

    add-float/2addr p1, v0

    goto :goto_1

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float p1, p2, v0

    :goto_1
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return-void
.end method
