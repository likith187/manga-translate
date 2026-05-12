.class public final synthetic Lcom/coui/appcompat/panel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/b;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/b;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    return-void
.end method
