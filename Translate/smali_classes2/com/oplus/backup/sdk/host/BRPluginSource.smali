.class public Lcom/oplus/backup/sdk/host/BRPluginSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASSETS_PLUGINS_PATH:Ljava/lang/String; = "br_plugins"

.field public static final BR_BASE_DIR:Ljava/lang/String; = "br_cache"

.field public static final LOCAL_PLUGINS_DIR:Ljava/lang/String; = "local_plugins"

.field private static final TAG:Ljava/lang/String; = "BRPluginSource"

.field private static sBRPluginConfigs:[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalBRPlugins(Landroid/content/Context;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 1

    .line 29
    const-string v0, "local_plugins"

    invoke-static {p0, v0}, Lcom/oplus/backup/sdk/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 16

    .line 1
    const-string v1, "br_plugins/"

    const-string v2, "getLocalBRPlugins, e ="

    const-string v3, "BRPluginSource"

    sget-object v0, Lcom/oplus/backup/sdk/host/BRPluginSource;->sBRPluginConfigs:[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/oplus/backup/sdk/host/BRPluginSource;->initBaseFolder(Landroid/content/Context;)Ljava/io/File;

    const/4 v4, 0x0

    .line 3
    new-array v5, v4, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v8, "br_plugins"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    :goto_0
    if-nez v8, :cond_1

    return-object v5

    .line 7
    :cond_1
    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_7

    .line 8
    aget-object v0, v8, v10

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v8, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v7

    :goto_2
    if-nez v11, :cond_2

    return-object v5

    .line 11
    :cond_2
    array-length v12, v11

    move v13, v4

    :goto_3
    if-ge v13, v12, :cond_6

    .line 12
    aget-object v0, v11, v13

    const-string v14, ".config"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    aget-object v0, v11, v13

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v8, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v11, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-virtual {v0, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :try_start_3
    invoke-static {v14}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->parse(Ljava/io/InputStream;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v0, "add success"

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v14

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    .line 19
    :cond_3
    const-string v0, "BRPluginConfigParser.parse(inputStream) failed:"

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v14, :cond_5

    .line 20
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v14, v0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v14, v7

    .line 22
    :goto_6
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v14, :cond_5

    .line 23
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v14, v0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :goto_7
    if-eqz v7, :cond_4

    .line 25
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v4, v0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_4
    :goto_8
    throw v1

    :cond_5
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 28
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    sput-object v0, Lcom/oplus/backup/sdk/host/BRPluginSource;->sBRPluginConfigs:[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    return-object v0
.end method

.method public static initBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "br_cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
