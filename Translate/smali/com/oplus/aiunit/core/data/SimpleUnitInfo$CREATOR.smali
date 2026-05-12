.class public final Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/data/SimpleUnitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/aiunit/core/data/SimpleUnitInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/aiunit/core/data/SimpleUnitInfo;
    .locals 0

    .line 1
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/aiunit/core/data/SimpleUnitInfo;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/data/SimpleUnitInfo$CREATOR;->newArray(I)[Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    move-result-object p0

    return-object p0
.end method
