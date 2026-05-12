.class public final Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;
.super Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIUserStatementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmallLandContentViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindSimpleButtonGroupCtrl()V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSmallLandExitButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    invoke-static {p0, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public refreshSimpleButtonGroupCtrl(Landroid/content/res/Configuration;Landroid/view/View;)V
    .locals 0

    const-string p0, "configuration"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
