.class public Lcom/coui/appcompat/card/BaseDisplayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animHeight:I

.field private final animTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private animWidth:I

.field private final choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedIndex:I

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->summary:Ljava/lang/CharSequence;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->choices:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->animTitles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAnimHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->animHeight:I

    return p0
.end method

.method public final getAnimTitles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->animTitles:Ljava/util/List;

    return-object p0
.end method

.method public final getAnimWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->animWidth:I

    return p0
.end method

.method public final getChoices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->choices:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedIndex()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->selectedIndex:I

    return p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->summary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setAnimHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->animHeight:I

    return-void
.end method

.method public final setAnimWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->animWidth:I

    return-void
.end method

.method public final setChoices([Ljava/lang/String;)V
    .locals 1

    const-string v0, "choices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->choices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->choices:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/collections/o;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final setSelectedChoice(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->selectedIndex:I

    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->selectedIndex:I

    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->summary:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/card/BaseDisplayInfo;->title:Ljava/lang/CharSequence;

    return-void
.end method
