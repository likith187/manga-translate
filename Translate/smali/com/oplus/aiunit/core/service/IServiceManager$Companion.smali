.class public final Lcom/oplus/aiunit/core/service/IServiceManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/service/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

.field public static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static final instance$delegate:Ln8/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln8/j;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->$$INSTANCE:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    sget-object v0, Ln8/n;->SYNCHRONIZED:Ln8/n;

    sget-object v1, Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;->INSTANCE:Lcom/oplus/aiunit/core/service/IServiceManager$Companion$instance$2;

    invoke-static {v0, v1}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->instance$delegate:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->instance$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/service/IServiceManager;

    return-object p0
.end method
