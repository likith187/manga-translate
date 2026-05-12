.class public final Lcom/coloros/translate/engine/info/AsrTranslateResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/info/AsrTranslateResult$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/coloros/translate/engine/info/AsrTranslateResult$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/info/AsrTranslateResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/info/AsrTranslateResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->CREATOR:Lcom/coloros/translate/engine/info/AsrTranslateResult$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "translateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->b:I

    .line 4
    iput p3, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c:I

    .line 5
    iput-object p4, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->f:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 6
    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, -0x1

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 7
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 8
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/info/AsrTranslateResult;-><init>(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->b:I

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c:I

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->f:Landroid/os/Bundle;

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->b:I

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a:Ljava/lang/String;

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/coloros/translate/engine/info/AsrTranslateResult;->f:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
