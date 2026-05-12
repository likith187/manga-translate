.class Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->createDialog()Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;->this$0:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;II)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;->this$0:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->access$100(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;->this$0:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->access$200(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1, p0, p2, p3}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;->this$0:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->access$200(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_2
    :goto_1
    return-void
.end method
