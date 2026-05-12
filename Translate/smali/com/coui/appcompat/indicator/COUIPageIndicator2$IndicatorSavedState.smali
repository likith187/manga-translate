.class Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndicatorSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentPosition:F

.field mDotsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mDotsCount:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mCurrentPosition:F

    .line 4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mDotsCount:I

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mCurrentPosition:F

    .line 8
    invoke-direct {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mDotsCount:I

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mCurrentPosition:F

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mDotsCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mCurrentPosition:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COUIPageIndicator2.IndicatorSavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDotsCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mDotsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mCurrentPosition:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mDotsCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->mCurrentPosition:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
