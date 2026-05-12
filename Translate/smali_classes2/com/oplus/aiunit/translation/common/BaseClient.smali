.class public abstract Lcom/oplus/aiunit/translation/common/BaseClient;
.super Lcom/oplus/aiunit/core/AIConnector;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/common/ITransmit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/common/BaseClient$Companion;,
        Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IP:",
        "Lcom/oplus/aiunit/translation/common/BaseInputSlot;",
        "OP:",
        "Lcom/oplus/aiunit/translation/common/BaseOutputSlot;",
        "D:",
        "Lcom/oplus/aiunit/translation/common/BaseDetector<",
        "TIP;TOP;>;>",
        "Lcom/oplus/aiunit/core/AIConnector<",
        "TIP;TOP;>;",
        "Lcom/oplus/aiunit/translation/common/ITransmit;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/translation/common/BaseClient$Companion;

.field public static final TAG:Ljava/lang/String; = "BaseClient"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/common/BaseClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/common/BaseClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/common/BaseClient;->Companion:Lcom/oplus/aiunit/translation/common/BaseClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/aiunit/translation/common/BaseDetector;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/aiunit/translation/common/BaseDetector<",
            "TIP;TOP;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIConnector;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG(Lcom/oplus/aiunit/translation/common/BaseClient;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$lambda$0(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method public static synthetic process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: process"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final process$lambda$0(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$methods"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/common/BaseClient;->processEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method private final processEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1;-><init>(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    invoke-virtual {p0, v6}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic processEvent$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/common/BaseClient;->processEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: processEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract handleInput(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/IAIMessenger;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/callback/IAIMessenger;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract handleResult(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/aiunit/core/FramePackage;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected final process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "methods"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/oplus/aiunit/translation/common/a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oplus/aiunit/translation/common/a;-><init>(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "process()....0"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/common/BaseClient;->processEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "process()....1"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
