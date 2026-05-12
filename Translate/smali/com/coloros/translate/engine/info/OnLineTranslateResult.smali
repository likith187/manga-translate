.class public final Lcom/coloros/translate/engine/info/OnLineTranslateResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->CREATOR:Lcom/coloros/translate/engine/info/OnLineTranslateResult$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;Z)V
    .locals 1

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "explainList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->i:Z

    .line 8
    iput p7, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j:I

    .line 9
    iput-object p8, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->k:Ljava/lang/String;

    .line 10
    iput-boolean p9, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->l:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x1

    .line 11
    const-string v0, ""

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 12
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 13
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    and-int/lit8 p11, p10, 0x20

    const/4 v1, 0x0

    if-eqz p11, :cond_5

    move p6, v1

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move p7, v1

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    const/4 p9, 0x1

    .line 14
    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j:I

    return p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f:Ljava/util/List;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->i:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->l:Z

    return p0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j:I

    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h:Ljava/util/List;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->b:Ljava/lang/String;

    return-void
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->i:Z

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a:Ljava/lang/String;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->k:Ljava/lang/String;

    return-void
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->l:Z

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c:Ljava/lang/String;

    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f:Ljava/util/List;

    return-void
.end method

.method public final r(Lcom/coloros/translate/engine/info/TranslateResult;)Lcom/coloros/translate/engine/info/OnLineTranslateResult;
    .locals 1

    const-string v0, "translateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/TranslateResult;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/TranslateResult;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/TranslateResult;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/TranslateResult;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/TranslateResult;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/TranslateResult;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->i:Z

    return-object p0
.end method

.method public final s()Lcom/coloros/translate/engine/info/TranslateResult;
    .locals 10

    new-instance v9, Lcom/coloros/translate/engine/info/TranslateResult;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/coloros/translate/engine/info/TranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/coloros/translate/engine/info/TranslateResult;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->b:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/coloros/translate/engine/info/TranslateResult;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/coloros/translate/engine/info/TranslateResult;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/coloros/translate/engine/info/TranslateResult;->n(Ljava/util/List;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/coloros/translate/engine/info/TranslateResult;->g(Ljava/util/List;)V

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->i:Z

    invoke-virtual {v9, p0}, Lcom/coloros/translate/engine/info/TranslateResult;->j(Z)V

    return-object v9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->l:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
