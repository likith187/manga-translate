.class public final Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selector"
.end annotation


# instance fields
.field private final animView:Lcom/oplus/anim/EffectiveAnimationView;

.field private final radio:Landroid/widget/RadioButton;

.field private final rootView:Landroid/view/View;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/support/card/R$layout;->coui_component_card_instruction_selector:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(\n            con\u2026_selector, null\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->rootView:Landroid/view/View;

    sget v0, Lcom/support/card/R$id;->anim_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rootView.findViewById(R.id.anim_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    sget v0, Lcom/support/card/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rootView.findViewById(R.id.title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->title:Landroid/widget/TextView;

    sget v0, Lcom/support/card/R$id;->radio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "rootView.findViewById(R.id.radio)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->radio:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final getAnimView()Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public final getRadio()Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->radio:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setAnimViewSize(II)V
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->animView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
