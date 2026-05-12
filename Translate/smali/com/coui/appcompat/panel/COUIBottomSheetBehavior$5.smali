.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startDragToHiddenAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->val$child:Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$102(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 1

    check-cast p1, Landroid/view/View;

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$102(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)I

    return-void
.end method
