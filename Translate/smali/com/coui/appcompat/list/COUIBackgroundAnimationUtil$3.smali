.class Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$300(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$400(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
