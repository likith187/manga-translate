.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->val$f:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->val$f:Lcom/coui/appcompat/panel/COUIPanelFragment;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAbandon(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->this$1:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->val$f:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/z;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/z;->i()I

    :cond_0
    return-void
.end method
