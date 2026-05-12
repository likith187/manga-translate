.class public final Lcom/coloros/translate/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/g;

    invoke-direct {v0}, Lcom/coloros/translate/utils/g;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/g;->INSTANCE:Lcom/coloros/translate/utils/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/utils/g;->i(Lw8/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/utils/g;->h(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.bootreg"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "com.oplus.bootreg.activity.statementpage"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "statement_intent_flag"

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.oplus.opusermanual"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.oem.intent.action.OP_LEGAL"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "op_legal_notices_type"

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goToPrivacyPage error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BootRegUtil"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.coloros.bootreg"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/g;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "com.oplus.opusermanual"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/g;->e(Landroid/content/Context;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static final e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v4, Lcom/coloros/translate/R$string;->enable_request_title:I

    sget v5, Lcom/coloros/translate/R$string;->boot_wizard_disable_message_v2:I

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/coloros/translate/utils/g;->g(Landroid/content/Context;Ljava/lang/String;IILw8/a;ILjava/lang/Object;)Landroidx/appcompat/app/c;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchBootRegPrivacyWithCheckResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not install"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BootRegUtil"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/String;IILw8/a;)Landroidx/appcompat/app/c;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    invoke-static {p1}, Lcom/coloros/translate/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    new-instance p2, Lcom/coloros/translate/utils/e;

    invoke-direct {p2, p1, p0}, Lcom/coloros/translate/utils/e;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance p1, Lcom/coloros/translate/utils/f;

    invoke-direct {p1, p4}, Lcom/coloros/translate/utils/f;-><init>(Lw8/a;)V

    sget p3, Lcom/coloros/translate/R$string;->open:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p2, Lcom/coloros/translate/R$string;->cancel:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p0

    const-string p1, "show(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/lang/String;IILw8/a;ILjava/lang/Object;)Landroidx/appcompat/app/c;
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/utils/g;->f(Landroid/content/Context;Ljava/lang/String;IILw8/a;)Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p3, "$packageName"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u542f\u52a8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u8bbe\u7f6e\u754c\u9762\u5931\u8d25"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BootRegUtil"

    invoke-virtual {p3, v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final i(Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
