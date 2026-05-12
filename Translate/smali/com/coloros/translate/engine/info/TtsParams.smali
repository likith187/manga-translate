.class public final Lcom/coloros/translate/engine/info/TtsParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/info/TtsParams$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/coloros/translate/engine/info/TtsParams$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private f:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/info/TtsParams$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/info/TtsParams$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/info/TtsParams;->CREATOR:Lcom/coloros/translate/engine/info/TtsParams$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)V
    .locals 1

    const-string v0, "voice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/coloros/translate/engine/info/TtsParams;->c:I

    .line 5
    iput p4, p0, Lcom/coloros/translate/engine/info/TtsParams;->f:I

    .line 6
    iput p5, p0, Lcom/coloros/translate/engine/info/TtsParams;->h:I

    .line 7
    iput-object p6, p0, Lcom/coloros/translate/engine/info/TtsParams;->i:Ljava/lang/String;

    .line 8
    iput p7, p0, Lcom/coloros/translate/engine/info/TtsParams;->j:I

    .line 9
    iput-boolean p8, p0, Lcom/coloros/translate/engine/info/TtsParams;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    .line 10
    const-string v0, ""

    if-eqz p10, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    const/16 p3, 0x32

    :cond_2
    and-int/lit8 p10, p9, 0x8

    const/4 v0, 0x0

    if-eqz p10, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 11
    const-string p6, "pcm"

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    const/16 p7, 0x3e80

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    const/4 p8, 0x1

    .line 12
    :cond_7
    invoke-direct/range {p0 .. p8}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TtsParams;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TtsParams;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TtsParams;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/TtsParams;->k:Z

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->k:Z

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->i:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->b:Ljava/lang/String;

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->f:I

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->j:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->h:I

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->a:Ljava/lang/String;

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/info/TtsParams;->c:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/translate/engine/info/TtsParams;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/TtsParams;->k:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
