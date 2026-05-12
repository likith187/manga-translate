.class Lcom/slp/library/common/log/SlpLogs$LogBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slp/library/common/log/SlpLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogBean"
.end annotation


# instance fields
.field backLins:I

.field configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

.field displayLins:I

.field level:Lcom/slp/library/common/log/SlpLogs$Level;

.field splitClass:Ljava/lang/String;

.field stack:Ljava/lang/Throwable;

.field tag:Ljava/lang/String;

.field text:Ljava/lang/Object;

.field threadInfo:Ljava/lang/String;

.field time:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->displayLins:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->backLins:I

    .line 20
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->time:Ljava/util/Date;

    .line 21
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->stack:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->splitClass:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    if-nez p3, :cond_0

    .line 24
    invoke-static {p1}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$200(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->tag:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->text:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    .line 27
    invoke-static {p1}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$300(Lcom/slp/library/common/log/SlpLogs$Configtor;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->threadInfo:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/slp/library/common/log/SlpLogs$LogBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->displayLins:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->backLins:I

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->time:Ljava/util/Date;

    .line 5
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->stack:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->splitClass:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    .line 8
    iget v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->displayLins:I

    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->displayLins:I

    .line 9
    iget v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->backLins:I

    iput v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->backLins:I

    .line 10
    iget-object v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->tag:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->text:Ljava/lang/Object;

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->text:Ljava/lang/Object;

    .line 12
    iget-object v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->time:Ljava/util/Date;

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->time:Ljava/util/Date;

    .line 13
    iget-object v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->stack:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->stack:Ljava/lang/Throwable;

    .line 14
    iget-object v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->threadInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->threadInfo:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->splitClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->splitClass:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$LogBean;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    return-void
.end method
