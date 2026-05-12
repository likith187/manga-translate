.class public abstract Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;,
        Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HO",
        "LDER:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$h;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;

.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private final displayInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/card/BaseDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pagerLastHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->Companion:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/card/BaseDisplayInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object p0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getDisplayInfos$p(Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPagerLastHeight$p(Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->pagerLastHeight:I

    return p0
.end method

.method public static final synthetic access$setPagerLastHeight$p(Lcom/coui/appcompat/card/BaseCardInstructionAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->pagerLastHeight:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->onBindViewHolder(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THO",
            "LDER;",
            "I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/card/BaseDisplayInfo;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->bind(Lcom/coui/appcompat/card/BaseDisplayInfo;)V

    .line 3
    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->setMatchChildrenMaxHeight()V

    return-void
.end method

.method public final updateDisplayInfos(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coui/appcompat/card/BaseDisplayInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->displayInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->pagerLastHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
