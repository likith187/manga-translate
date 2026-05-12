.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private isPosted:Z

.field targetState:I

.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->targetState:I

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->isPosted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->isPosted:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/c;->m(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/m0;->a0(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->isPosted:Z

    return-void
.end method
