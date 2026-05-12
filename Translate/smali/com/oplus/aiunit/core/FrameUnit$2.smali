.class Lcom/oplus/aiunit/core/FrameUnit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/FrameUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/aiunit/core/FrameUnit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/aiunit/core/FrameUnit;
    .locals 0

    .line 2
    new-instance p0, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit$2;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/aiunit/core/FrameUnit;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/oplus/aiunit/core/FrameUnit;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit$2;->newArray(I)[Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object p0

    return-object p0
.end method
