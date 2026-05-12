.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->createPanelAlphaAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->access$000(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->access$002(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Z)Z

    :cond_0
    return-void
.end method
