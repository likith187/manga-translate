.class public Lcom/slp/library/common/log/SlpLogs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slp/library/common/log/SlpLogs$LogImpl;,
        Lcom/slp/library/common/log/SlpLogs$Configtor;,
        Lcom/slp/library/common/log/SlpLogs$LogBean;,
        Lcom/slp/library/common/log/SlpLogs$ISystemLog;,
        Lcom/slp/library/common/log/SlpLogs$Level;
    }
.end annotation


# static fields
.field private static IS_ANDROID:Z = false


# instance fields
.field public final CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

.field public final DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public final ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public final INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public final ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

.field public final WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "SLP"

    const-string v1, "Android Log"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/slp/library/common/log/SlpLogs;->IS_ANDROID:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SLP System Log"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/slp/library/common/log/SlpLogs$Configtor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/slp/library/common/log/SlpLogs$Configtor;-><init>(Lcom/slp/library/common/log/SlpLogs$1;)V

    iput-object v0, p0, Lcom/slp/library/common/log/SlpLogs;->CONFIGTOR:Lcom/slp/library/common/log/SlpLogs$Configtor;

    new-instance v2, Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sget-object v3, Lcom/slp/library/common/log/SlpLogs$Level;->ON:Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-direct {v2, v3, v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;-><init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$1;)V

    iput-object v2, p0, Lcom/slp/library/common/log/SlpLogs;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v2, Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sget-object v3, Lcom/slp/library/common/log/SlpLogs$Level;->DEBUG:Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-direct {v2, v3, v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;-><init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$1;)V

    iput-object v2, p0, Lcom/slp/library/common/log/SlpLogs;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v2, Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sget-object v3, Lcom/slp/library/common/log/SlpLogs$Level;->INFOS:Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-direct {v2, v3, v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;-><init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$1;)V

    iput-object v2, p0, Lcom/slp/library/common/log/SlpLogs;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v2, Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sget-object v3, Lcom/slp/library/common/log/SlpLogs$Level;->WARNS:Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-direct {v2, v3, v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;-><init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$1;)V

    iput-object v2, p0, Lcom/slp/library/common/log/SlpLogs;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v2, Lcom/slp/library/common/log/SlpLogs$LogImpl;

    sget-object v3, Lcom/slp/library/common/log/SlpLogs$Level;->ERROR:Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-direct {v2, v3, v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;-><init>(Lcom/slp/library/common/log/SlpLogs$Level;Lcom/slp/library/common/log/SlpLogs$Configtor;Lcom/slp/library/common/log/SlpLogs$1;)V

    iput-object v2, p0, Lcom/slp/library/common/log/SlpLogs;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/slp/library/common/log/SlpLogs;->IS_ANDROID:Z

    return v0
.end method
