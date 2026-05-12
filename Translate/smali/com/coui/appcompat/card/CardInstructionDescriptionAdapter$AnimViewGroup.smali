.class public final Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimViewGroup"
.end annotation


# instance fields
.field private final animTitle:Landroid/widget/TextView;

.field private final animView:Lcom/oplus/anim/EffectiveAnimationView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/support/card/R$layout;->coui_component_card_instruction_anim:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->rootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/support/card/R$id;->anim_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    sget v0, Lcom/support/card/R$id;->anim_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/coui/appcompat/card/AnimDisplayInfo;I)V
    .locals 2

    const-string v0, "displayInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animTitle:Landroid/widget/TextView;

    const-string v1, "animTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    .line 15
    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 16
    sget-object p2, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;->Companion:Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimHeight()I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;->access$getAnimViewLayoutParam(Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;Landroid/view/ViewGroup$LayoutParams;II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 20
    sget-object p2, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;->Companion:Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimHeight()I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;->access$getAnimViewLayoutParam(Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;Landroid/view/ViewGroup$LayoutParams;II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final bind(Lcom/coui/appcompat/card/ImageDisplayInfo;I)V
    .locals 2

    const-string v0, "displayInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animTitle:Landroid/widget/TextView;

    const-string v1, "animTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/ImageDisplayInfo;->getImageResources()[Ljava/lang/Integer;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setImageResource(I)V

    .line 6
    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 7
    sget-object p2, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;->Companion:Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimHeight()I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;->access$getAnimViewLayoutParam(Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;Landroid/view/ViewGroup$LayoutParams;II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getAnimTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getAnimView()Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public final getRootView()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
