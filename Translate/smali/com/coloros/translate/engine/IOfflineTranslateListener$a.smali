.class public abstract Lcom/coloros/translate/engine/IOfflineTranslateListener$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/IOfflineTranslateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static bridge synthetic a(Landroid/os/Parcel;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/engine/IOfflineTranslateListener$a;->b(Landroid/os/Parcel;Ljava/util/List;I)V

    return-void
.end method

.method private static b(Landroid/os/Parcel;Ljava/util/List;I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-static {p0, v2, p2}, Lcom/coloros/translate/engine/IOfflineTranslateListener$a;->c(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static c(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
