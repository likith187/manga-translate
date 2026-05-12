.class public Lcom/oplus/aisubsystem/core/client/AiSettings$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aisubsystem/core/client/AiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private appForeground:Ljava/lang/Boolean;

.field private runningId:Ljava/lang/Integer;

.field private runningMaximumMemory:Ljava/lang/Long;

.field private runningType:Ljava/lang/Integer;

.field private survivalLifecycle:Ljava/lang/Long;

.field private userClick:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildSettings(Ljava/lang/Class;)Lcom/oplus/aisubsystem/core/client/AiSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/aisubsystem/core/client/AiSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/aisubsystem/core/client/AiSettings;

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningType:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/oplus/aisubsystem/core/client/AiSettings;->setRunningType(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/oplus/aisubsystem/core/client/AiSettings;->setRunningId(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->survivalLifecycle:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/oplus/aisubsystem/core/client/AiSettings;->setSurvivalLifecycle(Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningMaximumMemory:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/oplus/aisubsystem/core/client/AiSettings;->setRunningMaximumMemory(Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->userClick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/oplus/aisubsystem/core/client/AiSettings;->setUserClick(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->appForeground:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Lcom/oplus/aisubsystem/core/client/AiSettings;->setAppForeground(Ljava/lang/Boolean;)V

    check-cast v0, Lcom/oplus/aisubsystem/core/client/AiSettings;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error creating instance of "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AiSettings"

    invoke-static {v1, p1, v0}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {p0}, Ln8/s;->b(Ljava/lang/Object;)V

    const-string p1, "getOrThrow(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/aisubsystem/core/client/AiSettings;

    return-object p0
.end method

.method public final getAppForeground()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->appForeground:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getRunningId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getRunningMaximumMemory()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningMaximumMemory:Ljava/lang/Long;

    return-object p0
.end method

.method public final getRunningType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSurvivalLifecycle()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->survivalLifecycle:Ljava/lang/Long;

    return-object p0
.end method

.method public final getUserClick()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->userClick:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAppForeground(Z)Lcom/oplus/aisubsystem/core/client/AiSettings$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->appForeground:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAppForeground(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->appForeground:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRunningId(I)Lcom/oplus/aisubsystem/core/client/AiSettings$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setRunningId(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningId:Ljava/lang/Integer;

    return-void
.end method

.method public final setRunningMaximumMemory(J)Lcom/oplus/aisubsystem/core/client/AiSettings$b;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningMaximumMemory:Ljava/lang/Long;

    return-object p0
.end method

.method public final setRunningMaximumMemory(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningMaximumMemory:Ljava/lang/Long;

    return-void
.end method

.method public final setRunningType(I)Lcom/oplus/aisubsystem/core/client/AiSettings$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setRunningType(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->runningType:Ljava/lang/Integer;

    return-void
.end method

.method public final setSurvivalLifecycle(J)Lcom/oplus/aisubsystem/core/client/AiSettings$b;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->survivalLifecycle:Ljava/lang/Long;

    return-object p0
.end method

.method public final setSurvivalLifecycle(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->survivalLifecycle:Ljava/lang/Long;

    return-void
.end method

.method public final setUserClick(Z)Lcom/oplus/aisubsystem/core/client/AiSettings$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->userClick:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setUserClick(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->userClick:Ljava/lang/Boolean;

    return-void
.end method
