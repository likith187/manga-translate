.class public final Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;
.super Lcom/oplus/backup/sdk/component/plugin/RestorePlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$a;

.field public static final ERROR_CODE_INVALID:I = -0x1

.field public static final ERROR_CODE_NUMBER_MISMATCH:I = 0x7b

.field public static final RESTORE_AUDIO_ERROR_CODE:I = 0x6c

.field public static final RESTORE_AUDIO_FILE_NOT_FOUND_ERROR_CODE:I = 0x6b

.field public static final RESTORE_AUDIO_IO_ERROR_CODE:I = 0x6a

.field public static final RESTORE_DATABASE_VERSION_DIFFERENT_ERROR_CODE:I = 0x79

.field public static final RESTORE_SIMULTANEOUS_HISTORY_ERROR_CODE:I = 0x70

.field public static final RESTORE_SIMULTANEOUS_HISTORY_FILE_NOT_FOUND_ERROR_CODE:I = 0x6d

.field public static final RESTORE_SIMULTANEOUS_HISTORY_IO_ERROR_CODE:I = 0x6f

.field public static final RESTORE_SIMULTANEOUS_HISTORY_SQL_ERROR_CODE:I = 0x6e

.field public static final RESTORE_SIMULTANEOUS_SENTENCE_ERROR_CODE:I = 0x74

.field public static final RESTORE_SIMULTANEOUS_SENTENCE_FILE_NOT_FOUND_ERROR_CODE:I = 0x71

.field public static final RESTORE_SIMULTANEOUS_SENTENCE_IO_ERROR_CODE:I = 0x73

.field public static final RESTORE_SIMULTANEOUS_SENTENCE_SQL_ERROR_CODE:I = 0x72

.field public static final RESTORE_TEXT_HISTORY_ERROR_CODE:I = 0x78

.field public static final RESTORE_TEXT_HISTORY_FILE_NOT_FOUND_ERROR_CODE:I = 0x75

.field public static final RESTORE_TEXT_HISTORY_IO_ERROR_CODE:I = 0x77

.field public static final RESTORE_TEXT_HISTORY_SQL_ERROR_CODE:I = 0x76

.field public static final STEP:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "TranslateDataRestorePlugin"

.field public static final TIMEOUT_START_TIME:J = 0xea60L

.field public static final TIMEOUT_TIME:J = 0x1d4c0L

.field public static final UPDATE_RESTORE_PROGRESS_DEFAULT_INTERVAL_TIME:J = 0x3e8L


# instance fields
.field private mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginHandler;

.field private mBackupInfoBundle:Landroid/os/Bundle;

.field private mBackupInfoXmlPath:Ljava/lang/String;

.field private mCompleteCount:I

.field private mErrorCode:I

.field private mErrorDesc:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mHasException:Z

.field private mIsCancel:Z

.field private mIsChangeCompleteCount:Z

.field private mIsRestoreSuccess:Z

.field private mMaxCount:I

.field private final mProgress$delegate:Ln8/j;

.field private final mRestoreHandler$delegate:Ln8/j;

.field private mSimultaneousAudioFilePath:Ljava/lang/String;

.field private mSimultaneousHistoryBackupXmlPath:Ljava/lang/String;

.field private mSimultaneousSentenceBackupXmlPath:Ljava/lang/String;

.field private mTextHistoryBackupXmlPath:Ljava/lang/String;

.field private mTranslateBackupBasicPath:Ljava/lang/String;

.field private final mUpdateRestoreProgress$delegate:Ln8/j;

.field private mUpdateRestoreProgressIntervalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->Companion:Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oplus/backup/sdk/component/plugin/RestorePlugin;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorDesc:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mUpdateRestoreProgressIntervalTime:J

    sget-object v0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$c;->INSTANCE:Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mRestoreHandler$delegate:Ln8/j;

    sget-object v0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$b;->INSTANCE:Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mProgress$delegate:Ln8/j;

    new-instance v0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$d;-><init>(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mUpdateRestoreProgress$delegate:Ln8/j;

    return-void
.end method

.method public static final synthetic access$getMIsChangeCompleteCount$p(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsChangeCompleteCount:Z

    return p0
.end method

.method public static final synthetic access$getMRestoreHandler(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)Lcom/coloros/translate/utils/v0;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMRestoreHandler()Lcom/coloros/translate/utils/v0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMUpdateRestoreProgress(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMUpdateRestoreProgress()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMUpdateRestoreProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mUpdateRestoreProgressIntervalTime:J

    return-wide v0
.end method

.method public static final synthetic access$setMIsChangeCompleteCount$p(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsChangeCompleteCount:Z

    return-void
.end method

.method public static final synthetic access$setMUpdateRestoreProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mUpdateRestoreProgressIntervalTime:J

    return-void
.end method

.method public static final synthetic access$updateRestoreProgress(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->updateRestoreProgress()V

    return-void
.end method

.method private final getMProgress()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mProgress$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method private final getMRestoreHandler()Lcom/coloros/translate/utils/v0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mRestoreHandler$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/utils/v0;

    return-object p0
.end method

.method private final getMUpdateRestoreProgress()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mUpdateRestoreProgress$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mHasException:Z

    iput p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorCode:I

    iput-object p2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorDesc:Ljava/lang/String;

    return-void
.end method

.method private final putFailedInfo(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mHasException:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsRestoreSuccess:Z

    if-nez p0, :cond_1

    const-string p0, ""

    const-string v0, "The completed quantity does not match the total quantity"

    const/16 v1, 0x7b

    invoke-static {p1, v1, p0, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putFailedInfo(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorCode:I

    iget-object v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mErrorDesc:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putFailedInfo(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final putResult(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsRestoreSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putBRResult(Landroid/os/Bundle;I)V

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mMaxCount:I

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    iget p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    invoke-static {p1, p0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putCompletedCount(Landroid/os/Bundle;I)V

    return-void
.end method

.method private final restoreAudioData()V
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "restoreAudioData"

    const-string v2, "TranslateDataRestorePlugin"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/ui/simultaneous/utils/b;->f()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v3, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mSimultaneousAudioFilePath:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "mSimultaneousAudioFilePath"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1
    invoke-virtual {p0, v3}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->listFiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/backup/sdk/common/bean/FileWrapper;

    invoke-virtual {v3}, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->isFile()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "restoreAudioData sourceAudioFile not a file"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/oplus/backup/sdk/common/bean/FileWrapper;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v5, "/"

    const/4 v6, 0x2

    invoke-static {v3, v5, v4, v6, v4}, Lkotlin/text/r;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-char v7, v6, v8

    invoke-static {v5, v6}, Lkotlin/text/r;->O0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z

    if-eqz v6, :cond_5

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "restoreAudioData is cancelled"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-direct {p0, v3, v5}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->restoreAudioFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p0, "restoreAudioData sourceAudioFileNameList is null"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final restoreAudioFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, ""

    const-string v1, "TranslateDataRestorePlugin"

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAudioFile file start, targetPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    iget p2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->setMCompleteCount(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    goto/16 :goto_4

    :catch_0
    move-exception p2

    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p1, v2

    goto :goto_0

    :catch_3
    move-exception p2

    move-object p1, v2

    goto :goto_2

    :goto_0
    :try_start_2
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAudioFile Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x6c

    invoke-direct {p0, v1, v0, p2}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAudioFile IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x6a

    invoke-direct {p0, v1, v0, p2}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_4
    throw p0
.end method

.method private final restoreSimultaneousHistory()V
    .locals 11

    const-string v0, ""

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "restoreSimultaneousHistory"

    const-string v3, "TranslateDataRestorePlugin"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mSimultaneousHistoryBackupXmlPath:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mSimultaneousHistoryBackupXmlPath"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/high16 v4, 0x10000000

    invoke-virtual {p0, v2, v4}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/backuprestore/c;

    invoke-direct {v4}, Lcom/coloros/translate/backuprestore/c;-><init>()V

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/coloros/translate/backuprestore/b;->d(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    const-string v2, "restoreSimultaneousHistory content is empty"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v4, v2}, Lcom/coloros/translate/backuprestore/c;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "restoreSimultaneousHistory simultaneousHistoryList is empty"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "restoreSimultaneousHistory is cancelled"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v1

    invoke-interface {v1, v2}, Li2/d;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    long-to-int v9, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_5

    invoke-static {}, Lkotlin/collections/o;->p()V

    goto :goto_1

    :cond_6
    :goto_2
    add-int/2addr v4, v8

    invoke-direct {p0, v4}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->setMCompleteCount(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v6, v4, :cond_9

    iget-boolean v7, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z

    if-eqz v7, :cond_7

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setId(J)V

    sget-object v8, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v8}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v8

    invoke-static {v7}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Li2/d;->i(Ljava/util/List;)Ljava/util/List;

    iget v7, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->setMCompleteCount(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :goto_4
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousHistory Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_5
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousHistory IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_6
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousHistory SQLException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousHistory FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-void
.end method

.method private final restoreSimultaneousSentence()V
    .locals 11

    const-string v0, ""

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "restoreSimultaneousSentence"

    const-string v3, "TranslateDataRestorePlugin"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mSimultaneousSentenceBackupXmlPath:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mSimultaneousSentenceBackupXmlPath"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/high16 v4, 0x10000000

    invoke-virtual {p0, v2, v4}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/backuprestore/d;

    invoke-direct {v4}, Lcom/coloros/translate/backuprestore/d;-><init>()V

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/coloros/translate/backuprestore/b;->d(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    const-string v2, "restoreSimultaneousSentence content is empty"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v4, v2}, Lcom/coloros/translate/backuprestore/d;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "restoreSimultaneousSentence simultaneousSentenceList is empty"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "restoreSimultaneousSentence is cancelled"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v1

    invoke-interface {v1, v2}, Li2/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    long-to-int v9, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_5

    invoke-static {}, Lkotlin/collections/o;->p()V

    goto :goto_1

    :cond_6
    :goto_2
    add-int/2addr v4, v8

    invoke-direct {p0, v4}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->setMCompleteCount(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v6, v4, :cond_9

    iget-boolean v7, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z

    if-eqz v7, :cond_7

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setId(J)V

    sget-object v8, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v8}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v8

    invoke-static {v7}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Li2/g;->b(Ljava/util/List;)Ljava/util/List;

    iget v7, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->setMCompleteCount(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :goto_4
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousSentence Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_5
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousSentence IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_6
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousSentence SQLException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSimultaneousSentence FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-void
.end method

.method private final restoreTextHistory()V
    .locals 11

    const-string v0, ""

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "restoreTextHistory"

    const-string v3, "TranslateDataRestorePlugin"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mTextHistoryBackupXmlPath:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mTextHistoryBackupXmlPath"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/high16 v4, 0x10000000

    invoke-virtual {p0, v2, v4}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/backuprestore/e;

    invoke-direct {v4}, Lcom/coloros/translate/backuprestore/e;-><init>()V

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/coloros/translate/backuprestore/b;->d(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    const-string v2, "restoreTextHistory content is empty"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v4, v2}, Lcom/coloros/translate/backuprestore/e;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "restoreTextHistory textHistoryList is empty"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "restoreTextHistory is cancelled"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->v()Li2/i;

    move-result-object v1

    invoke-interface {v1, v2}, Li2/i;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    long-to-int v9, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_5

    invoke-static {}, Lkotlin/collections/o;->p()V

    goto :goto_1

    :cond_6
    :goto_2
    add-int/2addr v4, v8

    invoke-direct {p0, v4}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->setMCompleteCount(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v6, v4, :cond_9

    iget-boolean v7, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z

    if-eqz v7, :cond_7

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1, v3, v5}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "get(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/coloros/translate/repository/local/TextHistory;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/coloros/translate/repository/local/TextHistory;->setId(J)V

    sget-object v8, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v8}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coloros/translate/repository/local/AppDatabase;->v()Li2/i;

    move-result-object v8

    invoke-static {v7}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Li2/i;->g(Ljava/util/List;)Ljava/util/List;

    iget v7, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->setMCompleteCount(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :goto_4
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreTextHistory Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_5
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreTextHistory IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_6
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreTextHistory SQLException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreTextHistory FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    invoke-direct {p0, v2, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-void
.end method

.method private final setMCompleteCount(I)V
    .locals 4

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsChangeCompleteCount:Z

    iget-wide v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mUpdateRestoreProgressIntervalTime:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->updateRestoreProgress()V

    :cond_0
    iput p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    return-void
.end method

.method private final updateRestoreProgress()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMProgress()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mMaxCount:I

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMProgress()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putCompletedCount(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginHandler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMProgress()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/os/Bundle;)V
    .locals 2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TranslateDataRestorePlugin"

    const-string v1, "onCancel"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z

    return-void
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslateDataRestorePlugin"

    const-string v0, "onContinue"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TranslateDataRestorePlugin"

    const-string v1, "onCreate"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginHandler;

    invoke-virtual {p3}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Translation"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "mTranslateBackupBasicPath"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, p3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "backup_info.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mBackupInfoXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "text_history_backup.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mTextHistoryBackupXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "simultaneous_history_backup.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mSimultaneousHistoryBackupXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, p3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "simultaneous_sentence_backup.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mSimultaneousSentenceBackupXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p3, p1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "AudioFileData"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mSimultaneousAudioFilePath:Ljava/lang/String;

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mMaxCount:I

    iget v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsRestoreSuccess:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->putResult(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->putFailedInfo(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMRestoreHandler()Lcom/coloros/translate/utils/v0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/utils/v0;->f()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateDataRestorePlugin"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslateDataRestorePlugin"

    const-string v0, "onPause"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "onPrepare"

    const-string v1, "TranslateDataRestorePlugin"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mBackupInfoXmlPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "mBackupInfoXmlPath"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/high16 v2, 0x10000000

    invoke-virtual {p0, v0, v2}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/backuprestore/a;

    invoke-direct {v2}, Lcom/coloros/translate/backuprestore/a;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/coloros/translate/backuprestore/b;->d(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/coloros/translate/backuprestore/a;->h(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mBackupInfoBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const-string v2, "maxCount"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mMaxCount:I

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "max_count"

    iget p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mMaxCount:I

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare prepareBundle="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslateDataRestorePlugin"

    const-string v0, "onPreview"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onRestore(Landroid/os/Bundle;)V
    .locals 4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "onRestore"

    const-string v1, "TranslateDataRestorePlugin"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mMaxCount:I

    if-lez v0, :cond_2

    iget-boolean v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mIsCancel:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mCompleteCount:I

    if-ge v2, v0, :cond_2

    sget-object v0, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v0}, Li2/a;->d()I

    move-result v0

    iget-object v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mBackupInfoBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v3, "databaseVersion"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string v0, "inconsistent database version numbers"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-string v0, "database versions is inconsistent"

    const/16 v1, 0x79

    invoke-direct {p0, v1, p1, v0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMRestoreHandler()Lcom/coloros/translate/utils/v0;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMUpdateRestoreProgress()Ljava/lang/Runnable;

    move-result-object v0

    iget-wide v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->mUpdateRestoreProgressIntervalTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/translate/utils/v0;->d(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->restoreAudioData()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->restoreTextHistory()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->restoreSimultaneousHistory()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->restoreSimultaneousSentence()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMRestoreHandler()Lcom/coloros/translate/utils/v0;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->getMUpdateRestoreProgress()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;->updateRestoreProgress()V

    :cond_2
    return-void
.end method
