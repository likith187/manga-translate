.class public Lcom/slp/library/common/log/SystemLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/slp/library/common/log/SlpLogs$ISystemLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/slp/library/common/log/SystemLog;->println(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/slp/library/common/log/SystemLog;->println(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/slp/library/common/log/SystemLog;->println(Ljava/lang/String;)V

    return-void
.end method

.method println(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/slp/library/common/log/SystemLog;->println(Ljava/lang/String;)V

    return-void
.end method
