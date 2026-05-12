.class public final Lcom/coloros/translate/ui/simultaneous/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/utils/c;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/utils/c;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/app/NotificationManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "SimultaneousNotificationManager"

    const-string v0, "removeNotification"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/NotificationManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget v0, Lcom/coloros/translate/R$string;->notify_channel_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$string;->notify_channel_name_desc:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    const-string v4, "si_notification_channel"

    invoke-direct {v1, v4, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    const/high16 v3, 0x4000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroidx/core/app/h$d;

    invoke-direct {v1, p1, v4}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v4, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    invoke-virtual {v1, v4}, Landroidx/core/app/h$d;->o(I)Landroidx/core/app/h$d;

    move-result-object v1

    sget v4, Lcom/coloros/translate/R$string;->simultaneous_is_running:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/h$d;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/core/app/h$d;->i(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/core/app/h$d;->m(I)Landroidx/core/app/h$d;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/core/app/h$d;->h(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/core/app/h$d;->n(Z)Landroidx/core/app/h$d;

    move-result-object p2

    sget v0, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    sget v4, Lcom/coloros/translate/R$string;->simultaneous_notify_finish:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.coloros.translate.ACTIVE_SIMULTANEOUS_FINISH_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, v0, v4, p1}, Landroidx/core/app/h$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    move-result-object p1

    const-string p2, "service"

    invoke-virtual {p1, p2}, Landroidx/core/app/h$d;->f(Ljava/lang/String;)Landroidx/core/app/h$d;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/core/app/h$d;->e(Z)Landroidx/core/app/h$d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "SimultaneousNotificationManager"

    const-string p2, "sendRecordStatus"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
