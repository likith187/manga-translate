.class public final Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;
.super Lcom/oplus/backup/sdk/component/plugin/BackupPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$a;
    }
.end annotation


# static fields
.field public static final BACKUP_AUDIO_ERROR_CODE:I = 0x66

.field public static final BACKUP_AUDIO_FILE_NOT_FOUND_ERROR_CODE:I = 0x65

.field public static final BACKUP_AUDIO_IO_ERROR_CODE:I = 0x64

.field public static final BACKUP_XML_ERROR_CODE:I = 0x69

.field public static final BACKUP_XML_FILE_NOT_FOUND_ERROR_CODE:I = 0x68

.field public static final BACKUP_XML_IO_ERROR_CODE:I = 0x67

.field public static final Companion:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$a;

.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field public static final ERROR_CODE_INVALID:I = -0x1

.field public static final ERROR_CODE_NUMBER_MISMATCH:I = 0x7a

.field public static final STEP:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "TranslateDataBackupPlugin"

.field public static final TIMEOUT_START_TIME:J = 0xea60L

.field public static final TIMEOUT_TIME:J = 0x1d4c0L

.field public static final UPDATE_BACKUP_PROGRESS_DEFAULT_INTERVAL_TIME:J = 0x3e8L


# instance fields
.field private final mBackupHandler$delegate:Ln8/j;

.field private mBackupInfoXmlPath:Ljava/lang/String;

.field private mCompleteCount:I

.field private mErrorCode:I

.field private mErrorDesc:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mHasException:Z

.field private mIsBackupSuccess:Z

.field private mIsCancel:Z

.field private mIsChangeCompleteCount:Z

.field private mMaxCount:I

.field private final mProgress$delegate:Ln8/j;

.field private mSimultaneousAudioFilePath:Ljava/lang/String;

.field private mSimultaneousHistoryBackupXmlPath:Ljava/lang/String;

.field private mSimultaneousSentenceBackupXmlPath:Ljava/lang/String;

.field private mTextHistoryBackupXmlPath:Ljava/lang/String;

.field private mTranslateBackupBasicPath:Ljava/lang/String;

.field private final mUpdateBackupProgress$delegate:Ln8/j;

.field private mUpdateBackupProgressIntervalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->Companion:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oplus/backup/sdk/component/plugin/BackupPlugin;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorDesc:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mUpdateBackupProgressIntervalTime:J

    sget-object v0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$b;->INSTANCE:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mBackupHandler$delegate:Ln8/j;

    sget-object v0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$c;->INSTANCE:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mProgress$delegate:Ln8/j;

    new-instance v0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;-><init>(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mUpdateBackupProgress$delegate:Ln8/j;

    return-void
.end method

.method public static final synthetic access$getMBackupHandler(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)Lcom/coloros/translate/utils/v0;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMBackupHandler()Lcom/coloros/translate/utils/v0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMIsChangeCompleteCount$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsChangeCompleteCount:Z

    return p0
.end method

.method public static final synthetic access$getMUpdateBackupProgress(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMUpdateBackupProgress()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMUpdateBackupProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mUpdateBackupProgressIntervalTime:J

    return-wide v0
.end method

.method public static final synthetic access$setMIsChangeCompleteCount$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsChangeCompleteCount:Z

    return-void
.end method

.method public static final synthetic access$setMUpdateBackupProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mUpdateBackupProgressIntervalTime:J

    return-void
.end method

.method public static final synthetic access$updateBackupProgress(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->updateBackupProgress()V

    return-void
.end method

.method private final backUpAudioData()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "backUpAudioData"

    const-string v2, "TranslateDataBackupPlugin"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/ui/simultaneous/utils/b;->f()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "backUpAudioData\uff0caudioFileRootDir not exists"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-boolean v4, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsCancel:Z

    if-eqz v4, :cond_2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "backUpAudioData is cancelled"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->backUpAudioFile(Ljava/io/File;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p0, "backUpAudioData\uff0caudioFiles is null"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final backUpAudioFile(Ljava/io/File;)V
    .locals 11

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mSimultaneousAudioFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mSimultaneousAudioFilePath"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v2

    const-string v3, "TranslateDataBackupPlugin"

    if-nez v2, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "backUpAudioFile , fileDescriptor is null"

    invoke-virtual {p0, v3, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backUpAudioFile , backUpAudioFile start path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    move-object v4, v1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->setMCompleteCount(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p1, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object p1, v1

    goto :goto_2

    :goto_0
    :try_start_2
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backUpAudioFile Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\u54c8\u54c8\u54c8"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x66

    invoke-direct {p0, v3, v2, v0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_2
    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_3
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backUpAudioFile IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x64

    invoke-direct {p0, v3, v2, v0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    if-eqz p1, :cond_6

    goto :goto_1

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_5
    throw p0

    :cond_6
    :goto_4
    return-void
.end method

.method private final backupSimultaneousHistory()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v1

    invoke-interface {v1}, Li2/d;->h()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/coloros/translate/backuprestore/c;

    invoke-direct {v1}, Lcom/coloros/translate/backuprestore/c;-><init>()V

    const-string v2, "simultaneousHistories"

    invoke-virtual {v1, v2}, Lcom/coloros/translate/backuprestore/b;->f(Ljava/lang/String;)Z

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/coloros/translate/backuprestore/c;->h(Lcom/coloros/translate/repository/local/SimultaneousHistory;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/coloros/translate/backuprestore/b;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mSimultaneousHistoryBackupXmlPath:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "mSimultaneousHistoryBackupXmlPath"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->saveXmlInfo(Lcom/coloros/translate/backuprestore/b;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final backupSimultaneousSentence()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v1

    invoke-interface {v1}, Li2/g;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/coloros/translate/backuprestore/d;

    invoke-direct {v1}, Lcom/coloros/translate/backuprestore/d;-><init>()V

    const-string v2, "simultaneousSentences"

    invoke-virtual {v1, v2}, Lcom/coloros/translate/backuprestore/b;->f(Ljava/lang/String;)Z

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/coloros/translate/backuprestore/d;->h(Lcom/coloros/translate/repository/local/SimultaneousSentence;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/coloros/translate/backuprestore/b;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mSimultaneousSentenceBackupXmlPath:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "mSimultaneousSentenceBackupXmlPath"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->saveXmlInfo(Lcom/coloros/translate/backuprestore/b;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final backupTextHistory()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->v()Li2/i;

    move-result-object v1

    invoke-interface {v1}, Li2/i;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/coloros/translate/backuprestore/e;

    invoke-direct {v1}, Lcom/coloros/translate/backuprestore/e;-><init>()V

    const-string v2, "textHistories"

    invoke-virtual {v1, v2}, Lcom/coloros/translate/backuprestore/b;->f(Ljava/lang/String;)Z

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/repository/local/TextHistory;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/coloros/translate/backuprestore/e;->h(Lcom/coloros/translate/repository/local/TextHistory;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/coloros/translate/backuprestore/b;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mTextHistoryBackupXmlPath:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "mTextHistoryBackupXmlPath"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->saveXmlInfo(Lcom/coloros/translate/backuprestore/b;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final getAudioFileCount()I
    .locals 4

    invoke-static {}, Lcom/coloros/translate/ui/simultaneous/utils/b;->f()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "TranslateDataBackupPlugin"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "getAudioFileCount \uff0caudioFileRootDir not exists"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length p0, p0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioFileCount, audioFileCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "getAudioFileCount \uff0caudioFiles is null"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private final getAudioFolderSize()J
    .locals 4

    invoke-static {}, Lcom/coloros/translate/ui/simultaneous/utils/b;->f()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/translate/utils/y;->i(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/coloros/translate/utils/y;->h(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioFolderSize, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranslateDataBackupPlugin"

    invoke-virtual {p0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private final getBackupDatabaseSize()J
    .locals 5

    const-string v0, "TranslateDataBackupPlugin"

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "conversation-db"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupDataSize , FileNotFoundException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    :goto_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackupDatabaseSize , size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method private final getMBackupHandler()Lcom/coloros/translate/utils/v0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mBackupHandler$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/utils/v0;

    return-object p0
.end method

.method private final getMProgress()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mProgress$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method private final getMUpdateBackupProgress()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mUpdateBackupProgress$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final getMaxCount()I
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getAudioFileCount()I

    move-result p0

    sget-object v0, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v1

    invoke-interface {v1}, Li2/d;->e()I

    move-result v1

    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v2

    invoke-interface {v2}, Li2/g;->c()I

    move-result v2

    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/AppDatabase;->v()Li2/i;

    move-result-object v0

    invoke-interface {v0}, Li2/i;->f()I

    move-result v0

    add-int/2addr p0, v1

    add-int/2addr p0, v2

    add-int/2addr p0, v0

    return p0
.end method

.method private final handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mHasException:Z

    iput p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorCode:I

    iput-object p2, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorDesc:Ljava/lang/String;

    return-void
.end method

.method private final putFailedInfo(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mHasException:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsBackupSuccess:Z

    if-nez p0, :cond_1

    const-string p0, ""

    const-string v0, "The completed quantity does not match the total quantity"

    const/16 v1, 0x7a

    invoke-static {p1, v1, p0, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putFailedInfo(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorCode:I

    iget-object v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mErrorDesc:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putFailedInfo(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final putResult(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsBackupSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsCancel:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putBRResult(Landroid/os/Bundle;I)V

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    iget p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    invoke-static {p1, p0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putCompletedCount(Landroid/os/Bundle;I)V

    return-void
.end method

.method private final saveXmlInfo(Lcom/coloros/translate/backuprestore/b;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/backuprestore/b;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsCancel:Z

    const-string v1, "TranslateDataBackupPlugin"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "saveXmlInfo is cancelled"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/backuprestore/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->writeToFile(Ljava/lang/String;[BI)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "xmlInfo is empty"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final setMCompleteCount(I)V
    .locals 4

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsChangeCompleteCount:Z

    iget-wide v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mUpdateBackupProgressIntervalTime:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->updateBackupProgress()V

    :cond_0
    iput p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    return-void
.end method

.method private final updateBackupProgress()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMProgress()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMProgress()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putCompletedCount(Landroid/os/Bundle;I)V

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMProgress()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    return-void
.end method

.method private final writeToFile(Ljava/lang/String;[BI)V
    .locals 6

    const-string v0, ""

    const-string v1, "writeToFile()"

    const-string v2, "TranslateDataBackupPlugin"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "writeToFile , fileDescriptor is null"

    invoke-virtual {p1, v2, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    array-length p1, p2

    const/4 v3, 0x0

    invoke-virtual {v4, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    iget p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    add-int/2addr p1, p3

    invoke-direct {p0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->setMCompleteCount(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    move-object v3, v4

    goto/16 :goto_4

    :catch_3
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :catch_4
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :goto_1
    :try_start_3
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeToFile Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x69

    invoke-direct {p0, p2, v0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_2
    :try_start_5
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeToFile IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x67

    invoke-direct {p0, p2, v0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->handleFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :cond_1
    :goto_3
    return-void

    :goto_4
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception p1

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    throw p0
.end method


# virtual methods
.method public onBackup(Landroid/os/Bundle;)V
    .locals 3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TranslateDataBackupPlugin"

    const-string v1, "onBackup"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsCancel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMBackupHandler()Lcom/coloros/translate/utils/v0;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMUpdateBackupProgress()Ljava/lang/Runnable;

    move-result-object v0

    iget-wide v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mUpdateBackupProgressIntervalTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/translate/utils/v0;->d(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->backUpAudioData()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->backupTextHistory()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->backupSimultaneousHistory()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->backupSimultaneousSentence()V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMBackupHandler()Lcom/coloros/translate/utils/v0;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMUpdateBackupProgress()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->updateBackupProgress()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/os/Bundle;)V
    .locals 2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TranslateDataBackupPlugin"

    const-string v1, "onCancel"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsCancel:Z

    return-void
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslateDataBackupPlugin"

    const-string v0, "onContinue"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "TranslateDataBackupPlugin"

    const-string v0, "onCreate"

    invoke-virtual {p1, p2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMaxCount()I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Translation"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "backup_info.xml"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mBackupInfoXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "text_history_backup.xml"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mTextHistoryBackupXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "simultaneous_history_backup.xml"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mSimultaneousHistoryBackupXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "simultaneous_sentence_backup.xml"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mSimultaneousSentenceBackupXmlPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mTranslateBackupBasicPath:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AudioFileData"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mSimultaneousAudioFilePath:Ljava/lang/String;

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    iget v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mCompleteCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsBackupSuccess:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->putResult(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->putFailedInfo(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getMBackupHandler()Lcom/coloros/translate/utils/v0;

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

    const-string v1, "TranslateDataBackupPlugin"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslateDataBackupPlugin"

    const-string v0, "onPause"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsBackupSuccess:Z

    new-instance v0, Lcom/coloros/translate/backuprestore/a;

    invoke-direct {v0}, Lcom/coloros/translate/backuprestore/a;-><init>()V

    iget v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    invoke-virtual {v0, v1}, Lcom/coloros/translate/backuprestore/a;->g(I)Z

    iget-boolean v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsCancel:Z

    const-string v2, "TranslateDataBackupPlugin"

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/backuprestore/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mBackupInfoXmlPath:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "mBackupInfoXmlPath"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    sget-object v3, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v3, "getBytes(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, p1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->writeToFile(Ljava/lang/String;[BI)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "write backupInfoXml failed!"

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "max_count"

    iget p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepare prepareBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mIsBackupSuccess:Z

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getBackupDatabaseSize()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->getAudioFolderSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->mMaxCount:I

    invoke-static {p1, p0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    invoke-static {p1, v0, v1}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreview previewBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateDataBackupPlugin"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
