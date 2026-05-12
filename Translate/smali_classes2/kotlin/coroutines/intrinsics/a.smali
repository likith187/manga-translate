.class public final enum Lkotlin/coroutines/intrinsics/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lkotlin/coroutines/intrinsics/a;

.field public static final enum COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/a;

.field public static final enum RESUMED:Lkotlin/coroutines/intrinsics/a;

.field public static final enum UNDECIDED:Lkotlin/coroutines/intrinsics/a;


# direct methods
.method private static final synthetic $values()[Lkotlin/coroutines/intrinsics/a;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/a;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/a;

    sget-object v1, Lkotlin/coroutines/intrinsics/a;->UNDECIDED:Lkotlin/coroutines/intrinsics/a;

    sget-object v2, Lkotlin/coroutines/intrinsics/a;->RESUMED:Lkotlin/coroutines/intrinsics/a;

    filled-new-array {v0, v1, v2}, [Lkotlin/coroutines/intrinsics/a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/coroutines/intrinsics/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/intrinsics/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/coroutines/intrinsics/a;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/a;

    new-instance v0, Lkotlin/coroutines/intrinsics/a;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/intrinsics/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/coroutines/intrinsics/a;->UNDECIDED:Lkotlin/coroutines/intrinsics/a;

    new-instance v0, Lkotlin/coroutines/intrinsics/a;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/intrinsics/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/coroutines/intrinsics/a;->RESUMED:Lkotlin/coroutines/intrinsics/a;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->$values()[Lkotlin/coroutines/intrinsics/a;

    move-result-object v0

    sput-object v0, Lkotlin/coroutines/intrinsics/a;->$VALUES:[Lkotlin/coroutines/intrinsics/a;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lkotlin/coroutines/intrinsics/a;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lkotlin/coroutines/intrinsics/a;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/coroutines/intrinsics/a;
    .locals 1

    const-class v0, Lkotlin/coroutines/intrinsics/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/intrinsics/a;

    return-object p0
.end method

.method public static values()[Lkotlin/coroutines/intrinsics/a;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/a;->$VALUES:[Lkotlin/coroutines/intrinsics/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/coroutines/intrinsics/a;

    return-object v0
.end method
