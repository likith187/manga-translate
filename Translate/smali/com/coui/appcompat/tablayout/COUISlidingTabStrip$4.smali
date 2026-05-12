.class Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

.field final synthetic val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

.field final synthetic val$position:I

.field final synthetic val$tabView:Lcom/coui/appcompat/tablayout/COUITabView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;ILcom/coui/appcompat/tablayout/COUITabView;Lcom/coui/appcompat/tablayout/COUITabView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$position:I

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$tabView:Lcom/coui/appcompat/tablayout/COUITabView;

    iput-object p4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$position:I

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$tabView:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$tabView:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->access$000(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;)Lcom/coui/appcompat/tablayout/COUITabLayout;

    move-result-object v0

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-static {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->access$000(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;)Lcom/coui/appcompat/tablayout/COUITabLayout;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
