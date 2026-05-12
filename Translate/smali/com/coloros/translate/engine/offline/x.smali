.class public Lcom/coloros/translate/engine/offline/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/offline/x$d;,
        Lcom/coloros/translate/engine/offline/x$c;,
        Lcom/coloros/translate/engine/offline/x$e;,
        Lcom/coloros/translate/engine/offline/x$b;
    }
.end annotation


# static fields
.field private static volatile j:Lcom/coloros/translate/engine/offline/x;


# instance fields
.field private final a:Le7/a;

.field private final b:Lcom/coloros/translate/engine/offline/x$d;

.field private final c:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private d:Lcom/coloros/translate/engine/offline/d;

.field private e:Lcom/coloros/translate/engine/offline/x$c;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Landroid/content/Context;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/x;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/x;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/x;->g:Ljava/util/List;

    new-instance v0, Lcom/coloros/translate/engine/offline/x$a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/x$a;-><init>(Lcom/coloros/translate/engine/offline/x;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/x;->i:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/x;->h:Landroid/content/Context;

    invoke-static {p1}, Le7/a;->k(Landroid/content/Context;)Le7/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Le7/a;->B(Z)V

    new-instance p1, Lcom/coloros/translate/engine/offline/x$d;

    const-string v0, "request_download_offline_info"

    invoke-static {v0}, Lcom/coloros/translate/utils/u0;->c(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/coloros/translate/engine/offline/x$d;-><init>(Lcom/coloros/translate/engine/offline/x;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    return-void
.end method

.method private static synthetic A(Lcom/coloros/translate/engine/offline/x$e;)V
    .locals 0

    invoke-interface {p0}, Lcom/coloros/translate/engine/offline/x$e;->f()V

    return-void
.end method

.method private static synthetic B()V
    .locals 1

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/g0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/translate/utils/y;->j(Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic C(Lcom/coloros/translate/engine/offline/f0;Z)V
    .locals 4

    new-instance v0, Le7/a$e;

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Le7/a$e;-><init>(Landroid/net/Uri;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/engine/offline/g0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/coloros/translate/engine/offline/f0;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "innerStartDownload allowMobile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OfflineDownloadManager"

    invoke-static {v3, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le7/a$e;->e(Landroid/net/Uri;)Le7/a$e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Le7/a$e;->h(I)Le7/a$e;

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Le7/a$e;->c(I)Le7/a$e;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Le7/a$e;->c(I)Le7/a$e;

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Le7/a$e;->d(Z)Le7/a$e;

    invoke-virtual {v0, v1}, Le7/a$e;->i(I)Le7/a$e;

    iget-object p2, p1, Lcom/coloros/translate/engine/offline/f0;->h:Ljava/lang/String;

    invoke-virtual {v0, p2}, Le7/a$e;->g(Ljava/lang/String;)Le7/a$e;

    iget-object p2, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, p2}, Le7/a$e;->f(Ljava/lang/String;)Le7/a$e;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    invoke-virtual {p0, v0}, Le7/a;->g(Le7/a$e;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coloros/translate/engine/offline/f0;->e:J

    return-void
.end method

.method private G()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x;->h:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/engine/offline/x;Lcom/coloros/translate/engine/offline/f0;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/offline/x;->C(Lcom/coloros/translate/engine/offline/f0;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/engine/offline/x$e;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->A(Lcom/coloros/translate/engine/offline/x$e;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/engine/offline/x;->B()V

    return-void
.end method

.method static bridge synthetic d(Lcom/coloros/translate/engine/offline/x;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->h:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->g:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->f:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/coloros/translate/engine/offline/x;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->d:Lcom/coloros/translate/engine/offline/d;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/coloros/translate/engine/offline/x;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->q(Landroid/os/Message;)V

    return-void
.end method

.method public static o(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/x;
    .locals 2

    sget-object v0, Lcom/coloros/translate/engine/offline/x;->j:Lcom/coloros/translate/engine/offline/x;

    if-nez v0, :cond_1

    const-class v0, Lcom/coloros/translate/engine/offline/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/translate/engine/offline/x;->j:Lcom/coloros/translate/engine/offline/x;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/offline/x;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/translate/engine/offline/x;->j:Lcom/coloros/translate/engine/offline/x;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/coloros/translate/engine/offline/x;->j:Lcom/coloros/translate/engine/offline/x;

    return-object p0
.end method

.method private q(Landroid/os/Message;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadMessage msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadManager"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->z(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->v([J)V

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->z(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->t([J)V

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->z(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->u([J)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->z(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->w([J)V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->z(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x;->x([J)V

    goto :goto_2

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/translate/engine/offline/f0;

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/engine/offline/x;->y(Lcom/coloros/translate/engine/offline/f0;Z)V

    goto :goto_2

    :pswitch_7
    iget-object p1, p0, Lcom/coloros/translate/engine/offline/x;->d:Lcom/coloros/translate/engine/offline/d;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Le7/a;->h(ILjava/lang/String;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->d:Lcom/coloros/translate/engine/offline/d;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/engine/offline/d;->u(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->f:Ljava/util/List;

    new-instance p1, Lcom/coloros/translate/engine/offline/u;

    invoke-direct {p1}, Lcom/coloros/translate/engine/offline/u;-><init>()V

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private s()V
    .locals 1

    new-instance p0, Lcom/coloros/translate/engine/offline/w;

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/w;-><init>()V

    const-string v0, "request_download_offline_info"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs t([J)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    invoke-virtual {v0, p1}, Le7/a;->s([J)I

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Le7/a;->y(Z[J)I

    return-void
.end method

.method private varargs u([J)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    invoke-virtual {p0, p1}, Le7/a;->s([J)I

    return-void
.end method

.method private varargs v([J)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    invoke-virtual {p0, p1}, Le7/a;->z([J)I

    return-void
.end method

.method private varargs w([J)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/x;->s()V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    invoke-virtual {p0, p1}, Le7/a;->A([J)I

    return-void
.end method

.method private varargs x([J)V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/x;->s()V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Le7/a;->C(I[J)I

    return-void
.end method

.method private y(Lcom/coloros/translate/engine/offline/f0;Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/f0;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coloros/translate/engine/offline/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/engine/offline/v;-><init>(Lcom/coloros/translate/engine/offline/x;Lcom/coloros/translate/engine/offline/f0;Z)V

    const-string p0, "request_download_offline_info"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private z(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [J

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public varargs D([J)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public E()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/coloros/translate/engine/offline/x;->D([J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDownloadCallback mDownloadCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x;->e:Lcom/coloros/translate/engine/offline/x$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadManager"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->e:Lcom/coloros/translate/engine/offline/x$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/translate/engine/offline/x$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/x$c;-><init>(Lcom/coloros/translate/engine/offline/x;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/x;->e:Lcom/coloros/translate/engine/offline/x$c;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->a:Le7/a;

    invoke-virtual {p0, v0}, Le7/a;->x(Le7/b;)V

    :cond_0
    return-void
.end method

.method public H(Lcom/coloros/translate/engine/offline/x$b;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public I(Lcom/coloros/translate/engine/offline/x$e;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public J()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs K([J)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public varargs L([J)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public M(Lcom/coloros/translate/engine/offline/f0;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public N()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public j(Lcom/coloros/translate/engine/offline/x$b;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public k(Lcom/coloros/translate/engine/offline/x$e;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs l([J)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->b:Lcom/coloros/translate/engine/offline/x$d;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->d:Lcom/coloros/translate/engine/offline/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/d;->j(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/f0;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/x;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/offline/f0;->b(Landroid/content/Context;)V

    iget v2, v1, Lcom/coloros/translate/engine/offline/f0;->n:I

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/offline/f0;->h(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs n([J)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/x;->l([J)V

    return-void
.end method

.method public p(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x;->d:Lcom/coloros/translate/engine/offline/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/d;->h(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object p0

    return-object p0
.end method

.method public r()V
    .locals 2

    const-string v0, "OfflineDownloadManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->d:Lcom/coloros/translate/engine/offline/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/d;->f(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/x;->d:Lcom/coloros/translate/engine/offline/d;

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/x;->G()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/x;->N()V

    return-void
.end method
