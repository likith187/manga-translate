.class public final Lcom/coloros/translate/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/widget/f$a;,
        Lcom/coloros/translate/widget/f$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/coloros/translate/widget/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Landroidx/appcompat/app/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/widget/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/widget/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/widget/f;->d:Lcom/coloros/translate/widget/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/widget/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/widget/f;->b:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/widget/f;->c:Landroidx/appcompat/app/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/widget/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$layout;->cancel_layout_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/widget/f;->a:Landroid/content/Context;

    sget v3, Lcom/coloros/translate/R$string;->translation_personal_info_protection_policy:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/jvm/internal/h0;->INSTANCE:Lkotlin/jvm/internal/h0;

    iget-object v4, p0, Lcom/coloros/translate/widget/f;->a:Landroid/content/Context;

    sget v5, Lcom/coloros/translate/R$string;->cancel_content_tip:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-static {v3, v1, v6, v6}, Lkotlin/text/r;->S(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v7, v3, :cond_0

    if-ltz v7, :cond_0

    new-instance v3, Lcom/coloros/translate/widget/f$b;

    iget-object v5, p0, Lcom/coloros/translate/widget/f;->a:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/coloros/translate/widget/f$b;-><init>(Lcom/coloros/translate/widget/f;Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v7

    const/16 v5, 0x21

    invoke-virtual {v4, v3, v7, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    sget v1, Lcom/coloros/translate/R$id;->cancel_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v3, p0, Lcom/coloros/translate/widget/f;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/coloros/translate/R$string;->withdrawal_personal_info_protection_policy:I

    invoke-static {v3}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$string;->not_withdrawn:I

    invoke-static {v1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$string;->withdraw:I

    invoke-static {v1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/widget/f;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/widget/f;->c:Landroidx/appcompat/app/c;

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/widget/f;->c:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method
