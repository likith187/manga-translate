.class public Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUISavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCollapsingHeightPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->mCollapsingHeightPercent:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->mCollapsingHeightPercent:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->mCollapsingHeightPercent:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
