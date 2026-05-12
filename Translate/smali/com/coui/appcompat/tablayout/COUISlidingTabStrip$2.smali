.class Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->val$position:I

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->updateIndicatorPosition()V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-static {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->access$000(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;)Lcom/coui/appcompat/tablayout/COUITabLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->resetTextColorAfterAnim()V

    return-void
.end method
