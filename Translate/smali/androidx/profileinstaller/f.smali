.class final enum Landroidx/profileinstaller/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/profileinstaller/f;

.field public static final enum AGGREGATION_COUNT:Landroidx/profileinstaller/f;

.field public static final enum CLASSES:Landroidx/profileinstaller/f;

.field public static final enum DEX_FILES:Landroidx/profileinstaller/f;

.field public static final enum EXTRA_DESCRIPTORS:Landroidx/profileinstaller/f;

.field public static final enum METHODS:Landroidx/profileinstaller/f;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Landroidx/profileinstaller/f;
    .locals 5

    sget-object v0, Landroidx/profileinstaller/f;->DEX_FILES:Landroidx/profileinstaller/f;

    sget-object v1, Landroidx/profileinstaller/f;->EXTRA_DESCRIPTORS:Landroidx/profileinstaller/f;

    sget-object v2, Landroidx/profileinstaller/f;->CLASSES:Landroidx/profileinstaller/f;

    sget-object v3, Landroidx/profileinstaller/f;->METHODS:Landroidx/profileinstaller/f;

    sget-object v4, Landroidx/profileinstaller/f;->AGGREGATION_COUNT:Landroidx/profileinstaller/f;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/profileinstaller/f;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/profileinstaller/f;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "DEX_FILES"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/f;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/f;->DEX_FILES:Landroidx/profileinstaller/f;

    new-instance v0, Landroidx/profileinstaller/f;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "EXTRA_DESCRIPTORS"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/f;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/f;->EXTRA_DESCRIPTORS:Landroidx/profileinstaller/f;

    new-instance v0, Landroidx/profileinstaller/f;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "CLASSES"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/f;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/f;->CLASSES:Landroidx/profileinstaller/f;

    new-instance v0, Landroidx/profileinstaller/f;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-string v4, "METHODS"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/f;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/f;->METHODS:Landroidx/profileinstaller/f;

    new-instance v0, Landroidx/profileinstaller/f;

    const/4 v1, 0x4

    const-wide/16 v2, 0x4

    const-string v4, "AGGREGATION_COUNT"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/f;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/f;->AGGREGATION_COUNT:Landroidx/profileinstaller/f;

    invoke-static {}, Landroidx/profileinstaller/f;->$values()[Landroidx/profileinstaller/f;

    move-result-object v0

    sput-object v0, Landroidx/profileinstaller/f;->$VALUES:[Landroidx/profileinstaller/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Landroidx/profileinstaller/f;->mValue:J

    return-void
.end method

.method static fromValue(J)Landroidx/profileinstaller/f;
    .locals 4

    invoke-static {}, Landroidx/profileinstaller/f;->values()[Landroidx/profileinstaller/f;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroidx/profileinstaller/f;->getValue()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported FileSection Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/profileinstaller/f;
    .locals 1

    const-class v0, Landroidx/profileinstaller/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/profileinstaller/f;

    return-object p0
.end method

.method public static values()[Landroidx/profileinstaller/f;
    .locals 1

    sget-object v0, Landroidx/profileinstaller/f;->$VALUES:[Landroidx/profileinstaller/f;

    invoke-virtual {v0}, [Landroidx/profileinstaller/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/profileinstaller/f;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Landroidx/profileinstaller/f;->mValue:J

    return-wide v0
.end method
