.class public final Lcom/oplus/aiunit/core/data/SimpleUnitInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;


# instance fields
.field private availableInner:Z

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final state:I

.field private type:I

.field private unsupportedBySelfInner:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->CREATOR:Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    iput-object p2, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->type:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-lt p3, p2, :cond_0

    const/4 v0, 0x4

    if-gt p3, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->availableInner:Z

    if-eqz p3, :cond_1

    const/16 v0, 0xc

    if-eq p3, v0, :cond_1

    const/16 v0, 0xd

    if-ne p3, v0, :cond_2

    :cond_1
    move p1, p2

    :cond_2
    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->unsupportedBySelfInner:Z

    invoke-direct {p0}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->defaultType()I

    move-result p1

    iput p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->type:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/core/data/SimpleUnitInfo;ILjava/lang/String;IILjava/lang/Object;)Lcom/oplus/aiunit/core/data/SimpleUnitInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->copy(ILjava/lang/String;I)Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    move-result-object p0

    return-object p0
.end method

.method private final defaultType()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    const-string v1, "cloud_aigc_article_summary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    const-string v1, "cloud_aigc_call_summary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    const-string v1, "cloud_aigc_sdinpainting"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    const-string v1, "cloud_aigc_segmentation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    const-string v0, "cloud_audio_asr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    return p0
.end method

.method public final copy(ILjava/lang/String;I)Lcom/oplus/aiunit/core/data/SimpleUnitInfo;
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;-><init>(ILjava/lang/String;I)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    iget v1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    iget v3, p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    iget p1, p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getRunType()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->type:I

    return p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->availableInner:Z

    return p0
.end method

.method public final isUnsupportedBySelf()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->unsupportedBySelfInner:Z

    return p0
.end method

.method public final setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->availableInner:Z

    return-void
.end method

.method public final setRunType(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->type:I

    return-void
.end method

.method public final setUnsupportedBySelf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->unsupportedBySelfInner:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimpleUnitInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->availableInner:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->unsupportedBySelfInner:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;->state:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
