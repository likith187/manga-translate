.class public final Lcom/slp/library/common/log/Logs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

.field public static final DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public static final ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public static final INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public static final ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public static final WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field private static final _logs:Lcom/slp/library/common/log/LogsWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/slp/library/common/log/LogsWrap;->DEFAULT:Lcom/slp/library/common/log/LogsWrap;

    sput-object v0, Lcom/slp/library/common/log/Logs;->_logs:Lcom/slp/library/common/log/LogsWrap;

    iget-object v1, v0, Lcom/slp/library/common/log/LogsWrap;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    sput-object v1, Lcom/slp/library/common/log/Logs;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-object v1, v0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sput-object v1, Lcom/slp/library/common/log/Logs;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object v1, v0, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sput-object v1, Lcom/slp/library/common/log/Logs;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object v1, v0, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sput-object v1, Lcom/slp/library/common/log/Logs;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object v1, v0, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sput-object v1, Lcom/slp/library/common/log/Logs;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sput-object v0, Lcom/slp/library/common/log/Logs;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
