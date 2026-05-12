.class public Lcom/slp/library/common/log/SlpLogs$LogImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slp/library/common/log/SlpLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogImpl"
.end annotation


# instance fields
.field final configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

.field level:Lcom/slp/library/common/log/SlpLogs$Level;


# direct methods
.method private constructor <init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    .line 4
    iput-object p2, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/slp/library/common/log/SlpLogs$LogImpl;-><init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;)V

    return-void
.end method

.method private _log(Lcom/slp/library/common/log/SlpLogs$LogBean;)V
    .locals 6

    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v1}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$600(Lcom/slp/library/common/log/SlpLogs$Configtor;)Lcom/slp/library/common/log/SlpLogs$Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {p0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$900(Lcom/slp/library/common/log/SlpLogs$Configtor;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/slp/library/common/log/SlpLogs$LogBean;->text:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x1

    mul-int v4, v3, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    :cond_1
    new-instance v5, Lcom/slp/library/common/log/SlpLogs$LogBean;

    invoke-direct {v5, p1}, Lcom/slp/library/common/log/SlpLogs$LogBean;-><init>(Lcom/slp/library/common/log/SlpLogs$LogBean;)V

    mul-int/2addr v2, p0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/slp/library/common/log/SlpLogs$LogBean;->text:Ljava/lang/Object;

    invoke-static {v5}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$1000(Lcom/slp/library/common/log/SlpLogs$LogBean;)V

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$1000(Lcom/slp/library/common/log/SlpLogs$LogBean;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$200(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logft(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logBack(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$200(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logBack(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logBack(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logLins(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$200(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logLins(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logLins(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logSplit(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    sget-object v1, Lcom/slp/library/common/log/SlpLogs$Level;->ERROR:Lcom/slp/library/common/log/SlpLogs$Level;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v1}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$600(Lcom/slp/library/common/log/SlpLogs$Configtor;)Lcom/slp/library/common/log/SlpLogs$Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/slp/library/common/log/SlpLogs$LogBean;

    iget-object v1, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    iget-object v2, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->level:Lcom/slp/library/common/log/SlpLogs$Level;

    if-eqz p6, :cond_2

    array-length v3, p6

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p5, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    :cond_2
    :goto_0
    invoke-direct {v0, v1, v2, p2, p5}, Lcom/slp/library/common/log/SlpLogs$LogBean;-><init>(Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {p2}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$700(Lcom/slp/library/common/log/SlpLogs$Configtor;)I

    move-result p2

    add-int/2addr p3, p2

    iput p3, v0, Lcom/slp/library/common/log/SlpLogs$LogBean;->displayLins:I

    iget-object p2, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {p2}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$800(Lcom/slp/library/common/log/SlpLogs$Configtor;)I

    move-result p2

    add-int/2addr p4, p2

    iput p4, v0, Lcom/slp/library/common/log/SlpLogs$LogBean;->backLins:I

    iput-object p1, v0, Lcom/slp/library/common/log/SlpLogs$LogBean;->splitClass:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->_log(Lcom/slp/library/common/log/SlpLogs$LogBean;)V

    return-void
.end method

.method public varargs logf(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$200(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logf(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$500(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logSplit(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/slp/library/common/log/SlpLogs$LogImpl;->configtor:Lcom/slp/library/common/log/SlpLogs$Configtor;

    invoke-static {v0}, Lcom/slp/library/common/log/SlpLogs$Configtor;->access$200(Lcom/slp/library/common/log/SlpLogs$Configtor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logft(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logft(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logBack(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
