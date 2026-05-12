.class public final Lcom/coloros/translate/permission/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/permission/a$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/coloros/translate/permission/a$b;

.field private static final d:Ln8/j;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lcom/coloros/translate/widget/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/permission/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/permission/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    sget-object v0, Lcom/coloros/translate/permission/a$a;->INSTANCE:Lcom/coloros/translate/permission/a$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/permission/a;->d:Ln8/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ln8/j;
    .locals 1

    sget-object v0, Lcom/coloros/translate/permission/a;->d:Ln8/j;

    return-object v0
.end method

.method public static final synthetic b(Lcom/coloros/translate/permission/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/permission/a;->k(Landroid/content/Context;)V

    return-void
.end method

.method private final c(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/permission/a;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.oplus.securitypermission"

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object p1, v0

    :goto_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "RecordPermissionDialogManger"

    if-eqz v1, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "canNavigateToAppPermissions security permission not found"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v0, "navigateToAppPermissions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/coloros/translate/permission/a;->a:Ljava/lang/Boolean;

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCanNavigateToAppPermissions  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/permission/a;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final i(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package:com.coloros.translate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lr/a;->j(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private final j(Landroid/content/Context;)V
    .locals 3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "oplus.intent.action.PERMISSION_APP_DETAIL"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "permissionList"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "packageName"

    const-string v2, "com.coloros.translate"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final k(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/coloros/translate/permission/a;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0, p1}, Lcom/coloros/translate/permission/a;->j(Landroid/content/Context;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "RecordPermissionDialogManger"

    const-string v2, "jumpToPermissionSetForOS14 permission error or undeclared in safecenter AndroidManifest.xml"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/permission/a;->i(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/permission/a;->i(Landroid/content/Context;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private final l(Landroid/content/Context;)V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRecordPermissionExplainDialog  showAudioPermissionDialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordPermissionDialogManger"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/widget/d;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coloros/translate/widget/d;

    new-instance v3, Lcom/coloros/translate/permission/a$c;

    invoke-direct {v3, p0, p1}, Lcom/coloros/translate/permission/a$c;-><init>(Lcom/coloros/translate/permission/a;Landroid/content/Context;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/widget/d;-><init>(Landroid/content/Context;Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/widget/d;->e()V

    :cond_2
    return-void
.end method

.method private final m(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRecordPermissionExplainDialogTextTranslation  showAudioPermissionDialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordPermissionDialogManger"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/widget/d;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coloros/translate/widget/d;

    new-instance v1, Lcom/coloros/translate/permission/a$d;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/permission/a$d;-><init>(Lcom/coloros/translate/permission/a;Landroid/content/Context;)V

    sget-object v2, Lcom/coloros/translate/widget/e;->NEED_DISMISS_DIALOG:Lcom/coloros/translate/widget/e;

    invoke-direct {v0, p1, v1, v2}, Lcom/coloros/translate/widget/d;-><init>(Landroid/content/Context;Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;)V

    iput-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/widget/d;->e()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final d(Landroid/app/Activity;)Z
    .locals 2

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "RecordPermissionDialogManger"

    const-string v1, "checkAndShowRecordPermissionDialog"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Lr/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return v0
.end method

.method public final e(Landroid/app/Activity;)Z
    .locals 2

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "RecordPermissionDialogManger"

    const-string v1, "checkAndShowRecordPermissionDialogTextTranslation"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Lr/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "permission_granted"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/coloros/translate/permission/a;->l(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "permission_granted"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/coloros/translate/permission/a;->m(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/widget/d;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/permission/a;->b:Lcom/coloros/translate/widget/d;

    return-void
.end method
