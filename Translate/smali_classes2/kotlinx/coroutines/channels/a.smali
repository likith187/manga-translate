.class public final enum Lkotlinx/coroutines/channels/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lkotlinx/coroutines/channels/a;

.field public static final enum DROP_LATEST:Lkotlinx/coroutines/channels/a;

.field public static final enum DROP_OLDEST:Lkotlinx/coroutines/channels/a;

.field public static final enum SUSPEND:Lkotlinx/coroutines/channels/a;


# direct methods
.method private static final synthetic $values()[Lkotlinx/coroutines/channels/a;
    .locals 3

    sget-object v0, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    sget-object v1, Lkotlinx/coroutines/channels/a;->DROP_OLDEST:Lkotlinx/coroutines/channels/a;

    sget-object v2, Lkotlinx/coroutines/channels/a;->DROP_LATEST:Lkotlinx/coroutines/channels/a;

    filled-new-array {v0, v1, v2}, [Lkotlinx/coroutines/channels/a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/channels/a;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/channels/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    new-instance v0, Lkotlinx/coroutines/channels/a;

    const-string v1, "DROP_OLDEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/channels/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/channels/a;->DROP_OLDEST:Lkotlinx/coroutines/channels/a;

    new-instance v0, Lkotlinx/coroutines/channels/a;

    const-string v1, "DROP_LATEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/channels/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/channels/a;->DROP_LATEST:Lkotlinx/coroutines/channels/a;

    invoke-static {}, Lkotlinx/coroutines/channels/a;->$values()[Lkotlinx/coroutines/channels/a;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/a;->$VALUES:[Lkotlinx/coroutines/channels/a;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/a;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lkotlinx/coroutines/channels/a;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/channels/a;
    .locals 1

    const-class v0, Lkotlinx/coroutines/channels/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/channels/a;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/channels/a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/a;->$VALUES:[Lkotlinx/coroutines/channels/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/channels/a;

    return-object v0
.end method
