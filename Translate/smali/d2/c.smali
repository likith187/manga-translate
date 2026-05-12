.class public Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/c$a;,
        Ld2/c$b;
    }
.end annotation


# static fields
.field public static final e:Ld2/c$a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroidx/appcompat/app/c;

.field private c:Lcom/coloros/translate/engine/ITranServiceBinder;

.field private d:Ld2/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld2/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld2/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ld2/c;->e:Ld2/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/c;->a:Landroid/app/Activity;

    new-instance p1, Ld2/c$c;

    invoke-direct {p1, p0}, Ld2/c$c;-><init>(Ld2/c;)V

    iput-object p1, p0, Ld2/c;->d:Ld2/c$c;

    return-void
.end method

.method public static synthetic a(Ld2/c;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld2/c;->i(Ld2/c;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Ld2/c;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld2/c;->j(Ld2/c;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic c(Ld2/c;)Lcom/coloros/translate/engine/ITranServiceBinder;
    .locals 0

    iget-object p0, p0, Ld2/c;->c:Lcom/coloros/translate/engine/ITranServiceBinder;

    return-object p0
.end method

.method public static final synthetic d(Ld2/c;Lcom/coloros/translate/engine/ITranServiceBinder;)V
    .locals 0

    iput-object p1, p0, Ld2/c;->c:Lcom/coloros/translate/engine/ITranServiceBinder;

    return-void
.end method

.method public static final synthetic e(Ld2/c;)V
    .locals 0

    invoke-direct {p0}, Ld2/c;->h()V

    return-void
.end method

.method private final g()Z
    .locals 2

    iget-object p0, p0, Ld2/c;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_first_use"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final h()V
    .locals 3

    iget-object v0, p0, Ld2/c;->b:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld2/c;->b:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Ld2/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/coloros/translate/R$string;->download_offline_package_title:I

    invoke-static {v1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/coloros/translate/R$string;->download_guide_dialog_content:I

    invoke-static {v1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/coloros/translate/R$string;->download:I

    new-instance v2, Ld2/a;

    invoke-direct {v2, p0}, Ld2/a;-><init>(Ld2/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/coloros/translate/R$string;->cancel:I

    new-instance v2, Ld2/b;

    invoke-direct {v2, p0}, Ld2/b;-><init>(Ld2/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    new-instance v1, Ld2/c$b;

    invoke-direct {v1}, Ld2/c$b;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Ld2/c;->b:Landroidx/appcompat/app/c;

    return-void
.end method

.method private static final i(Ld2/c;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ld2/c;->b:Landroidx/appcompat/app/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "oplus.intent.action.TRANSLATE_DOWNLOADS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "extra_from_package"

    const-string v0, "com.coloros.translate"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Ld2/c;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showGuide startActivity error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "GuideManager"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final j(Ld2/c;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ld2/c;->b:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    return-void
.end method

.method private final k()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "GuideManager"

    const-string v2, "startTranService"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.TRANSLATE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.translate.engine"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    iget-object p0, p0, Ld2/c;->d:Ld2/c$c;

    const/16 v2, 0x201

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    invoke-direct {p0}, Ld2/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld2/c;->k()V

    iget-object p0, p0, Ld2/c;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_first_use"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "stopTranslationService"

    const-string v2, "GuideManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Ld2/c;->d:Ld2/c$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/c;->c:Lcom/coloros/translate/engine/ITranServiceBinder;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTranslationService() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
