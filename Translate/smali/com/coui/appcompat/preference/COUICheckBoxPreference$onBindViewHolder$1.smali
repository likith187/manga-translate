.class public final Lcom/coui/appcompat/preference/COUICheckBoxPreference$onBindViewHolder$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUICheckBoxPreference;->onBindViewHolder(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUICheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUICheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference$onBindViewHolder$1;->this$0:Lcom/coui/appcompat/preference/COUICheckBoxPreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference$onBindViewHolder$1;->this$0:Lcom/coui/appcompat/preference/COUICheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$string;->coui_accessibility_switch:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStr\u2026oui_accessibility_switch)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference$onBindViewHolder$1;->this$0:Lcom/coui/appcompat/preference/COUICheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->coui_accessibility_select_all:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr\u2026accessibility_select_all)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference$onBindViewHolder$1;->this$0:Lcom/coui/appcompat/preference/COUICheckBoxPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->access$getMCheckBox$p(Lcom/coui/appcompat/preference/COUICheckBoxPreference;)Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move-object p1, v0

    :cond_0
    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
