.class public final enum Ln1/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Ln1/g;

.field public static final enum LINEAR:Ln1/g;

.field public static final enum RADIAL:Ln1/g;


# direct methods
.method private static synthetic $values()[Ln1/g;
    .locals 2

    sget-object v0, Ln1/g;->LINEAR:Ln1/g;

    sget-object v1, Ln1/g;->RADIAL:Ln1/g;

    filled-new-array {v0, v1}, [Ln1/g;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln1/g;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln1/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/g;->LINEAR:Ln1/g;

    new-instance v0, Ln1/g;

    const-string v1, "RADIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln1/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/g;->RADIAL:Ln1/g;

    invoke-static {}, Ln1/g;->$values()[Ln1/g;

    move-result-object v0

    sput-object v0, Ln1/g;->$VALUES:[Ln1/g;

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

.method public static valueOf(Ljava/lang/String;)Ln1/g;
    .locals 1

    const-class v0, Ln1/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln1/g;

    return-object p0
.end method

.method public static values()[Ln1/g;
    .locals 1

    sget-object v0, Ln1/g;->$VALUES:[Ln1/g;

    invoke-virtual {v0}, [Ln1/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln1/g;

    return-object v0
.end method
