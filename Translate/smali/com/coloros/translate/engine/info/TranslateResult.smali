.class public final Lcom/coloros/translate/engine/info/TranslateResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/info/TranslateResult$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/coloros/translate/engine/info/TranslateResult$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/info/TranslateResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/info/TranslateResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/info/TranslateResult;->CREATOR:Lcom/coloros/translate/engine/info/TranslateResult$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "explainList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/coloros/translate/engine/info/TranslateResult;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/coloros/translate/engine/info/TranslateResult;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/coloros/translate/engine/info/TranslateResult;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/coloros/translate/engine/info/TranslateResult;->f:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/coloros/translate/engine/info/TranslateResult;->h:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Lcom/coloros/translate/engine/info/TranslateResult;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    .line 8
    const-string v0, ""

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 9
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 10
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    .line 11
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/coloros/translate/engine/info/TranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TranslateResult;->h:Ljava/util/List;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TranslateResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TranslateResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TranslateResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/info/TranslateResult;->f:Ljava/util/List;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/TranslateResult;->i:Z

    return p0
.end method

.method public final g(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TranslateResult;->h:Ljava/util/List;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TranslateResult;->b:Ljava/lang/String;

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/info/TranslateResult;->i:Z

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TranslateResult;->a:Ljava/lang/String;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TranslateResult;->c:Ljava/lang/String;

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/info/TranslateResult;->f:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TranslateResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TranslateResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TranslateResult;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TranslateResult;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/info/TranslateResult;->h:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p0, p0, Lcom/coloros/translate/engine/info/TranslateResult;->i:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
