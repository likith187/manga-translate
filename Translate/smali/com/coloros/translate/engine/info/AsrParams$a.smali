.class public final Lcom/coloros/translate/engine/info/AsrParams$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/info/AsrParams;
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
    invoke-direct {p0}, Lcom/coloros/translate/engine/info/AsrParams$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/coloros/translate/engine/info/AsrParams;
    .locals 0

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/engine/info/AsrParams;

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/info/AsrParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/coloros/translate/engine/info/AsrParams;
    .locals 0

    new-array p0, p1, [Lcom/coloros/translate/engine/info/AsrParams;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrParams$a;->a(Landroid/os/Parcel;)Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrParams$a;->b(I)[Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object p0

    return-object p0
.end method
