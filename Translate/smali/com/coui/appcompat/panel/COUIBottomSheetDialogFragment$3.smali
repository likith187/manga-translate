.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->backToFirstPanel()V
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

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->setCancelable(Z)V

    return-void
.end method
