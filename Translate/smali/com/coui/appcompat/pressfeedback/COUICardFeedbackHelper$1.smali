.class Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->initMoveBackAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper$1;->this$0:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper$1;->this$0:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1, v0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->access$002(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;F)F

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper$1;->this$0:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;

    invoke-static {p1, v0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->access$102(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;F)F

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper$1;->this$0:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->access$202(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;I)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
