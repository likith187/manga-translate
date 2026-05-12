.class public final enum Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

.field public static final enum INITED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

.field public static final enum NOT_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

.field public static final enum STARTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

.field public static final enum STOPPED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;
    .locals 4

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->NOT_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->INITED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->STARTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    sget-object v3, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->STOPPED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->NOT_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    const-string v1, "INITED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->INITED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    const-string v1, "STARTED"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->STARTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    const-string v1, "STOPPED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->STOPPED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    invoke-static {}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->$values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->$ENTRIES:Lr8/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->value:I

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

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->value:I

    return p0
.end method
