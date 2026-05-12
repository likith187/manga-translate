.class public final enum Ln1/s$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln1/s$b;

.field public static final enum BUTT:Ln1/s$b;

.field public static final enum ROUND:Ln1/s$b;

.field public static final enum UNKNOWN:Ln1/s$b;


# direct methods
.method private static synthetic $values()[Ln1/s$b;
    .locals 3

    sget-object v0, Ln1/s$b;->BUTT:Ln1/s$b;

    sget-object v1, Ln1/s$b;->ROUND:Ln1/s$b;

    sget-object v2, Ln1/s$b;->UNKNOWN:Ln1/s$b;

    filled-new-array {v0, v1, v2}, [Ln1/s$b;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln1/s$b;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln1/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/s$b;->BUTT:Ln1/s$b;

    new-instance v0, Ln1/s$b;

    const-string v1, "ROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln1/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/s$b;->ROUND:Ln1/s$b;

    new-instance v0, Ln1/s$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln1/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/s$b;->UNKNOWN:Ln1/s$b;

    invoke-static {}, Ln1/s$b;->$values()[Ln1/s$b;

    move-result-object v0

    sput-object v0, Ln1/s$b;->$VALUES:[Ln1/s$b;

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

.method public static valueOf(Ljava/lang/String;)Ln1/s$b;
    .locals 1

    const-class v0, Ln1/s$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln1/s$b;

    return-object p0
.end method

.method public static values()[Ln1/s$b;
    .locals 1

    sget-object v0, Ln1/s$b;->$VALUES:[Ln1/s$b;

    invoke-virtual {v0}, [Ln1/s$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln1/s$b;

    return-object v0
.end method


# virtual methods
.method public toPaintCap()Landroid/graphics/Paint$Cap;
    .locals 1

    sget-object v0, Ln1/s$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0
.end method
