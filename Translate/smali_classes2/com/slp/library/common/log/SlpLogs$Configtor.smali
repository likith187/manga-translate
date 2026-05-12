.class public Lcom/slp/library/common/log/SlpLogs$Configtor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slp/library/common/log/SlpLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configtor"
.end annotation


# static fields
.field private static isInit:Z = false

.field private static final mSimpleDateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final mSimpleDateFormatSSS:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final maxFileSize:I = 0xa00000

.field private static final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/slp/library/common/log/SlpLogs$LogBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private defaultBacks:I

.field private defaultLins:I

.field private enableThread:Z

.field private enableTime:Z

.field private ilog:Lcom/slp/library/common/log/SlpLogs$ISystemLog;

.field private final logClassName:Ljava/lang/String;

.field private logLevel:Lcom/slp/library/common/log/SlpLogs$Level;

.field private logPath:Ljava/lang/String;

.field private splitStrE:Ljava/lang/String;

.field private splitStrS:Ljava/lang/String;

.field private strMaxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/slp/library/common/log/SlpLogs$Configtor;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/slp/library/common/log/SlpLogs$Configtor;->mSimpleDateFormatSSS:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/slp/library/common/log/SlpLogs$Configtor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/slp/library/common/log/SlpLogs$Configtor;->isInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "SLP"

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->TAG:Ljava/lang/String;

    .line 4
    const-string v0, "\u2193 - ["

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->splitStrS:Ljava/lang/String;

    .line 5
    const-string v0, "]"

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->splitStrE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableTime:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableThread:Z

    .line 8
    const-class v1, Lcom/slp/library/common/log/SlpLogs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->logClassName:Ljava/lang/String;

    .line 9
    sget-object v1, Lcom/slp/library/common/log/SlpLogs$Level;->ERROR:Lcom/slp/library/common/log/SlpLogs$Level;

    iput-object v1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->logLevel:Lcom/slp/library/common/log/SlpLogs$Level;

    .line 10
    invoke-static {}, Lcom/slp/library/common/log/SlpLogs;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/slp/library/common/log/AndroidLog;

    invoke-direct {v1}, Lcom/slp/library/common/log/AndroidLog;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/slp/library/common/log/SystemLog;

    invoke-direct {v1}, Lcom/slp/library/common/log/SystemLog;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->ilog:Lcom/slp/library/common/log/SlpLogs$ISystemLog;

    const/16 v1, 0xbb8

    .line 11
    iput v1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->strMaxCount:I

    .line 12
    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->defaultLins:I

    .line 13
    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->defaultBacks:I

    .line 14
    invoke-static {}, Lcom/slp/library/common/log/SlpLogs$Configtor;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/slp/library/common/log/SlpLogs$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/slp/library/common/log/SlpLogs$Configtor;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/slp/library/common/log/SlpLogs$LogBean;)V
    .locals 0

    invoke-static {p0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->postLog(Lcom/slp/library/common/log/SlpLogs$LogBean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/slp/library/common/log/SlpLogs$Configtor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableThread:Z

    return p0
.end method

.method static synthetic access$500(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->logClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/slp/library/common/log/SlpLogs$Configtor;)Lcom/slp/library/common/log/SlpLogs$Level;
    .locals 0

    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->logLevel:Lcom/slp/library/common/log/SlpLogs$Level;

    return-object p0
.end method

.method static synthetic access$700(Lcom/slp/library/common/log/SlpLogs$Configtor;)I
    .locals 0

    iget p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->defaultLins:I

    return p0
.end method

.method static synthetic access$800(Lcom/slp/library/common/log/SlpLogs$Configtor;)I
    .locals 0

    iget p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->defaultBacks:I

    return p0
.end method

.method static synthetic access$900(Lcom/slp/library/common/log/SlpLogs$Configtor;)I
    .locals 0

    iget p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->strMaxCount:I

    return p0
.end method

.method private static formatLocation(Lcom/slp/library/common/log/SlpLogs$LogBean;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/slp/library/common/log/SlpLogs$LogBean;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->splitClass:Ljava/lang/String;

    iget v1, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->displayLins:I

    iget v2, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->backLins:I

    iget-object v3, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->stack:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/slp/library/common/log/SlpLogs$Configtor;->get$Location(Ljava/lang/String;II[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-object v6, v6, Lcom/slp/library/common/log/SlpLogs$Configtor;->splitStrS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-object v4, v4, Lcom/slp/library/common/log/SlpLogs$Configtor;->splitStrE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p1}, Lcom/slp/library/common/log/SlpLogs$Configtor;->formatLogText(Lcom/slp/library/common/log/SlpLogs$LogBean;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static formatLogText(Lcom/slp/library/common/log/SlpLogs$LogBean;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slp/library/common/log/SlpLogs$Configtor;->mSimpleDateFormatSSS:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->time:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iget-object v1, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-boolean v1, v1, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableThread:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->threadInfo:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->tag:Ljava/lang/String;

    filled-new-array {p2, v1, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s[%s]%s[%s]\uff1a%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static get$Location(Ljava/lang/String;II[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 9

    add-int/2addr p1, p2

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p3

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v6, p3, v4

    if-nez v5, :cond_0

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".access$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    :goto_3
    if-ge v0, p1, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/StackTraceElement;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p1, -0x1

    if-eq v0, p2, :cond_7

    const-string p2, "\r\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/slp/library/common/log/SlpLogs$Configtor;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/slp/library/common/log/SlpLogs$Configtor;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/slp/library/common/log/SlpLogs$Configtor;->isInit:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/slp/library/common/log/a;

    invoke-direct {v2}, Lcom/slp/library/common/log/a;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static logPrintln(Lcom/slp/library/common/log/SlpLogs$LogBean;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/slp/library/common/log/SlpLogs$LogBean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->ilog:Lcom/slp/library/common/log/SlpLogs$ISystemLog;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/slp/library/common/log/SlpLogs$Level;->ON:Lcom/slp/library/common/log/SlpLogs$Level;

    if-ne v0, v2, :cond_1

    invoke-interface {p0, v1}, Lcom/slp/library/common/log/SlpLogs$ISystemLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/slp/library/common/log/SlpLogs$Level;->DEBUG:Lcom/slp/library/common/log/SlpLogs$Level;

    if-ne v0, v2, :cond_2

    invoke-interface {p0, v1}, Lcom/slp/library/common/log/SlpLogs$ISystemLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/slp/library/common/log/SlpLogs$Level;->INFOS:Lcom/slp/library/common/log/SlpLogs$Level;

    if-ne v0, v2, :cond_3

    invoke-interface {p0, v1}, Lcom/slp/library/common/log/SlpLogs$ISystemLog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/slp/library/common/log/SlpLogs$Level;->WARNS:Lcom/slp/library/common/log/SlpLogs$Level;

    if-ne v0, v2, :cond_4

    invoke-interface {p0, v1}, Lcom/slp/library/common/log/SlpLogs$ISystemLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/slp/library/common/log/SlpLogs$Level;->ERROR:Lcom/slp/library/common/log/SlpLogs$Level;

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Lcom/slp/library/common/log/SlpLogs$ISystemLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static postLog(Lcom/slp/library/common/log/SlpLogs$LogBean;)V
    .locals 1

    sget-boolean v0, Lcom/slp/library/common/log/SlpLogs$Configtor;->isInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/slp/library/common/log/SlpLogs$Configtor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized release()V
    .locals 3

    const-class v0, Lcom/slp/library/common/log/SlpLogs$Configtor;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/slp/library/common/log/SlpLogs$Configtor;->isInit:Z

    sget-object v1, Lcom/slp/library/common/log/SlpLogs$Configtor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static run()V
    .locals 12

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    sget-boolean v2, Lcom/slp/library/common/log/SlpLogs$Configtor;->isInit:Z

    if-eqz v2, :cond_a

    :try_start_0
    sget-object v2, Lcom/slp/library/common/log/SlpLogs$Configtor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "================================= QUEUE FULL !!!! ===================================="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto/16 :goto_8

    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/slp/library/common/log/SlpLogs$LogBean;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-object v4, v2, Lcom/slp/library/common/log/SlpLogs$LogBean;->text:Ljava/lang/Object;

    iget-boolean v5, v3, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableTime:Z

    invoke-static {v2, v4, v5}, Lcom/slp/library/common/log/SlpLogs$Configtor;->formatLogText(Lcom/slp/library/common/log/SlpLogs$LogBean;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v3, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableTime:Z

    invoke-static {v2, v5}, Lcom/slp/library/common/log/SlpLogs$Configtor;->formatLocation(Lcom/slp/library/common/log/SlpLogs$LogBean;Z)Ljava/util/List;

    move-result-object v5

    iget-object v6, v3, Lcom/slp/library/common/log/SlpLogs$Configtor;->logPath:Ljava/lang/String;

    if-eqz v6, :cond_9

    sget-object v6, Lcom/slp/library/common/log/SlpLogs$Configtor;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/slp/library/common/log/SlpLogs$Configtor;->logPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SlpLogs-TEMP.log"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SlpLogs-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".log"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 v6, 0x0

    :try_start_1
    new-instance v8, Ljava/io/PrintStream;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-boolean v6, v3, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableTime:Z

    if-eqz v6, :cond_5

    move-object v6, v5

    goto :goto_3

    :cond_5
    invoke-static {v2, v10}, Lcom/slp/library/common/log/SlpLogs$Configtor;->formatLocation(Lcom/slp/library/common/log/SlpLogs$LogBean;Z)Ljava/util/List;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v6, v8

    goto :goto_6

    :cond_6
    iget-boolean v3, v3, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableTime:Z

    if-eqz v3, :cond_7

    move-object v3, v4

    goto :goto_5

    :cond_7
    iget-object v3, v2, Lcom/slp/library/common/log/SlpLogs$LogBean;->text:Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/slp/library/common/log/SlpLogs$Configtor;->formatLogText(Lcom/slp/library/common/log/SlpLogs$LogBean;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v8}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_2
    move-exception v3

    :goto_6
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v6, :cond_9

    :try_start_5
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    goto :goto_7

    :catchall_3
    move-exception v2

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    :cond_8
    throw v2

    :cond_9
    :goto_7
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v5}, Lcom/slp/library/common/log/SlpLogs$Configtor;->logPrintln(Lcom/slp/library/common/log/SlpLogs$LogBean;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SLP - Log Thread Error !! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    :cond_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SLP - Log Exit !!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-boolean v0, Lcom/slp/library/common/log/SlpLogs$Configtor;->isInit:Z

    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/slp/library/common/log/SlpLogs$Level;
    .locals 0

    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->logLevel:Lcom/slp/library/common/log/SlpLogs$Level;

    return-object p0
.end method

.method public setDefaultBacks(I)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->defaultBacks:I

    return-object p0
.end method

.method public setDefaultLins(I)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->defaultLins:I

    return-object p0
.end method

.method public setEnableThread(Z)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput-boolean p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableThread:Z

    return-object p0
.end method

.method public setEnableTime(Z)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput-boolean p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->enableTime:Z

    return-object p0
.end method

.method public setLogLevel(Lcom/slp/library/common/log/SlpLogs$Level;)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->logLevel:Lcom/slp/library/common/log/SlpLogs$Level;

    return-object p0
.end method

.method public setLogPath(Ljava/lang/String;)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->logPath:Ljava/lang/String;

    return-object p0
.end method

.method public setSplitStrE(Ljava/lang/String;)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->splitStrE:Ljava/lang/String;

    return-object p0
.end method

.method public setSplitStrS(Ljava/lang/String;)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->splitStrS:Ljava/lang/String;

    return-object p0
.end method

.method public setStrMaxCount(I)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->strMaxCount:I

    return-object p0
.end method

.method public setSystemLog(Lcom/slp/library/common/log/SlpLogs$ISystemLog;)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->ilog:Lcom/slp/library/common/log/SlpLogs$ISystemLog;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ISystemLog not null !"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/slp/library/common/log/SlpLogs$Configtor;
    .locals 0

    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$Configtor;->TAG:Ljava/lang/String;

    return-object p0
.end method
