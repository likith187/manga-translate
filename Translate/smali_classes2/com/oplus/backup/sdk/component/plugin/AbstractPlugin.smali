.class public abstract Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/backup/sdk/component/plugin/IBRPlugin;


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "/data/data/"

.field private static final TAG:Ljava/lang/String; = "AbstractPlugin"


# instance fields
.field private mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

.field private mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginHandler;

.field private mCacheAppDataFolder:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-direct {v0}, Lcom/oplus/backup/sdk/component/plugin/LockManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    return-void
.end method

.method private listFile(Ljava/lang/String;I)Lcom/oplus/backup/sdk/common/bean/FileWrapperList;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractPlugin"

    invoke-static {v1, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "list_files"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "list_file_path"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "list_file_start_index"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    :try_start_0
    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "listFiles exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private sendFileListMsg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/backup/sdk/common/bean/TransferFile;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "send_plugin_file"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "file_list"

    invoke-static {p1}, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public backupAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "backup_app_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "backup_src_folder"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "backup_dst_folder"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected deleteFile(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractPlugin"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getCacheAppDataFolder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getCacheAppDataFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "delete_file"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "delete_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    return p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteFile, target filePath is now allow to delete "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , check input!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    return-object p0
.end method

.method protected final getCacheAppDataFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mCacheAppDataFolder:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/data/data/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p0, "AbstractPlugin"

    const-string p1, "getFileDescriptor, path is null"

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 v0, 0x38000000

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 4

    .line 4
    const-string v0, "AbstractPlugin"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "get_file_descriptor"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v3, "file_path"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    const-string v3, "file_flag"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 9
    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    .line 10
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    const-string p1, "getFileDescriptor, can\'t find the Class"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileDescriptor, e ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginHandler;

    return-object p0
.end method

.method public invokeOtherPluginMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokePluginMethod, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbstractPlugin"

    invoke-static {v2, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "invoke_plugin_method"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "invoke_plugin_method_plugin_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "invoke_plugin_method_name"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "invoke_plugin_method_args"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v3, p1, p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object p3

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokePluginMethod waitResult "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, p3}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method protected listFiles(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/backup/sdk/common/bean/FileWrapper;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object v0

    const-string v1, "support_list_file"

    invoke-virtual {v0, v1}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AbstractPlugin"

    const-string p1, "listFiles, not support"

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->listFile(Ljava/lang/String;I)Lcom/oplus/backup/sdk/common/bean/FileWrapperList;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->getEndIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->getTotalCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->getEndIndex()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->listFile(Ljava/lang/String;I)Lcom/oplus/backup/sdk/common/bean/FileWrapperList;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginHandler;

    invoke-virtual {p3}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getCacheAppDataFolder()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mCacheAppDataFolder:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    return-void
.end method

.method protected onFileSentSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReveiveMsg(Landroid/content/Intent;Z)V
    .locals 9

    const-string v0, "AbstractPlugin"

    if-nez p1, :cond_0

    const-string p0, "onReceiveMsg intent == null"

    invoke-static {v0, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get_file_descriptor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ", getLock: "

    if-eqz v3, :cond_3

    const-string p2, "file_path"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "file_descriptor"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_GET_FD, path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileDescriptor failed:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "getFileDescriptor failed: lock is null, it\'s a bug!"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v4, v1

    goto/16 :goto_2

    :cond_3
    const-string v2, "backup_app_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "onReceiveMsg INTENT_BACKUP_APP_DATA, result:"

    const-string v7, "backup_restore_app_data_result"

    const/4 v8, -0x1

    if-eqz v3, :cond_5

    const-string p2, "backup_src_folder"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "backup_dst_folder"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v2, p2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_BACKUP_APP_DATA, srcFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    const-string p1, "backup app data failed: lock is null, it\'s a bug!"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v2, "restore_app_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p2, "restore_src_folder"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "restore_dst_folder"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v2, p2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_RESTORE_APP_DATA, srcFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    const-string p1, "restore app data failed: lock is null, it\'s a bug!"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v2, "tar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string p2, "tar_file"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "tar_source_folder"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v2, p2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_TAR, tarFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_8

    const-string p2, "tar_result"

    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_TAR, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    const-string p1, "tar failed: lock is null, it\'s a bug!"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v3, "restore_tar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string p2, "restore_tar_file"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "restore_tar_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "restore_tar_app_data_dst_folder"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v2, p2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_RESTORE_TAR, tarFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_a

    const-string p2, "restore_tar_result"

    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_RESTORE_TAR, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    const-string p1, "restore tar failed: lock is null, it\'s a bug!"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v2, "invoke_plugin_method"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string p2, "invoke_plugin_method_plugin_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "invoke_plugin_method_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v2, p2, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_INVOKE_PLUGIN_METHOD, methodName:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_c

    const-string p2, "invoke_plugin_method_result"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_INVOKE_PLUGIN_METHOD, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    const-string p1, "invoke method failed: lock is null, it\'s a bug!"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v2, "list_files"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string p2, "onReceiveMsg INTENT_LIST_FILES  "

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "list_files_result"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "list_file_start_index"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    const-class v3, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;

    invoke-static {p2, v3}, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;
    :try_end_0
    .catch Lcom/google/gson/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveMsg INTENT_LIST_FILES JsonParseException :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    const-string p2, "list_file_path"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveMsg INTENT_LIST_FILES srcPath "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, p1, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    if-eqz v4, :cond_10

    if-eqz v3, :cond_10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", listSize:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/backup/sdk/common/bean/FileWrapperList;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    invoke-static {v1}, Lcom/oplus/backup/sdk/event/FileConfirmEvent;->isFileConfirmEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance p2, Lcom/oplus/backup/sdk/event/FileConfirmEvent;

    invoke-direct {p2, p1}, Lcom/oplus/backup/sdk/event/FileConfirmEvent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2}, Lcom/oplus/backup/sdk/event/FileConfirmEvent;->getSentFile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->onFileSentSuccess(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_2
    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, v4}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->notifyLock(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)V

    return-void
.end method

.method public restoreAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "restore_app_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "restore_src_folder"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "restore_dst_folder"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public restoreTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "restore_tar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "restore_tar_file"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_tar_package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_tar_app_data_dst_folder"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    const-string v2, "tar"

    filled-new-array {v2, p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, v0, p3}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected sendFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object v0

    const-string v1, "support_direct_send"

    invoke-virtual {v0, v1}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AbstractPlugin"

    if-nez v0, :cond_0

    const-string p0, "sendFileListMsg not support"

    invoke-static {v2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/oplus/backup/sdk/common/bean/TransferFile;

    const/16 v2, 0x8

    invoke-direct {v1, p1, p2, v2}, Lcom/oplus/backup/sdk/common/bean/TransferFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->sendFileList(Ljava/util/List;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendFileListMsg , file invalid! "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method protected sendFileList(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/backup/sdk/common/bean/TransferFile;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object v0

    const-string v1, "support_direct_send"

    invoke-virtual {v0, v1}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AbstractPlugin"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "sendFileListMsg not support"

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/backup/sdk/common/bean/TransferFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/oplus/backup/sdk/common/bean/TransferFile;->getSrcPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/backup/sdk/common/bean/TransferFile;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sendFileListMsg , one of file is invalid! check! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-virtual {v3}, Lcom/oplus/backup/sdk/common/bean/TransferFile;->getType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sendFileListMsg , one of folder is invalid! check! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_7

    invoke-direct {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->sendFileListMsg(Ljava/util/List;)V

    goto :goto_1

    :cond_7
    move v3, v0

    :goto_0
    if-le v3, v1, :cond_8

    add-int/lit8 v3, v2, 0x64

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->sendFileListMsg(Ljava/util/List;)V

    sub-int v2, v0, v3

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_0

    :cond_8
    add-int/2addr v3, v2

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->sendFileListMsg(Ljava/util/List;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_2
    return v2
.end method

.method protected sendFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object v0

    const-string v1, "support_direct_send"

    invoke-virtual {v0, v1}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AbstractPlugin"

    if-nez v0, :cond_0

    const-string p0, "sendFileListMsg not support"

    invoke-static {v2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/oplus/backup/sdk/common/bean/TransferFile;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p2, v2}, Lcom/oplus/backup/sdk/common/bean/TransferFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->sendFileList(Ljava/util/List;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendFileListMsg , folder invalid! "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public tar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "tar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tar_file"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tar_source_folder"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tar_exclude_agrs"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    filled-new-array {v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, v0, p3}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->mLockManager:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;->waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
