.class final Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;->driveUnit(Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)Lcom/oplus/aiunit/core/IUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/a;"
    }
.end annotation


# instance fields
.field final synthetic $detectName:Ljava/lang/String;

.field final synthetic $param:Lcom/oplus/aiunit/core/ParamPackage;

.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iput-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$detectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$param:Lcom/oplus/aiunit/core/ParamPackage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aiunit/core/IUnit;
    .locals 12

    const-string v0, "ServiceManager"

    const-string v1, "driveUnit: success = "

    const-string v2, "driveUnit "

    .line 2
    iget-object v3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$detectName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$acquireExistUnit(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Z)Lcom/oplus/aiunit/core/IUnit;

    move-result-object v3

    if-nez v3, :cond_9

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$param:Lcom/oplus/aiunit/core/ParamPackage;

    if-nez v4, :cond_0

    .line 4
    const-string v4, "driveUnit create new param!"

    invoke-static {v0, v4}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v4, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v4}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 6
    :cond_0
    :goto_0
    const-string v6, "package::package_name"

    iget-object v7, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v7}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getContext$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Landroid/content/Context;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "context"

    const/4 v9, 0x0

    if-nez v7, :cond_1

    :try_start_1
    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v7, v9

    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    const-string v6, "package::package_version"

    iget-object v7, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v7}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getContext$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v7, v9

    :cond_2
    invoke-static {v7}, Lcom/oplus/aiunit/core/utils/AIUtil;->getMyAppVersion(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    const-string v6, "package::sdk_version"

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getClientProtocol()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    const-string v6, "package::sdk_version_name"

    const-string v7, "2.0.3-beta3eac8c9"

    invoke-virtual {v4, v6, v7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    const-string v6, "package::unit_name"

    iget-object v7, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$detectName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    const-string v6, "package::unit_listener"

    iget-object v7, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v7}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getUnitStatusProxy$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v6, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v6}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getService(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/core/IService;

    move-result-object v6

    .line 13
    iget-object v7, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$detectName:Ljava/lang/String;

    .line 14
    sget-object v8, Lcom/oplus/aiunit/core/utils/AILog;->INSTANCE:Lcom/oplus/aiunit/core/utils/AILog;

    invoke-virtual {v8}, Lcom/oplus/aiunit/core/utils/AILog;->isLogOn()Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_3

    invoke-virtual {v8}, Lcom/oplus/aiunit/core/utils/AILog;->getDebugMode()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 15
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ". init = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_4

    move v7, v5

    goto :goto_1

    :cond_4
    move v7, v11

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {v0, v7}, Lcom/oplus/aiunit/core/utils/AILog;->printI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v6, :cond_6

    .line 17
    const-string v7, "package::error_code"

    sget-object v8, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNotInit:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v8}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 18
    invoke-interface {v6, v4}, Lcom/oplus/aiunit/core/IService;->drive(Lcom/oplus/aiunit/core/ParamPackage;)Lcom/oplus/aiunit/core/IUnit;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-object v3, v9

    .line 19
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    move v5, v11

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    .line 20
    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$detectName:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$addUnit(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 21
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->$detectName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " err"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return-object v3
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;->invoke()Lcom/oplus/aiunit/core/IUnit;

    move-result-object p0

    return-object p0
.end method
