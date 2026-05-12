.class public Lcom/coui/appcompat/log/COUILog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/log/COUILog$COUILogLevel;
    }
.end annotation


# static fields
.field private static final COUI_LOG_FLAG:Ljava/lang/String; = "COUI"

.field public static final LEVEL_ASSERT:I = 0x7

.field public static final LEVEL_DEBUG:I = 0x3

.field public static final LEVEL_ERROR:I = 0x6

.field public static final LEVEL_INFO:I = 0x4

.field public static final LEVEL_SILENT:I = 0x7fffffff

.field public static final LEVEL_VERBOSE:I = 0x2

.field public static final LEVEL_WARN:I = 0x5

.field public static final LOG_ASSERT:Z

.field public static final LOG_DEBUG:Z

.field public static final LOG_ERROR:Z

.field public static final LOG_INFO:Z

.field private static LOG_LEVEL:I = 0x0

.field public static final LOG_SILENT:Z

.field public static final LOG_VERBOSE:Z

.field public static final LOG_WARN:Z

.field private static final STACK_TAG:Ljava/lang/String; = "StackTrace"

.field private static final STACK_TRACE:Z = false

.field private static isColorOS:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    const-string v1, "COUI"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_VERBOSE:Z

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    sput-boolean v4, Lcom/coui/appcompat/log/COUILog;->LOG_INFO:Z

    const/4 v5, 0x5

    invoke-static {v1, v5}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    sput-boolean v5, Lcom/coui/appcompat/log/COUILog;->LOG_WARN:Z

    const/4 v6, 0x6

    invoke-static {v1, v6}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    sput-boolean v6, Lcom/coui/appcompat/log/COUILog;->LOG_ERROR:Z

    const/4 v7, 0x7

    invoke-static {v1, v7}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/coui/appcompat/log/COUILog;->LOG_ASSERT:Z

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_SILENT:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/coui/appcompat/log/COUILog;->isColorOS:Ljava/lang/Boolean;

    sput v3, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_ERROR:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static e(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static getCOUILogLevel()I
    .locals 1

    sget v0, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_INFO:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static i(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static logStatus()V
    .locals 1

    .line 9
    const-string v0, "COUI"

    invoke-static {v0}, Lcom/coui/appcompat/log/COUILog;->logStatus(Ljava/lang/String;)V

    return-void
.end method

.method public static logStatus(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "COUI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/coui/appcompat/log/COUILog;->LOG_VERBOSE:Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    invoke-static {p0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 3
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/coui/appcompat/log/COUILog;->LOG_INFO:Z

    goto :goto_2

    :cond_2
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 4
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/coui/appcompat/log/COUILog;->LOG_WARN:Z

    goto :goto_3

    :cond_3
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    .line 5
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/coui/appcompat/log/COUILog;->LOG_ERROR:Z

    goto :goto_4

    :cond_4
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    .line 6
    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v2, Lcom/coui/appcompat/log/COUILog;->LOG_ASSERT:Z

    goto :goto_5

    :cond_5
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 7
    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/coui/appcompat/log/COUILog;->LOG_SILENT:Z

    goto :goto_6

    :cond_6
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    if-nez v2, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 8
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Log status for tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nVERBOSE: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\nDEBUG: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\nINFO: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\nWARN: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\nERROR: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\nASSERT: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\nSILENT: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x7

    invoke-static {v1, v0, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public static setCOUILogLevel(I)V
    .locals 0

    sput p0, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_VERBOSE:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static v(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/coui/appcompat/log/COUILog;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_WARN:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static w(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static wtf(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static wtf(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
