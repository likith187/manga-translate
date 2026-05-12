.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->reversalEnterAnimation(Landroid/animation/Animator$AnimatorListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {p2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {p2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$2500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method
