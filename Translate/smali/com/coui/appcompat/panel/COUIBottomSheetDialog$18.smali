.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->createOutsideAlphaAnimation(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field final synthetic val$endAlphaValue:F

.field final synthetic val$isShow:Z

.field final synthetic val$startAlphaValue:F


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;FFZ)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->val$startAlphaValue:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->val$endAlphaValue:F

    iput-boolean p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->val$startAlphaValue:F

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->val$endAlphaValue:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;->val$isShow:Z

    invoke-static {v0, p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$3700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;FZ)V

    return-void
.end method
