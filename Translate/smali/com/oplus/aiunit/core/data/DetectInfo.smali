.class public final Lcom/oplus/aiunit/core/data/DetectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private available:Z

.field private final detectName:Ljava/lang/String;

.field private state:I

.field private unavailableBySelf:Z

.field private unitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/aiunit/core/data/SimpleUnitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->detectName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/aiunit/core/data/SimpleUnitInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/data/DetectInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->available:Z

    iget-object p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->isUnsupportedBySelf()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unavailableBySelf:Z

    iget-object p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->getState()I

    move-result p1

    iput p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->state:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->available:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->getState()I

    move-result p1

    iput p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->state:I

    iget-object p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->isUnsupportedBySelf()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unavailableBySelf:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/data/DetectInfo;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->available:Z

    iput p2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->state:I

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unavailableBySelf:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    .line 4
    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/data/DetectInfo;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->available:Z

    iput p2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->state:I

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unavailableBySelf:Z

    return-void
.end method


# virtual methods
.method public final getDetectName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->detectName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpecificState()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->state:I

    return p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->available:Z

    return p0
.end method

.method public final isUnAvailableBySelf()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unavailableBySelf:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DetectInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->detectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unitList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->available:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectInfo;->unavailableBySelf:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
