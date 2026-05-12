.class public final enum Ln1/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln1/i$a;

.field public static final enum MASK_MODE_ADD:Ln1/i$a;

.field public static final enum MASK_MODE_INTERSECT:Ln1/i$a;

.field public static final enum MASK_MODE_NONE:Ln1/i$a;

.field public static final enum MASK_MODE_SUBTRACT:Ln1/i$a;


# direct methods
.method private static synthetic $values()[Ln1/i$a;
    .locals 4

    sget-object v0, Ln1/i$a;->MASK_MODE_ADD:Ln1/i$a;

    sget-object v1, Ln1/i$a;->MASK_MODE_SUBTRACT:Ln1/i$a;

    sget-object v2, Ln1/i$a;->MASK_MODE_INTERSECT:Ln1/i$a;

    sget-object v3, Ln1/i$a;->MASK_MODE_NONE:Ln1/i$a;

    filled-new-array {v0, v1, v2, v3}, [Ln1/i$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln1/i$a;

    const-string v1, "MASK_MODE_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i$a;->MASK_MODE_ADD:Ln1/i$a;

    new-instance v0, Ln1/i$a;

    const-string v1, "MASK_MODE_SUBTRACT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i$a;->MASK_MODE_SUBTRACT:Ln1/i$a;

    new-instance v0, Ln1/i$a;

    const-string v1, "MASK_MODE_INTERSECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i$a;->MASK_MODE_INTERSECT:Ln1/i$a;

    new-instance v0, Ln1/i$a;

    const-string v1, "MASK_MODE_NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ln1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i$a;->MASK_MODE_NONE:Ln1/i$a;

    invoke-static {}, Ln1/i$a;->$values()[Ln1/i$a;

    move-result-object v0

    sput-object v0, Ln1/i$a;->$VALUES:[Ln1/i$a;

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

.method public static valueOf(Ljava/lang/String;)Ln1/i$a;
    .locals 1

    const-class v0, Ln1/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln1/i$a;

    return-object p0
.end method

.method public static values()[Ln1/i$a;
    .locals 1

    sget-object v0, Ln1/i$a;->$VALUES:[Ln1/i$a;

    invoke-virtual {v0}, [Ln1/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln1/i$a;

    return-object v0
.end method
