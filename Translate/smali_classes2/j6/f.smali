.class public final enum Lj6/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lj6/f;

.field public static final enum JSON:Lj6/f;

.field public static final enum ZIP:Lj6/f;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj6/f;

    const/4 v1, 0x0

    const-string v2, ".json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Lj6/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj6/f;->JSON:Lj6/f;

    new-instance v1, Lj6/f;

    const/4 v2, 0x1

    const-string v3, ".zip"

    const-string v4, "ZIP"

    invoke-direct {v1, v4, v2, v3}, Lj6/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lj6/f;->ZIP:Lj6/f;

    filled-new-array {v0, v1}, [Lj6/f;

    move-result-object v0

    sput-object v0, Lj6/f;->$VALUES:[Lj6/f;

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

    iput-object p3, p0, Lj6/f;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj6/f;
    .locals 1

    const-class v0, Lj6/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj6/f;

    return-object p0
.end method

.method public static values()[Lj6/f;
    .locals 1

    sget-object v0, Lj6/f;->$VALUES:[Lj6/f;

    invoke-virtual {v0}, [Lj6/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/f;

    return-object v0
.end method


# virtual methods
.method public tempExtension()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj6/f;->extension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj6/f;->extension:Ljava/lang/String;

    return-object p0
.end method
