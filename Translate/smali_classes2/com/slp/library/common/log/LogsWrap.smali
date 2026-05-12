.class public Lcom/slp/library/common/log/LogsWrap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/slp/library/common/log/LogsWrap;


# instance fields
.field public CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

.field public DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field private final _logs:Lcom/slp/library/common/log/SlpLogs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/slp/library/common/log/LogsWrap;

    invoke-direct {v0}, Lcom/slp/library/common/log/LogsWrap;-><init>()V

    sput-object v0, Lcom/slp/library/common/log/LogsWrap;->DEFAULT:Lcom/slp/library/common/log/LogsWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/slp/library/common/log/SlpLogs;

    invoke-direct {v0}, Lcom/slp/library/common/log/SlpLogs;-><init>()V

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->_logs:Lcom/slp/library/common/log/SlpLogs;

    .line 3
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    .line 4
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 5
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 6
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 7
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 8
    iget-object v0, v0, Lcom/slp/library/common/log/SlpLogs;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    return-void
.end method

.method public constructor <init>(Lcom/slp/library/common/log/LogsWrap;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/slp/library/common/log/SlpLogs;

    invoke-direct {v0}, Lcom/slp/library/common/log/SlpLogs;-><init>()V

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->_logs:Lcom/slp/library/common/log/SlpLogs;

    .line 11
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    .line 12
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 13
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 14
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 15
    iget-object v1, v0, Lcom/slp/library/common/log/SlpLogs;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v1, p0, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 16
    iget-object v0, v0, Lcom/slp/library/common/log/SlpLogs;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    .line 17
    invoke-virtual {p0, p1}, Lcom/slp/library/common/log/LogsWrap;->attachLogs(Lcom/slp/library/common/log/LogsWrap;)Z

    return-void
.end method


# virtual methods
.method public attachLogs(Lcom/slp/library/common/log/LogsWrap;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p1, Lcom/slp/library/common/log/LogsWrap;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-object v0, p1, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object v0, p1, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object v0, p1, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object v0, p1, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object v0, p0, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iget-object p1, p1, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    iput-object p1, p0, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const/4 p0, 0x1

    return p0
.end method
