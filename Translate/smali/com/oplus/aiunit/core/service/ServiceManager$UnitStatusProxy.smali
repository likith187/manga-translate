.class public final Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;
.super Lcom/oplus/aiunit/core/callback/IUnitStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UnitStatusProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IUnitStatusListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lw8/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->onFailSpec$lambda$5(Lw8/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lw8/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->onDestroy$lambda$9(Lw8/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final onDestroy$lambda$9(Lw8/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final onFailSpec$lambda$5(Lw8/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDestroy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy: detectName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unitName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getServiceProtocol$p(Lcom/oplus/aiunit/core/service/ServiceManager;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isTelAI(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v3}, Lcom/oplus/aiunit/core/IUnit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/oplus/aiunit/core/IUnit;

    :cond_2
    if-eqz v1, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, v0}, Lcom/oplus/aiunit/core/IUnit;->getRunningInfo(Landroid/os/Bundle;)V

    sget-object v1, Lcom/oplus/aiunit/core/data/AIConfig;->Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    invoke-virtual {v1, v0}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;->get(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/AIConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectStateCallback$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onOneDestroy(Lcom/oplus/aiunit/core/data/AIConfig;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-direct {v1, v2, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/aiunit/core/service/k;

    invoke-direct {p2, v1}, Lcom/oplus/aiunit/core/service/k;-><init>(Lw8/l;)V

    invoke-interface {v0, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_5
    iget-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_6
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectStateCallback$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllDestroy(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public onFail(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFail: detectName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectStateCallback$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-eqz v0, :cond_0

    const-string v1, "onFail"

    invoke-interface {v0, p1, p2, v1}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFailSpec(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailSpec: detectName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unitName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getServiceProtocol$p(Lcom/oplus/aiunit/core/service/ServiceManager;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isTelAI(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v3}, Lcom/oplus/aiunit/core/IUnit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/oplus/aiunit/core/IUnit;

    :cond_2
    if-eqz v1, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, v0}, Lcom/oplus/aiunit/core/IUnit;->getRunningInfo(Landroid/os/Bundle;)V

    sget-object v1, Lcom/oplus/aiunit/core/data/AIConfig;->Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    invoke-virtual {v1, v0}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;->get(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/AIConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/data/AIConfig;->setDetectName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectStateCallback$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0, p3, p4}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onOneFail(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onFailSpec$2;

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-direct {v1, v2, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onFailSpec$2;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/aiunit/core/service/j;

    invoke-direct {p2, v1}, Lcom/oplus/aiunit/core/service/j;-><init>(Lw8/l;)V

    invoke-interface {v0, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_5
    iget-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_6
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectStateCallback$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, p3, p4}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public onStart(Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)V
    .locals 2

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart: unit = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detectName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0, p2, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$addUnit(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 2

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop: detectName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectStateCallback$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllDestroy(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
