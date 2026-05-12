.class Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->init(Landroid/view/View;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    const/4 v0, 0x1

    iput v0, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mState:I

    invoke-static {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$200(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$202(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$300(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$400(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
