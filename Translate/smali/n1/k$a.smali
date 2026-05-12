.class public final enum Ln1/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln1/k$a;

.field public static final enum POLYGON:Ln1/k$a;

.field public static final enum STAR:Ln1/k$a;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Ln1/k$a;
    .locals 2

    sget-object v0, Ln1/k$a;->STAR:Ln1/k$a;

    sget-object v1, Ln1/k$a;->POLYGON:Ln1/k$a;

    filled-new-array {v0, v1}, [Ln1/k$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln1/k$a;

    const-string v1, "STAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ln1/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln1/k$a;->STAR:Ln1/k$a;

    new-instance v0, Ln1/k$a;

    const-string v1, "POLYGON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Ln1/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln1/k$a;->POLYGON:Ln1/k$a;

    invoke-static {}, Ln1/k$a;->$values()[Ln1/k$a;

    move-result-object v0

    sput-object v0, Ln1/k$a;->$VALUES:[Ln1/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ln1/k$a;->value:I

    return-void
.end method

.method public static forValue(I)Ln1/k$a;
    .locals 5

    invoke-static {}, Ln1/k$a;->values()[Ln1/k$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Ln1/k$a;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln1/k$a;
    .locals 1

    const-class v0, Ln1/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln1/k$a;

    return-object p0
.end method

.method public static values()[Ln1/k$a;
    .locals 1

    sget-object v0, Ln1/k$a;->$VALUES:[Ln1/k$a;

    invoke-virtual {v0}, [Ln1/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln1/k$a;

    return-object v0
.end method
