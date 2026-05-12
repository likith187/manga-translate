.class public final Lcom/coloros/translate/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/widget/h$a;,
        Lcom/coloros/translate/widget/h$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/coloros/translate/widget/h$b;

.field private c:Landroidx/appcompat/app/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/translate/widget/h$b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/widget/h;->b:Lcom/coloros/translate/widget/h$b;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/widget/h;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/widget/h;->d(Lcom/coloros/translate/widget/h;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final d(Lcom/coloros/translate/widget/h;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/translate/widget/h;->c:Landroidx/appcompat/app/c;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/widget/h;->c:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/widget/h;->c:Landroidx/appcompat/app/c;

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/base/R$style;->AppBaseTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/coloros/translate/base/R$style;->AppBaseTheme:I

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/base/R$string;->clipboard_permission_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/base/R$string;->not_clipboard_permission_tip_os16:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/base/R$string;->action_setting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/widget/h$a;

    iget-object v3, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/coloros/translate/widget/h;->b:Lcom/coloros/translate/widget/h$b;

    invoke-direct {v2, v3, v4}, Lcom/coloros/translate/widget/h$a;-><init>(Landroid/content/Context;Lcom/coloros/translate/widget/h$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/base/R$string;->action_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/widget/h$a;

    iget-object v3, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/coloros/translate/widget/h;->b:Lcom/coloros/translate/widget/h$b;

    invoke-direct {v2, v3, v4}, Lcom/coloros/translate/widget/h$a;-><init>(Landroid/content/Context;Lcom/coloros/translate/widget/h$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/widget/g;

    invoke-direct {v1, p0}, Lcom/coloros/translate/widget/g;-><init>(Lcom/coloros/translate/widget/h;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/widget/h$a;

    iget-object v2, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/translate/widget/h;->b:Lcom/coloros/translate/widget/h$b;

    invoke-direct {v1, v2, v3}, Lcom/coloros/translate/widget/h$a;-><init>(Landroid/content/Context;Lcom/coloros/translate/widget/h$b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/widget/h;->c:Landroidx/appcompat/app/c;

    iget-object v1, p0, Lcom/coloros/translate/widget/h;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/widget/h;->c:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
