.class public final Lcom/coloros/translate/engine/info/AsrResult$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/info/AsrResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coloros/translate/engine/info/AsrResult$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/coloros/translate/engine/info/AsrResult;
    .locals 7

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/engine/info/AsrResult;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/coloros/translate/engine/info/AsrResult;-><init>(Ljava/lang/String;IILandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/AsrResult;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/AsrResult;->f(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/AsrResult;->g(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrResult;->e(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public b(I)[Lcom/coloros/translate/engine/info/AsrResult;
    .locals 0

    new-array p0, p1, [Lcom/coloros/translate/engine/info/AsrResult;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrResult$a;->a(Landroid/os/Parcel;)Lcom/coloros/translate/engine/info/AsrResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrResult$a;->b(I)[Lcom/coloros/translate/engine/info/AsrResult;

    move-result-object p0

    return-object p0
.end method
