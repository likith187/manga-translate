.class public final Lcom/coloros/translate/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/widget/d$a;,
        Lcom/coloros/translate/widget/d$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/coloros/translate/widget/d$a;

.field private final c:Lcom/coloros/translate/widget/e;

.field private d:Landroidx/appcompat/app/c;

.field private e:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCallerType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/coloros/translate/widget/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/coloros/translate/widget/d;->b:Lcom/coloros/translate/widget/d$a;

    .line 4
    iput-object p3, p0, Lcom/coloros/translate/widget/d;->c:Lcom/coloros/translate/widget/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 5
    sget-object p3, Lcom/coloros/translate/widget/e;->NORMAL:Lcom/coloros/translate/widget/e;

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/widget/d;-><init>(Landroid/content/Context;Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/widget/d;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/widget/d;->f(Lcom/coloros/translate/widget/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/widget/d;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/widget/d;->g(Lcom/coloros/translate/widget/d;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final f(Lcom/coloros/translate/widget/d;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AudioPermissionDialog"

    const-string v2, "backInvokedCallback"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/widget/d;->b:Lcom/coloros/translate/widget/d$a;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/coloros/translate/widget/d$a;->a(Z)V

    :cond_1
    return-void
.end method

.method private static final g(Lcom/coloros/translate/widget/d;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$invokedCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/widget/d;->e:Landroid/window/OnBackInvokedCallback;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/translate/widget/d;->e:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/widget/d;->e:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/widget/d;->e:Landroid/window/OnBackInvokedCallback;

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_2
    return-void
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()V
    .locals 5

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Lcom/coloros/translate/widget/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/coloros/translate/widget/d;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/R$string;->audio_permission_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/widget/d;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/R$string;->not_audio_permission_tip_os16:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/widget/d;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/base/R$string;->action_setting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/widget/d$b;

    iget-object v3, p0, Lcom/coloros/translate/widget/d;->b:Lcom/coloros/translate/widget/d$a;

    iget-object v4, p0, Lcom/coloros/translate/widget/d;->c:Lcom/coloros/translate/widget/e;

    invoke-direct {v2, v3, v4}, Lcom/coloros/translate/widget/d$b;-><init>(Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/widget/d;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/base/R$string;->action_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/widget/d$b;

    iget-object v3, p0, Lcom/coloros/translate/widget/d;->b:Lcom/coloros/translate/widget/d$a;

    iget-object v4, p0, Lcom/coloros/translate/widget/d;->c:Lcom/coloros/translate/widget/e;

    invoke-direct {v2, v3, v4}, Lcom/coloros/translate/widget/d$b;-><init>(Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/widget/d$b;

    iget-object v3, p0, Lcom/coloros/translate/widget/d;->b:Lcom/coloros/translate/widget/d$a;

    iget-object v4, p0, Lcom/coloros/translate/widget/d;->c:Lcom/coloros/translate/widget/e;

    invoke-direct {v2, v3, v4}, Lcom/coloros/translate/widget/d$b;-><init>(Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    new-instance v0, Lcom/coloros/translate/widget/b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/widget/b;-><init>(Lcom/coloros/translate/widget/d;)V

    iput-object v0, p0, Lcom/coloros/translate/widget/d;->e:Landroid/window/OnBackInvokedCallback;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v1, v0}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/widget/d;->d:Landroidx/appcompat/app/c;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/coloros/translate/widget/c;

    invoke-direct {v2, p0, v0}, Lcom/coloros/translate/widget/c;-><init>(Lcom/coloros/translate/widget/d;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
