.class public final Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/info/OnLineTranslateResult;
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
    invoke-direct {p0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/coloros/translate/engine/info/OnLineTranslateResult;
    .locals 12

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->p(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->q(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->l(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->g(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v3, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p0, v2}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->o(Z)V

    return-object p0
.end method

.method public b(I)[Lcom/coloros/translate/engine/info/OnLineTranslateResult;
    .locals 0

    new-array p0, p1, [Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;->a(Landroid/os/Parcel;)Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;->b(I)[Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    move-result-object p0

    return-object p0
.end method
