.class public final enum Ln8/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Ln8/n;

.field public static final enum NONE:Ln8/n;

.field public static final enum PUBLICATION:Ln8/n;

.field public static final enum SYNCHRONIZED:Ln8/n;


# direct methods
.method private static final synthetic $values()[Ln8/n;
    .locals 3

    sget-object v0, Ln8/n;->SYNCHRONIZED:Ln8/n;

    sget-object v1, Ln8/n;->PUBLICATION:Ln8/n;

    sget-object v2, Ln8/n;->NONE:Ln8/n;

    filled-new-array {v0, v1, v2}, [Ln8/n;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln8/n;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln8/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln8/n;->SYNCHRONIZED:Ln8/n;

    new-instance v0, Ln8/n;

    const-string v1, "PUBLICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln8/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln8/n;->PUBLICATION:Ln8/n;

    new-instance v0, Ln8/n;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln8/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln8/n;->NONE:Ln8/n;

    invoke-static {}, Ln8/n;->$values()[Ln8/n;

    move-result-object v0

    sput-object v0, Ln8/n;->$VALUES:[Ln8/n;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Ln8/n;->$ENTRIES:Lr8/a;

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

    sget-object v0, Ln8/n;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln8/n;
    .locals 1

    const-class v0, Ln8/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln8/n;

    return-object p0
.end method

.method public static values()[Ln8/n;
    .locals 1

    sget-object v0, Ln8/n;->$VALUES:[Ln8/n;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln8/n;

    return-object v0
.end method
