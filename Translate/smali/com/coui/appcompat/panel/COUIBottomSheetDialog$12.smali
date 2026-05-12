.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doAlphaSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V
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

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p3

    cmpl-float p1, p1, p3

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result v0

    sub-float/2addr p1, v0

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;FZ)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method
