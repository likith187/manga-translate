.class Lcom/coui/appcompat/preference/COUIMarkPreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIMarkPreference;->onBindViewHolder(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIMarkPreference;

.field final synthetic val$checkableView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIMarkPreference;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMarkPreference;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference$1;->val$checkableView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMarkPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$string;->coui_accessibility_select:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference$1;->val$checkableView:Landroid/view/View;

    instance-of p1, p0, Landroid/widget/Checkable;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_0
    return-void
.end method
