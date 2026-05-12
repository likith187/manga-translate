.class Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;
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

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$100(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-virtual {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->startDisAppearAnimationOrNot()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p0, v1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$002(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;Z)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-virtual {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->startDisAppearAnimationOrNot()V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p0, v1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$002(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;Z)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-static {p1, v0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->access$002(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;Z)Z

    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-virtual {p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->startAppearAnimation()V

    :cond_5
    :goto_0
    return v1
.end method
