.class final Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;->onDestroy(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/l;"
    }
.end annotation


# instance fields
.field final synthetic $detectName:Ljava/lang/String;

.field final synthetic $unitName:Ljava/lang/String;

.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iput-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->$detectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->$unitName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/aiunit/core/IUnit;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->$detectName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getUnitNameCompat(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->$unitName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getUnitActiveCompat(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IUnit;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/oplus/aiunit/core/IUnit;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy$onDestroy$2;->invoke(Lcom/oplus/aiunit/core/IUnit;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
