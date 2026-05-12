.class final Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;->detach(Ljava/lang/String;Ljava/lang/String;)I
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
.field final synthetic $configUuid:Ljava/lang/String;

.field final synthetic $detectName:Ljava/lang/String;

.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iput-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->$detectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->$configUuid:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->$detectName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/oplus/aiunit/core/service/ServiceManager;->acquireExistUnit$default(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;ZILjava/lang/Object;)Lcom/oplus/aiunit/core/IUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->$configUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oplus/aiunit/core/IUnit;->detach(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->$detectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceManager"

    invoke-static {v2, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->$detectName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeUnit(Ljava/lang/String;)Z

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
