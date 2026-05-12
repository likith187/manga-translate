.class public final Lcom/coui/appcompat/card/ImageDisplayInfo;
.super Lcom/coui/appcompat/card/BaseDisplayInfo;
.source "SourceFile"


# instance fields
.field private final imageResources:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "imageResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/card/BaseDisplayInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/card/ImageDisplayInfo;->imageResources:[Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    .line 1
    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/ImageDisplayInfo;-><init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animTitles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, ""

    .line 8
    invoke-direct {p0, p1, v0, v0}, Lcom/coui/appcompat/card/ImageDisplayInfo;-><init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    invoke-virtual {p0}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "imageResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, ""

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lcom/coui/appcompat/card/ImageDisplayInfo;-><init>([Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/card/BaseDisplayInfo;->setChoices([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getImageResources()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/ImageDisplayInfo;->imageResources:[Ljava/lang/Integer;

    return-object p0
.end method
