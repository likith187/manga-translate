.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doMarginBottomAnim(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

.field final synthetic val$endValue:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;->val$endValue:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;->val$endValue:I

    const/4 v0, 0x3

    invoke-static {p1, p0, v0}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->setMargin(Landroid/view/View;II)V

    return-void
.end method
