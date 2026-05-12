.class public Lcom/coloros/translate/screen/ScreenTranslationService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/engine/language/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;
    }
.end annotation


# static fields
.field private static m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static n:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

.field private c:Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;

.field private f:Landroid/app/OplusWhiteListManager;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/coloros/translate/screen/translate/download/a;

.field private k:Landroid/os/Handler;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/coloros/translate/screen/ScreenTranslationService;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/coloros/translate/screen/ScreenTranslationService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->i:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/screen/ScreenTranslationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/screen/ScreenTranslationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->p()V

    return-void
.end method

.method static bridge synthetic e(Lcom/coloros/translate/screen/ScreenTranslationService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/coloros/translate/screen/ScreenTranslationService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/ScreenTranslationService;->k(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic g()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/ScreenTranslationService;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static bridge synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/ScreenTranslationService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private i(I)V
    .locals 2

    const-string v0, "ScreenTranslationService"

    const-string v1, "createTranslationView()"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->r()V

    invoke-static {}, Ll2/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coloros.colordirectservice"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->w0(IZ)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->q()V

    return-void
.end method

.method private k(Landroid/content/Intent;)V
    .locals 4

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ScreenTranslationService"

    if-eqz v0, :cond_0

    const-string v0, "current is normal"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget p1, Lcom/coloros/translate/screen/R$string;->landscape_not_support:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u;->b(I)V

    const-string p1, "onCreate, landscape status, stop self"

    invoke-static {v1, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->a:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/translate/screen/a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/a;-><init>(Lcom/coloros/translate/screen/ScreenTranslationService;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string v0, "current is not small screen"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "Intent is null"

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->i:Z

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/ScreenTranslationService;->l(Landroid/content/Intent;)V

    :try_start_0
    const-string v0, "extra_from_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "source_appname"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    const-string v3, "com.coloros.colordirectservice"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "recog_screen"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    const-string v3, "com.coloros.gallery3d"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "photo"

    goto :goto_0

    :cond_4
    const-string v3, "com.coloros.smartsidebar"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v2, "sidebar"

    :cond_5
    :goto_0
    const-string p1, "source"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_screen_enter"

    invoke-static {}, Lcom/coloros/translate/screen/utils/w;->e()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/screen/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getIntent exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/coloros/translate/utils/c0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private l(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/a0;->f(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->B()V

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->H(Lcom/coloros/translate/screen/translate/engine/language/e;)V

    invoke-static {p1}, Ll2/a;->h(Landroid/content/Intent;)V

    invoke-static {}, Ll2/a;->e()I

    move-result p1

    new-instance v0, Lcom/coloros/translate/screen/b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/b;-><init>(Lcom/coloros/translate/screen/ScreenTranslationService;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->i(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/ScreenTranslationService;->i(I)V

    :goto_0
    return-void
.end method

.method public static m()Z
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/ScreenTranslationService;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/ScreenTranslationService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private synthetic o()V
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/translate/business/b;->INSTANCE:Lcom/coloros/translate/screen/translate/business/b;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/business/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic p()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->L0()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    new-instance v0, Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;

    invoke-direct {v0}, Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->c:Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;

    new-instance v0, Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-direct {v0}, Lcom/oplus/app/OplusAppSwitchConfig;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.permissioncontroller"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.tencent.av.ui.VideoInviteActivity"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.tencent.av.ui.AVActivity"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.android.incallui.OppoInCallActivity"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->c:Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;

    invoke-virtual {v1, p0, v2, v0}, Lcom/oplus/app/OplusAppSwitchManager;->registerAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    return-void
.end method

.method private r()V
    .locals 3

    const-string v0, "ScreenTranslationService"

    const-string v1, "registerProcessProtect()"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->f:Landroid/app/OplusWhiteListManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/OplusWhiteListManager;

    invoke-direct {v0, p0}, Landroid/app/OplusWhiteListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->f:Landroid/app/OplusWhiteListManager;

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->f:Landroid/app/OplusWhiteListManager;

    const-string v0, "com.coloros.ocrscanner"

    const-wide/32 v1, 0x6ddd00

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/OplusWhiteListManager;->addStageProtectInfo(Ljava/lang/String;J)V

    return-void
.end method

.method private s()V
    .locals 7

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/NotificationChannel;

    sget v2, Lcom/coloros/translate/screen/R$string;->screen_translation_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Screen_Channel_id"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.coloros.translate.screen.exit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/screen/R$string;->screen_trans_is_running:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$string;->screen_trans_notification_desc:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    sget v3, Lcom/coloros/translate/screen/R$string;->screen_trans_notification_exit:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x64

    const/high16 v6, 0x4000000

    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/16 v3, 0x7d1

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v3, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startForeground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTranslationService"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/c;-><init>(Lcom/coloros/translate/screen/ScreenTranslationService;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ScreenTranslationService"

    const-string v1, "onLanguageSwitched"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->z0()V

    :cond_0
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-object p0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->x0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "onConfigurationChanged()"

    const-string v1, "ScreenTranslationService"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreLanguage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newLanguage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->s()V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->h:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->v0(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "ScreenTranslationService"

    const-string v1, "screen translation service create"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->k:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/download/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->j:Lcom/coloros/translate/screen/translate/download/a;

    invoke-static {p0}, Ln6/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->h:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ScreenTranslationService"

    const-string v1, "screen translation service destroy"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->k:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->Companion:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;->getINSTANCE()Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->destroy()V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->I()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->i:Z

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->t()V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->u()V

    iget-object v1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->x0()V

    :cond_1
    invoke-static {}, Ll2/a;->g()V

    sget-object v1, Lcom/coloros/translate/screen/ScreenTranslationService;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/coloros/translate/screen/ScreenTranslationService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStartCommand():"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->i:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isPendingDestroy:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ScreenTranslationService"

    invoke-static {p3, p2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v0, 0x2

    if-nez p2, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "extra_exit"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->j()V

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->s()V

    invoke-static {p1}, Ll2/a;->f(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "extra_from_package"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->i:Z

    if-eqz p2, :cond_2

    invoke-static {p1}, Ll2/a;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto_exit:exit,this call is from the caller!: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mHasInit:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->i:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenTranslationService;->j()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/coloros/translate/screen/widget/a0;->o()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/a0;->h(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_4
    iget-boolean p2, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->i:Z

    if-eqz p2, :cond_6

    const-string p2, "type"

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g0(I)V

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "service has init ,return:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    iget-object p2, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->j:Lcom/coloros/translate/screen/translate/download/a;

    const-string p3, "ai_omni"

    invoke-virtual {p2, p3}, Lcom/coloros/translate/screen/translate/download/a;->l(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->j:Lcom/coloros/translate/screen/translate/download/a;

    new-instance v1, Lcom/coloros/translate/screen/ScreenTranslationService$a;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/screen/ScreenTranslationService$a;-><init>(Lcom/coloros/translate/screen/ScreenTranslationService;Landroid/content/Intent;)V

    invoke-virtual {p2, v1}, Lcom/coloros/translate/screen/translate/download/a;->m(Lcom/coloros/translate/screen/translate/download/a$c;)V

    iget-object p2, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->j:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {p2, p3}, Lcom/coloros/translate/screen/translate/download/a;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/ScreenTranslationService;->k(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->j:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {p0, p3}, Lcom/coloros/translate/screen/translate/download/a;->d(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return v0
.end method

.method public t()V
    .locals 2

    const-string v0, "ScreenTranslationService"

    const-string v1, "unRegisterProcessProtect()"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->f:Landroid/app/OplusWhiteListManager;

    if-eqz p0, :cond_0

    const-string v0, "com.coloros.ocrscanner"

    invoke-virtual {p0, v0}, Landroid/app/OplusWhiteListManager;->removeStageProtectInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->c:Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/ScreenTranslationService;->c:Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    :cond_0
    return-void
.end method
