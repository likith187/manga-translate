.class public Lcom/oplus/backup/sdk/common/load/BRPluginLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BRPluginLoader"


# instance fields
.field private mPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;",
            "Ljava/lang/ClassLoader;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string p0, "BRPluginLoader"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getPluginClass()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, p3, :cond_0

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "findClass, e ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "findClass success:"

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "findClass failed:"

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public getLoadedPlugins()[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLocalPlugin()V
    .locals 0

    return-void
.end method

.method public load(Landroid/content/Context;Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;)Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->load(Landroid/content/Context;Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public load(Landroid/content/Context;Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Z)Ljava/lang/ClassLoader;
    .locals 2

    .line 2
    const-string v0, "BRPluginLoader"

    if-eqz p2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    .line 4
    iget-object p0, p0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->unload(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;)Z

    .line 6
    :cond_1
    const-string p3, "pluginConfig no dexPaths!"

    invoke-static {v0, p3}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    const-string p0, "pluginConfig is null!"

    invoke-static {v0, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public unload(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;)Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getOptimizedDirectory()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    const/4 p0, 0x1

    return p0
.end method
