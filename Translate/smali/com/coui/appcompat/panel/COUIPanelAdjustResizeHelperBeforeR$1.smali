.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doPaddingBottomAnim(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

.field final synthetic val$endValue:I

.field final synthetic val$paddingLeft:I

.field final synthetic val$paddingRight:I

.field final synthetic val$paddingTop:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$paddingLeft:I

    iput p4, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$paddingTop:I

    iput p5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$paddingRight:I

    iput p6, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$endValue:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$paddingLeft:I

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$paddingTop:I

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$paddingRight:I

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;->val$endValue:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
