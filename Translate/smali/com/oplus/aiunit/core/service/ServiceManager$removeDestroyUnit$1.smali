.class final Lcom/oplus/aiunit/core/service/ServiceManager$removeDestroyUnit$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;->removeDestroyUnit(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$removeDestroyUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/aiunit/core/IUnit;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$removeDestroyUnit$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getUnitActiveCompat(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IUnit;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/oplus/aiunit/core/IUnit;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager$removeDestroyUnit$1;->invoke(Lcom/oplus/aiunit/core/IUnit;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
