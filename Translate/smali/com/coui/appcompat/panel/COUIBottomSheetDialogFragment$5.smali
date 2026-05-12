.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/b;->dismissAllowingStateLoss()V

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$500(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->isCanHideKeyboard()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)V

    :cond_1
    return-void
.end method
