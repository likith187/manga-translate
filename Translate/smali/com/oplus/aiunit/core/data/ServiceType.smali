.class public final enum Lcom/oplus/aiunit/core/data/ServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/core/data/ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/core/data/ServiceType;

.field public static final enum AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

.field public static final enum NONE:Lcom/oplus/aiunit/core/data/ServiceType;

.field public static final enum OCRSERVICE:Lcom/oplus/aiunit/core/data/ServiceType;


# instance fields
.field private final pkgName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/core/data/ServiceType;
    .locals 3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

    sget-object v2, Lcom/oplus/aiunit/core/data/ServiceType;->OCRSERVICE:Lcom/oplus/aiunit/core/data/ServiceType;

    filled-new-array {v0, v1, v2}, [Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/data/ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    new-instance v0, Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v1, 0x1

    const-string v2, "com.oplus.aiunit"

    const-string v3, "AIUNIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/data/ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

    new-instance v0, Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v1, 0x2

    const-string v2, "com.coloros.ocrservice"

    const-string v3, "OCRSERVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/data/ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->OCRSERVICE:Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-static {}, Lcom/oplus/aiunit/core/data/ServiceType;->$values()[Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->$VALUES:[Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->$ENTRIES:Lr8/a;

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

    iput-object p3, p0, Lcom/oplus/aiunit/core/data/ServiceType;->pkgName:Ljava/lang/String;

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

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/core/data/ServiceType;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/data/ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/core/data/ServiceType;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->$VALUES:[Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/core/data/ServiceType;

    return-object v0
.end method


# virtual methods
.method public final getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/ServiceType;->pkgName:Ljava/lang/String;

    return-object p0
.end method
