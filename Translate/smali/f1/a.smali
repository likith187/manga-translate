.class public abstract Lf1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "V_Base"

    const-string v1, "2.4.1240308150827-240308150827"

    invoke-static {v0, v1}, Lcom/slp/library/track/TrackFactory;->addGlobal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;
    .locals 3

    sget-object v0, Lcom/slp/library/common/log/Logs;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtain track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/slp/library/track/TrackFactory;->obtain(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;

    move-result-object p0

    return-object p0
.end method
