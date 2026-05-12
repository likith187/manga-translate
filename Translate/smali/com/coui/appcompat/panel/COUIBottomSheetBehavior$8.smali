.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ld0/h$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$8;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$8;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Ld0/k$a;)Z
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$8;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$8;->val$state:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    const/4 p0, 0x1

    return p0
.end method
