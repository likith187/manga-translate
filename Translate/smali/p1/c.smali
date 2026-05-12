.class public final enum Lp1/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lp1/c;

.field public static final enum JSON:Lp1/c;

.field public static final enum ZIP:Lp1/c;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lp1/c;
    .locals 2

    sget-object v0, Lp1/c;->JSON:Lp1/c;

    sget-object v1, Lp1/c;->ZIP:Lp1/c;

    filled-new-array {v0, v1}, [Lp1/c;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lp1/c;

    const/4 v1, 0x0

    const-string v2, ".json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Lp1/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lp1/c;->JSON:Lp1/c;

    new-instance v0, Lp1/c;

    const/4 v1, 0x1

    const-string v2, ".zip"

    const-string v3, "ZIP"

    invoke-direct {v0, v3, v1, v2}, Lp1/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lp1/c;->ZIP:Lp1/c;

    invoke-static {}, Lp1/c;->$values()[Lp1/c;

    move-result-object v0

    sput-object v0, Lp1/c;->$VALUES:[Lp1/c;

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

    iput-object p3, p0, Lp1/c;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp1/c;
    .locals 1

    const-class v0, Lp1/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp1/c;

    return-object p0
.end method

.method public static values()[Lp1/c;
    .locals 1

    sget-object v0, Lp1/c;->$VALUES:[Lp1/c;

    invoke-virtual {v0}, [Lp1/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp1/c;

    return-object v0
.end method


# virtual methods
.method public tempExtension()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lp1/c;->extension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp1/c;->extension:Ljava/lang/String;

    return-object p0
.end method
