.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->cancel()V

    :cond_0
    return-void
.end method
