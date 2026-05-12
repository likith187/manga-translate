.class public final enum Ll/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ll/i$a;

.field public static final enum CONSTANT:Ll/i$a;

.field public static final enum ERROR:Ll/i$a;

.field public static final enum SLACK:Ll/i$a;

.field public static final enum UNKNOWN:Ll/i$a;

.field public static final enum UNRESTRICTED:Ll/i$a;


# direct methods
.method private static synthetic $values()[Ll/i$a;
    .locals 5

    sget-object v0, Ll/i$a;->UNRESTRICTED:Ll/i$a;

    sget-object v1, Ll/i$a;->CONSTANT:Ll/i$a;

    sget-object v2, Ll/i$a;->SLACK:Ll/i$a;

    sget-object v3, Ll/i$a;->ERROR:Ll/i$a;

    sget-object v4, Ll/i$a;->UNKNOWN:Ll/i$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Ll/i$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll/i$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i$a;->UNRESTRICTED:Ll/i$a;

    new-instance v0, Ll/i$a;

    const-string v1, "CONSTANT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i$a;->CONSTANT:Ll/i$a;

    new-instance v0, Ll/i$a;

    const-string v1, "SLACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ll/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i$a;->SLACK:Ll/i$a;

    new-instance v0, Ll/i$a;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ll/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i$a;->ERROR:Ll/i$a;

    new-instance v0, Ll/i$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ll/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i$a;->UNKNOWN:Ll/i$a;

    invoke-static {}, Ll/i$a;->$values()[Ll/i$a;

    move-result-object v0

    sput-object v0, Ll/i$a;->$VALUES:[Ll/i$a;

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

.method public static valueOf(Ljava/lang/String;)Ll/i$a;
    .locals 1

    const-class v0, Ll/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/i$a;

    return-object p0
.end method

.method public static values()[Ll/i$a;
    .locals 1

    sget-object v0, Ll/i$a;->$VALUES:[Ll/i$a;

    invoke-virtual {v0}, [Ll/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/i$a;

    return-object v0
.end method
