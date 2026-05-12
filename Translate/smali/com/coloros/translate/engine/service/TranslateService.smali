.class public Lcom/coloros/translate/engine/service/TranslateService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/coloros/translate/engine/service/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/coloros/translate/engine/service/TranslateService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/TranslateService;->b:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/coloros/translate/engine/service/TranslateService;)Lcom/coloros/translate/engine/service/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/TranslateService;->a:Lcom/coloros/translate/engine/service/a;

    return-object p0
.end method

.method static bridge synthetic c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/service/TranslateService;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized d(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/coloros/translate/engine/service/TranslateService;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    aget-object p0, p0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TranslateService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/FreezeUtil;->b(Landroid/content/Context;)V

    new-instance p1, Lcom/coloros/translate/engine/service/TranslateService$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/service/TranslateService$a;-><init>(Lcom/coloros/translate/engine/service/TranslateService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "TranslateService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/coloros/translate/engine/service/TranslateService;->b:Landroid/content/Context;

    new-instance v0, Lcom/coloros/translate/engine/service/a;

    invoke-direct {v0}, Lcom/coloros/translate/engine/service/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/service/TranslateService;->a:Lcom/coloros/translate/engine/service/a;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "TranslateService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/FreezeUtil;->c(Landroid/content/Context;)V

    const-string v0, "3"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/service/TranslateService;->a:Lcom/coloros/translate/engine/service/a;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/service/a;->g()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "2"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
