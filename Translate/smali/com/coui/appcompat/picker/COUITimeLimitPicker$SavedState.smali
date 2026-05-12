.class Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUITimeLimitPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mHour:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coui/appcompat/picker/COUITimeLimitPicker$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iput p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mHour:I

    .line 5
    iput p3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/coui/appcompat/picker/COUITimeLimitPicker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method getHour()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mHour:I

    return p0
.end method

.method getMinute()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mMinute:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->mMinute:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
