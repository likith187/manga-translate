.class public final enum Lz1/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lz1/c$a;

.field public static final enum ERROR:Lz1/c$a;

.field public static final enum INITIALIZING:Lz1/c$a;

.field public static final enum PAUSE:Lz1/c$a;

.field public static final enum READY:Lz1/c$a;

.field public static final enum RECORDING:Lz1/c$a;

.field public static final enum STOPPED:Lz1/c$a;


# direct methods
.method private static synthetic $values()[Lz1/c$a;
    .locals 6

    sget-object v0, Lz1/c$a;->INITIALIZING:Lz1/c$a;

    sget-object v1, Lz1/c$a;->READY:Lz1/c$a;

    sget-object v2, Lz1/c$a;->RECORDING:Lz1/c$a;

    sget-object v3, Lz1/c$a;->PAUSE:Lz1/c$a;

    sget-object v4, Lz1/c$a;->ERROR:Lz1/c$a;

    sget-object v5, Lz1/c$a;->STOPPED:Lz1/c$a;

    filled-new-array/range {v0 .. v5}, [Lz1/c$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz1/c$a;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/c$a;->INITIALIZING:Lz1/c$a;

    new-instance v0, Lz1/c$a;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz1/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/c$a;->READY:Lz1/c$a;

    new-instance v0, Lz1/c$a;

    const-string v1, "RECORDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz1/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/c$a;->RECORDING:Lz1/c$a;

    new-instance v0, Lz1/c$a;

    const-string v1, "PAUSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz1/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/c$a;->PAUSE:Lz1/c$a;

    new-instance v0, Lz1/c$a;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lz1/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/c$a;->ERROR:Lz1/c$a;

    new-instance v0, Lz1/c$a;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lz1/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/c$a;->STOPPED:Lz1/c$a;

    invoke-static {}, Lz1/c$a;->$values()[Lz1/c$a;

    move-result-object v0

    sput-object v0, Lz1/c$a;->$VALUES:[Lz1/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lz1/c$a;
    .locals 1

    const-class v0, Lz1/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz1/c$a;

    return-object p0
.end method

.method public static values()[Lz1/c$a;
    .locals 1

    sget-object v0, Lz1/c$a;->$VALUES:[Lz1/c$a;

    invoke-virtual {v0}, [Lz1/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz1/c$a;

    return-object v0
.end method
