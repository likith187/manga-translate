.class final Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;->addUnit(Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V
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

.field final synthetic $unit:Lcom/oplus/aiunit/core/IUnit;

.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iput-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "ServiceManager"

    const-string v2, "]. "

    const-string v3, " - "

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v4}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "addUnit first ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v3}, Lcom/oplus/aiunit/core/IUnit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iget-object v5, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    iget-object v6, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getUnitNameCompat(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 9
    iget-object v5, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iget-object v6, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 11
    check-cast v9, Lcom/oplus/aiunit/core/IUnit;

    .line 12
    invoke-static {v5, v9, v6}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getUnitNameCompat(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, -0x1

    :goto_1
    if-gez v8, :cond_3

    .line 13
    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "addUnit new ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v3}, Lcom/oplus/aiunit/core/IUnit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v0, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "addUnit replace ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$detectName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-interface {v3}, Lcom/oplus/aiunit/core/IUnit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;->$unit:Lcom/oplus/aiunit/core/IUnit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
