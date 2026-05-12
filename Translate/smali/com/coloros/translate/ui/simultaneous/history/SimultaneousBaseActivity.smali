.class public abstract Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;
.super Lcom/coloros/translate/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$a;,
        Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coloros/translate/base/q;",
        ">",
        "Lcom/coloros/translate/base/BaseActivity<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final q:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$a;


# instance fields
.field private o:Landroidx/appcompat/app/c;

.field private p:Landroidx/appcompat/app/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->q:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic D0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->P0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic E0(Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->L0(Lw8/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic F0(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->Q0(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V

    return-void
.end method

.method public static synthetic G0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->M0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic H0(Lw8/l;Lcom/coui/appcompat/edittext/COUIEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->O0(Lw8/l;Lcom/coui/appcompat/edittext/COUIEditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic I0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)Landroidx/appcompat/app/c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->o:Landroidx/appcompat/app/c;

    return-object p0
.end method

.method public static synthetic K0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;IILw8/a;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->J0(IILw8/a;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showDeleteDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final L0(Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$deleteClickCallback"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final M0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final O0(Lw8/l;Lcom/coui/appcompat/edittext/COUIEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$saveClickCallback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$nameEt"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final P0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final Q0(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V
    .locals 1

    const-string v0, "$nameEt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected final J0(IILw8/a;)V
    .locals 5

    const-string v0, "deleteClickCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "getString(...)"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$string;->delete_one_item:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->if_delete_one_item:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$string;->remove_all_items:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->if_remove_all_items:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$plurals;->delete_item:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getQuantityString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$plurals;->if_delete_item:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ne p1, p2, :cond_2

    sget p1, Lcom/coloros/translate/R$string;->delete_all:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/coloros/translate/R$string;->action_delete:I

    :goto_1
    new-instance p2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/b;

    invoke-direct {v0, p3}, Lcom/coloros/translate/ui/simultaneous/history/b;-><init>(Lw8/a;)V

    invoke-virtual {p2, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/coloros/translate/base/R$string;->action_cancel:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/coloros/translate/ui/simultaneous/history/c;

    invoke-direct {p3}, Lcom/coloros/translate/ui/simultaneous/history/c;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->p:Landroidx/appcompat/app/c;

    return-void
.end method

.method protected final N0(Ljava/lang/String;Lw8/l;)V
    .locals 6

    const-string v0, "oldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveClickCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$layout;->dialog_simultaneous_history_rename:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/R$id;->et_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "findViewById(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/coui/appcompat/edittext/COUIEditText;

    sget v4, Lcom/coloros/translate/R$id;->divider_line:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/coloros/translate/R$id;->tx_error_tips:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/edittext/COUIEditText;->setFastDeletable(Z)V

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;

    invoke-direct {v3, v1, v5, v4, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;Landroid/widget/TextView;Landroid/view/View;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/coloros/translate/R$string;->simultaneous_note_rename_title:I

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$string;->save:I

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/history/d;

    invoke-direct {v3, p2, v1}, Lcom/coloros/translate/ui/simultaneous/history/d;-><init>(Lw8/l;Lcom/coui/appcompat/edittext/COUIEditText;)V

    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/coloros/translate/base/R$string;->action_cancel:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/e;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/history/e;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->o:Landroidx/appcompat/app/c;

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/history/f;

    invoke-direct {p1, v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/f;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, p1}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/coloros/translate/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->o:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->p:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_1
    return-void
.end method
