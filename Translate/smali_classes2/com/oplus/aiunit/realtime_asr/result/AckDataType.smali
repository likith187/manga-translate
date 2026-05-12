.class public final enum Lcom/oplus/aiunit/realtime_asr/result/AckDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/realtime_asr/result/AckDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

.field public static final enum TYPE_END:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

.field public static final enum TYPE_FINAL:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

.field public static final enum TYPE_INTERMEDIATE:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

.field public static final enum TYPE_VAD_FINAL:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/realtime_asr/result/AckDataType;
    .locals 4

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_INTERMEDIATE:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_VAD_FINAL:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_FINAL:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    sget-object v3, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_END:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    const/4 v1, 0x0

    const-string v2, "INTERMMEDIATE"

    const-string v3, "TYPE_INTERMEDIATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_INTERMEDIATE:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    const/4 v1, 0x1

    const-string v2, "VAD_FINAL"

    const-string v3, "TYPE_VAD_FINAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_VAD_FINAL:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    const/4 v1, 0x2

    const-string v2, "FINAL"

    const-string v3, "TYPE_FINAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_FINAL:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    const/4 v1, 0x3

    const-string v2, "END"

    const-string v3, "TYPE_END"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->TYPE_END:Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    invoke-static {}, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->$values()[Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->$ENTRIES:Lr8/a;

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

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->value:Ljava/lang/String;

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

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/AckDataType;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/realtime_asr/result/AckDataType;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/realtime_asr/result/AckDataType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AckDataType;->value:Ljava/lang/String;

    return-object p0
.end method
