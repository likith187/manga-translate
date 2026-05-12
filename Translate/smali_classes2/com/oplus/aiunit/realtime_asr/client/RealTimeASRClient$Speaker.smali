.class public final enum Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Speaker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker$Companion;

.field public static final enum OTHER_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field public static final enum OUR_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field public static final enum THIRD_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field public static final enum VIDEO_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
    .locals 4

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->OUR_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->THIRD_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->OTHER_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    sget-object v3, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->VIDEO_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    filled-new-array {v0, v1, v2, v3}, [Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    const/4 v1, 0x0

    const-string v2, "ourSide"

    const-string v3, "OUR_SIDE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->OUR_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    const/4 v1, 0x1

    const-string v2, "thirdSide"

    const-string v3, "THIRD_SIDE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->THIRD_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    const/4 v1, 0x2

    const-string v2, "otherSide"

    const-string v3, "OTHER_SIDE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->OTHER_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    const/4 v1, 0x3

    const-string v2, "videoSide"

    const-string v3, "VIDEO_SIDE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->VIDEO_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-static {}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->$values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->$ENTRIES:Lr8/a;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->Companion:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->value:Ljava/lang/String;

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

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->value:Ljava/lang/String;

    return-object p0
.end method
