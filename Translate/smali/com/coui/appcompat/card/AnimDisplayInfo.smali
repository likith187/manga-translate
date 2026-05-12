.class public final Lcom/coui/appcompat/card/AnimDisplayInfo;
.super Lcom/coui/appcompat/card/BaseDisplayInfo;
.source "SourceFile"


# instance fields
.field private final animAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final animResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/card/BaseDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    .line 2
    const-string v0, ""

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "animResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 15
    iget-object p0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    .line 12
    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "animResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animTitles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, ""

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 20
    invoke-virtual {p0}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;[Ljava/lang/String;I)V
    .locals 1

    const-string v0, "animResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, ""

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/card/BaseDisplayInfo;->setChoices([Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/card/BaseDisplayInfo;->setSelectedIndex(I)V

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Integer;[Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>([Ljava/lang/Integer;[Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "animAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 28
    iget-object p2, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 29
    iget-object p0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    .line 26
    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>([Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "animAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animTitles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-string v0, ""

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p0}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 25
    invoke-virtual {p0}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const-string v0, "animAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v0, ""

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/card/BaseDisplayInfo;->setChoices([Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/card/BaseDisplayInfo;->setSelectedIndex(I)V

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;[Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/AnimDisplayInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getAnimAssets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animAssets:Ljava/util/List;

    return-object p0
.end method

.method public final getAnimResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/AnimDisplayInfo;->animResources:Ljava/util/List;

    return-object p0
.end method
