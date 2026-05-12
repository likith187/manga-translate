.class public final Lcom/oplus/aiunit/core/data/AIConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/data/AIConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;


# instance fields
.field private detectName:Ljava/lang/String;

.field private minApi:I

.field private minSdk:I

.field private support:Z

.field private unitId:I

.field private unitVersion:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/AIConfig;->Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    iput-wide p3, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->support:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/core/data/AIConfig;Ljava/lang/String;IJILjava/lang/Object;)Lcom/oplus/aiunit/core/data/AIConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/core/data/AIConfig;->copy(Ljava/lang/String;IJ)Lcom/oplus/aiunit/core/data/AIConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/AIConfig;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/data/AIConfig;->Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;->get(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/AIConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final parse(Lorg/json/JSONObject;)Lcom/oplus/aiunit/core/data/AIConfig;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/data/AIConfig;->Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;->parse(Lorg/json/JSONObject;)Lcom/oplus/aiunit/core/data/AIConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    return p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;IJ)Lcom/oplus/aiunit/core/data/AIConfig;
    .locals 0

    const-string p0, "detectName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/core/data/AIConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/core/data/AIConfig;-><init>(Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/core/data/AIConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/core/data/AIConfig;

    iget-object v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    iget v3, p1, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    iget-wide p0, p1, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDetectName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinApi()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->minApi:I

    return p0
.end method

.method public final getMinSdk()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->minSdk:I

    return p0
.end method

.method public final getSupport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->support:Z

    return p0
.end method

.method public final getUnitId()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    return p0
.end method

.method public final getUnitVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final setDetectName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    return-void
.end method

.method public final setMinApi(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->minApi:I

    return-void
.end method

.method public final setMinSdk(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->minSdk:I

    return-void
.end method

.method public final setSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->support:Z

    return-void
.end method

.method public final setUnitId(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    return-void
.end method

.method public final setUnitVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AI(detectName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->detectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unitVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->unitVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->support:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", minSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/aiunit/core/data/AIConfig;->minSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/aiunit/core/data/AIConfig;->minApi:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
