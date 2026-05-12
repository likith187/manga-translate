.class Lcom/coui/appcompat/panel/COUIPanelFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$finalAlphaAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->val$finalAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->access$100(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->access$100(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->val$finalAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
