.class Lcom/oplus/aiunit/core/ShareMemoryHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/ShareMemoryHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/aiunit/core/ShareMemoryHolder;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/aiunit/core/ShareMemoryHolder;
    .locals 0

    .line 2
    new-instance p0, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/ShareMemoryHolder;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ShareMemoryHolder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/aiunit/core/ShareMemoryHolder;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/aiunit/core/ShareMemoryHolder;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/oplus/aiunit/core/ShareMemoryHolder;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ShareMemoryHolder$1;->newArray(I)[Lcom/oplus/aiunit/core/ShareMemoryHolder;

    move-result-object p0

    return-object p0
.end method
