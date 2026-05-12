.class public Lcom/oplus/compat/app/TaskSnapshotNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/compat/app/TaskSnapshotNative;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/graphics/GraphicBuffer;

.field private final f:I

.field private final h:I

.field private final i:Landroid/graphics/Point;

.field private final j:Landroid/graphics/Rect;

.field private final k:Z

.field private final l:Z

.field private final m:I

.field private final n:I

.field private final o:Z

.field private final p:Landroid/graphics/ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/compat/app/TaskSnapshotNative$a;

    invoke-direct {v0}, Lcom/oplus/compat/app/TaskSnapshotNative$a;-><init>()V

    sput-object v0, Lcom/oplus/compat/app/TaskSnapshotNative;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->a:J

    .line 4
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->b:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/GraphicBuffer;

    iput-object v1, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->c:Landroid/graphics/GraphicBuffer;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_0

    .line 7
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 8
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->p:Landroid/graphics/ColorSpace;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->f:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->h:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->i:Landroid/graphics/Point;

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->j:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->k:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->l:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->m:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->n:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->o:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oplus/compat/app/TaskSnapshotNative$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/compat/app/TaskSnapshotNative;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->c:Landroid/graphics/GraphicBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->c:Landroid/graphics/GraphicBuffer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskSnapshot{ mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mTopActivityComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->b:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->c:Landroid/graphics/GraphicBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") mColorSpace="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->p:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mOrientation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->f:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mRotation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->h:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mTaskSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->i:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mContentInsets="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mIsLowResolution="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->k:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsRealSnapshot="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->l:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mWindowingMode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->m:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSystemUiVisibility="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->n:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsTranslucent="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->o:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->b:Landroid/content/ComponentName;

    invoke-static {p2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->c:Landroid/graphics/GraphicBuffer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/GraphicBuffer;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->c:Landroid/graphics/GraphicBuffer;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->p:Landroid/graphics/ColorSpace;

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->i:Landroid/graphics/Point;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/oplus/compat/app/TaskSnapshotNative;->o:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
