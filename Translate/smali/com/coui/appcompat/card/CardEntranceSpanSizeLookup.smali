.class public final Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup$Companion;

.field public static final SPAN_COUNT_CARD_TYPE_LARGE:I = 0x2

.field public static final SPAN_COUNT_CARD_TYPE_SMALL:I = 0x1


# instance fields
.field private adapter:Landroidx/preference/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;->Companion:Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;-><init>(Landroidx/preference/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/h;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;->adapter:Landroidx/preference/h;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/preference/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;-><init>(Landroidx/preference/h;)V

    return-void
.end method


# virtual methods
.method public final getAdapter()Landroidx/preference/h;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;->adapter:Landroidx/preference/h;

    return-object p0
.end method

.method public getSpanSize(I)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;->adapter:Landroidx/preference/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p1, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    check-cast p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;

    invoke-virtual {p0}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->getCardType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    if-eq p0, v0, :cond_2

    :cond_1
    move v0, p1

    :cond_2
    return v0
.end method

.method public final setAdapter(Landroidx/preference/h;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/card/CardEntranceSpanSizeLookup;->adapter:Landroidx/preference/h;

    return-void
.end method
