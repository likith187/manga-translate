.class final Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/service/IServiceManager$Companion;
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


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;->INSTANCE:Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aiunit/core/service/ServiceManager;
    .locals 0

    .line 1
    new-instance p0, Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;->invoke()Lcom/oplus/aiunit/core/service/ServiceManager;

    move-result-object p0

    return-object p0
.end method
