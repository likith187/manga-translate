.class public Lcom/oplus/backup/sdk/component/BRPluginService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;,
        Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;,
        Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;,
        Lcom/oplus/backup/sdk/component/BRPluginService$MessengerHandler;
    }
.end annotation


# static fields
.field public static final DEBUG_SYNC_THREAD:Z = true

.field public static final TAG:Ljava/lang/String; = "BRPluginService"


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mAsyncThread:Landroid/os/HandlerThread;

.field private mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

.field private mBRPlugin:Ljava/lang/Object;

.field private mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

.field private mBinder:Landroid/os/IBinder;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mHandler:Landroid/os/Handler;

.field private mInvocationBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

.field private mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

.field private mMessenger:Landroid/os/Messenger;

.field private mPluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mSendMessenger:Landroid/os/Messenger;

.field private mSyncHandler:Landroid/os/Handler;

.field private mSyncThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/common/host/BREngineConfig;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/oplus/backup/sdk/component/BRPluginService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/oplus/backup/sdk/component/BRPluginService;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/oplus/backup/sdk/component/BRPluginService;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/oplus/backup/sdk/component/BRPluginService;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    return-void
.end method

.method private findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    invoke-direct {v0}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;-><init>()V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->load(Landroid/content/Context;Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic g(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSendMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private getLocalPluginConfig()Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_plugins"

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imposible! no this service? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BRPluginService"

    invoke-static {v2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    new-instance v2, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;

    invoke-direct {v2}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;-><init>()V

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;->setClass(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;->setMetaData(Landroid/os/Bundle;)V

    if-eqz v0, :cond_1

    array-length p0, v0

    if-lez p0, :cond_1

    array-length p0, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v2}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static getStackMsg([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic h(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/component/BRPluginService;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic i(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/backup/sdk/component/BRPluginService;->load(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-class p0, Landroid/os/Bundle;

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p1, p2, p3, p0, p4}, Lcom/oplus/backup/sdk/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic j(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->receive(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static bridge synthetic k(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Messenger;ILandroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/component/BRPluginService;->returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method static bridge synthetic l(Lcom/oplus/backup/sdk/component/BRPluginService;ILandroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/component/BRPluginService;->sendMsg(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method private load(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const-string v0, "load, e ="

    const-string v1, "BRPluginService"

    const-string v2, "plugins"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "br_type"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    new-array v5, v4, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    new-instance v7, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    aget-object v8, v2, v6

    check-cast v8, Landroid/os/Bundle;

    invoke-direct {v7, v8}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v5, v3

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->getLocalPluginConfig()Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v4, "use local plugin config:"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->isPreferLocalClass()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v6, :cond_2

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isPreferLocalClass true"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :catch_3
    move-exception p1

    move-object v2, v3

    goto/16 :goto_2

    :catch_4
    move-exception p1

    move-object v2, v3

    goto/16 :goto_3

    :catch_5
    move-exception p1

    move-object v2, v3

    goto/16 :goto_4

    :cond_2
    :try_start_3
    invoke-virtual {p0, v5, p1}, Lcom/oplus/backup/sdk/component/BRPluginService;->onLoad([Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v5, :cond_4

    if-eqz v2, :cond_3

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", no plugin in host"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "load localPlugin is null! pls check your .config file"

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :cond_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use host\'s plugin config:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v2, v5

    :goto_1
    :try_start_6
    invoke-direct {p0, v2, p1}, Lcom/oplus/backup/sdk/component/BRPluginService;->findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t find plugin class. "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v2, v5

    goto :goto_2

    :catch_7
    move-exception p1

    move-object v2, v5

    goto :goto_3

    :catch_8
    move-exception p1

    move-object v2, v5

    goto :goto_4

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :try_start_7
    iget-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    const-class v4, Lcom/oplus/backup/sdk/component/BRPluginHandler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_6

    :catch_9
    move-exception p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    :goto_6
    iget-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mInvocationBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    iget-object v4, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const-class v6, Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    filled-new-array {v5, p1, v6}, [Ljava/lang/Class;

    move-result-object p1

    iget-object v5, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    filled-new-array {p0, v0, v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "onCreate"

    invoke-static {v1, v4, v0, p1, p0}, Lcom/oplus/backup/sdk/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_6

    return-object v3

    :cond_6
    invoke-virtual {v2}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic m([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->getStackMsg([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onReveiveMsg(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Intent;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Intent;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-class p0, Landroid/content/Intent;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "onReveiveMsg"

    invoke-static {p1, p2, p4, p0, p3}, Lcom/oplus/backup/sdk/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private receive(Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->onReveiveMsg(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Intent;Z)V

    return-void
.end method

.method private returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V
    .locals 1

    xor-int/lit8 p0, p4, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-static {v0, p2, p0, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "returnMsg, e ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BRPluginService"

    invoke-static {p1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendMsg(ILandroid/os/Bundle;Z)V
    .locals 2

    xor-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, p1, p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSendMessenger:Landroid/os/Messenger;

    const-string p2, "BRPluginService"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMsg, e ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "mSendMessenger == null"

    invoke-static {p2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getBRPluginLoader()Lcom/oplus/backup/sdk/common/load/BRPluginLoader;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    if-nez p1, :cond_0

    const-string p1, "BRPluginService"

    const-string v0, "onBind "

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    :cond_0
    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BRPluginService"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "br_plugin_messager_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "br_plugin_async_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$MessengerHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oplus/backup/sdk/component/BRPluginService$MessengerHandler;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    invoke-direct {v0, p0}, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Lcom/oplus/backup/sdk/component/a;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mInvocationBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "BRPluginService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public onLoad([Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    array-length p2, p1

    if-lez p2, :cond_1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
