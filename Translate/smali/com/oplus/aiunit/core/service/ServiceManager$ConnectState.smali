.class public final enum Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

.field public static final enum CONNECTED:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

.field public static final enum CONNECTING:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

.field public static final enum DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
    .locals 3

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    sget-object v1, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTING:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    sget-object v2, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTED:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    filled-new-array {v0, v1, v2}, [Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    const-string v1, "DISCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTING:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTED:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-static {}, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->$values()[Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->$VALUES:[Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->$ENTRIES:Lr8/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->$VALUES:[Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    return-object v0
.end method
