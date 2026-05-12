.class public final synthetic Lcom/coui/appcompat/card/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;

.field public final synthetic b:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

.field public final synthetic c:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/d;->a:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;

    iput-object p2, p0, Lcom/coui/appcompat/card/d;->b:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    iput-object p3, p0, Lcom/coui/appcompat/card/d;->c:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/card/d;->a:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;

    iget-object v1, p0, Lcom/coui/appcompat/card/d;->b:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    iget-object p0, p0, Lcom/coui/appcompat/card/d;->c:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    invoke-static {v0, v1, p0, p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->c(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;Landroid/view/View;)V

    return-void
.end method
