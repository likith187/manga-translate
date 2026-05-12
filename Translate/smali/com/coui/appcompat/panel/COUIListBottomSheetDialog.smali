.class public Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;,
        Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    }
.end annotation


# instance fields
.field private mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public refresh()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->refresh()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
