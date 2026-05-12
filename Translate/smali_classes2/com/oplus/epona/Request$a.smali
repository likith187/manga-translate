.class Lcom/oplus/epona/Request$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/Request;
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
.method public a(Landroid/os/Parcel;)Lcom/oplus/epona/Request;
    .locals 1

    new-instance p0, Lcom/oplus/epona/Request;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/epona/Request;-><init>(Landroid/os/Parcel;Lcom/oplus/epona/Request$a;)V

    return-object p0
.end method

.method public b(I)[Lcom/oplus/epona/Request;
    .locals 0

    new-array p0, p1, [Lcom/oplus/epona/Request;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/epona/Request$a;->a(Landroid/os/Parcel;)Lcom/oplus/epona/Request;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/epona/Request$a;->b(I)[Lcom/oplus/epona/Request;

    move-result-object p0

    return-object p0
.end method
