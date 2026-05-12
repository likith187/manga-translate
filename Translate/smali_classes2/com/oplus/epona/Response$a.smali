.class Lcom/oplus/epona/Response$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/Response;
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
.method public a(Landroid/os/Parcel;)Lcom/oplus/epona/Response;
    .locals 1

    new-instance p0, Lcom/oplus/epona/Response;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/epona/Response;-><init>(Landroid/os/Parcel;Lcom/oplus/epona/Response$a;)V

    return-object p0
.end method

.method public b(I)[Lcom/oplus/epona/Response;
    .locals 0

    new-array p0, p1, [Lcom/oplus/epona/Response;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/epona/Response$a;->a(Landroid/os/Parcel;)Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/epona/Response$a;->b(I)[Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0
.end method
