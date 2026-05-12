.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

.field final synthetic val$panelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;->val$panelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;->val$panelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$900(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroidx/fragment/app/Fragment;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$802(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;I)I

    return-void
.end method
