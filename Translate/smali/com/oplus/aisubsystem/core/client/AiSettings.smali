.class public abstract Lcom/oplus/aisubsystem/core/client/AiSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aisubsystem/core/client/AiSettings$a;,
        Lcom/oplus/aisubsystem/core/client/AiSettings$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aisubsystem/core/client/AiSettings$a;

.field public static final DEFAULT_MAXIMUM_MEMORY:J = 0x1000L

.field public static final DEFAULT_RUNNING_ID:I = -0x1

.field public static final DEFAULT_SURVIVAL_LIFECYCLE:J = 0xea60L

.field public static final RUNNING_TYPE_CLOUD:I = 0x2

.field public static final RUNNING_TYPE_LOCAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AiSettings"


# instance fields
.field private appForeground:Ljava/lang/Boolean;

.field private runningId:Ljava/lang/Integer;

.field private runningMaximumMemory:Ljava/lang/Long;

.field private runningType:Ljava/lang/Integer;

.field private survivalLifecycle:Ljava/lang/Long;

.field private userClick:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aisubsystem/core/client/AiSettings$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aisubsystem/core/client/AiSettings$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aisubsystem/core/client/AiSettings;->Companion:Lcom/oplus/aisubsystem/core/client/AiSettings$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final build()Lcom/oplus/aisubsystem/core/client/AiSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aisubsystem/core/client/AiSettings;->Companion:Lcom/oplus/aisubsystem/core/client/AiSettings$a;

    invoke-virtual {v0}, Lcom/oplus/aisubsystem/core/client/AiSettings$a;->a()Lcom/oplus/aisubsystem/core/client/AiSettings;

    move-result-object v0

    return-object v0
.end method

.method public static final build(Lw8/l;)Lcom/oplus/aisubsystem/core/client/AiSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")",
            "Lcom/oplus/aisubsystem/core/client/AiSettings;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/oplus/aisubsystem/core/client/AiSettings;->Companion:Lcom/oplus/aisubsystem/core/client/AiSettings$a;

    invoke-virtual {v0, p0}, Lcom/oplus/aisubsystem/core/client/AiSettings$a;->b(Lw8/l;)Lcom/oplus/aisubsystem/core/client/AiSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAppForeground()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->appForeground:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getRunningId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->runningId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getRunningMaximumMemory()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->runningMaximumMemory:Ljava/lang/Long;

    return-object p0
.end method

.method public final getRunningType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->runningType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSurvivalLifecycle()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->survivalLifecycle:Ljava/lang/Long;

    return-object p0
.end method

.method public final getUserClick()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->userClick:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAppForeground(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->appForeground:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRunningId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->runningId:Ljava/lang/Integer;

    return-void
.end method

.method public final setRunningMaximumMemory(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->runningMaximumMemory:Ljava/lang/Long;

    return-void
.end method

.method public final setRunningType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->runningType:Ljava/lang/Integer;

    return-void
.end method

.method public final setSurvivalLifecycle(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->survivalLifecycle:Ljava/lang/Long;

    return-void
.end method

.method public final setUserClick(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings;->userClick:Ljava/lang/Boolean;

    return-void
.end method
