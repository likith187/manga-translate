.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1$1;->this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1$1;->this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    return p1
.end method
