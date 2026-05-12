.class public final Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;
.super Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;,
        Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;,
        Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
        "Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;->Companion:Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;-><init>(Ljava/util/List;)V

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

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    sget v0, Lcom/support/card/R$layout;->coui_component_card_instruction_description_page:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context)\n   \u2026      false\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;

    invoke-direct {p2, p0, p1, p0}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;-><init>(Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;Landroid/view/View;Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)V

    return-object p2
.end method
