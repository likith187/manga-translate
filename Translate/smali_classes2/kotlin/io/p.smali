.class public final enum Lkotlin/io/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lkotlin/io/p;

.field public static final enum SKIP:Lkotlin/io/p;

.field public static final enum TERMINATE:Lkotlin/io/p;


# direct methods
.method private static final synthetic $values()[Lkotlin/io/p;
    .locals 2

    sget-object v0, Lkotlin/io/p;->SKIP:Lkotlin/io/p;

    sget-object v1, Lkotlin/io/p;->TERMINATE:Lkotlin/io/p;

    filled-new-array {v0, v1}, [Lkotlin/io/p;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/io/p;

    const-string v1, "SKIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/io/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/p;->SKIP:Lkotlin/io/p;

    new-instance v0, Lkotlin/io/p;

    const-string v1, "TERMINATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/io/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/p;->TERMINATE:Lkotlin/io/p;

    invoke-static {}, Lkotlin/io/p;->$values()[Lkotlin/io/p;

    move-result-object v0

    sput-object v0, Lkotlin/io/p;->$VALUES:[Lkotlin/io/p;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lkotlin/io/p;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lkotlin/io/p;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/io/p;
    .locals 1

    const-class v0, Lkotlin/io/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/io/p;

    return-object p0
.end method

.method public static values()[Lkotlin/io/p;
    .locals 1

    sget-object v0, Lkotlin/io/p;->$VALUES:[Lkotlin/io/p;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/io/p;

    return-object v0
.end method
