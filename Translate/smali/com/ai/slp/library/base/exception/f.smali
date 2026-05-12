.class public Lcom/ai/slp/library/base/exception/f;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field final info:Lcom/ai/slp/library/base/exception/b;


# direct methods
.method public constructor <init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ai/slp/library/base/exception/f;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 2
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance p2, Lcom/ai/slp/library/base/exception/b;

    invoke-direct {p2, p1, p0}, Lcom/ai/slp/library/base/exception/b;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/ai/slp/library/base/exception/f;->info:Lcom/ai/slp/library/base/exception/b;

    .line 4
    sget-object v0, Lcom/slp/library/common/log/Logs;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NewException::"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x0

    new-array v6, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logSplit(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/ai/slp/library/base/exception/f;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getErrorInfo()Lcom/ai/slp/library/base/exception/b;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/base/exception/f;->info:Lcom/ai/slp/library/base/exception/b;

    return-object p0
.end method
