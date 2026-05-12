.class Lcom/oplus/compat/media/MediaRouterInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/media/MediaRouterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oplus/compat/media/MediaRouterInfo;
    .locals 0

    new-instance p0, Lcom/oplus/compat/media/MediaRouterInfo;

    invoke-direct {p0, p1}, Lcom/oplus/compat/media/MediaRouterInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/oplus/compat/media/MediaRouterInfo;
    .locals 0

    new-array p0, p1, [Lcom/oplus/compat/media/MediaRouterInfo;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/compat/media/MediaRouterInfo$a;->a(Landroid/os/Parcel;)Lcom/oplus/compat/media/MediaRouterInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/compat/media/MediaRouterInfo$a;->b(I)[Lcom/oplus/compat/media/MediaRouterInfo;

    move-result-object p0

    return-object p0
.end method
