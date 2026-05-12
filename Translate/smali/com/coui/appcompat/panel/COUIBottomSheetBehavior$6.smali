.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/c$q;


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


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/c;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    return-void
.end method
