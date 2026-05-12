.class Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;
    .locals 1

    .line 2
    new-instance p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    const-class v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState$1;->newArray(I)[Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    move-result-object p0

    return-object p0
.end method
