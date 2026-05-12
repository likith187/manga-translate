.class Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID:I = 0x0

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForInputText(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_2

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_3

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1600(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/graphics/Rect;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p0, p2, v3

    aget p1, p2, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private createAccessibilityNodeInfoForNumberPicker(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1600(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/graphics/Rect;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p3, p2, v2

    aget p2, p2, v1

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p1, v3, :cond_4

    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, v3, :cond_5

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_7

    :cond_6
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_7
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result p0

    if-le p1, p0, :cond_9

    :cond_8
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_9
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p3, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1600(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p4, p3, v2

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_2

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_3

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p2

    sub-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private getVirtualText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$800(Lcom/coui/appcompat/picker/COUINumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$900(Lcom/coui/appcompat/picker/COUINumberPicker;I)I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1000(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1100(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1200(Lcom/coui/appcompat/picker/COUINumberPicker;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1300(Lcom/coui/appcompat/picker/COUINumberPicker;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1200(Lcom/coui/appcompat/picker/COUINumberPicker;)[Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1100(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p0

    sub-int/2addr p1, p0

    aget-object p0, v0, p1

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1500(Lcom/coui/appcompat/picker/COUINumberPicker;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1500(Lcom/coui/appcompat/picker/COUINumberPicker;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p0, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v5, p1, v0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v6

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v4, p1, v0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForInputText(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v4

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v5, p1, v0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, p1, v0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v4, p1, v0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_2
    invoke-direct {p0, v0, v3, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v4, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v5, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    const v1, 0x8000

    const/high16 v2, 0x10000

    const/high16 v3, -0x80000000

    const/16 v4, 0x80

    const/16 v5, 0x40

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v0, :cond_18

    const/16 v0, 0x10

    if-eq p1, v6, :cond_11

    const/4 v8, 0x2

    if-eq p1, v8, :cond_8

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v0, :cond_5

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_1

    return v7

    :cond_1
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p0

    invoke-virtual {p1, v7, v7, p2, p0}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_2
    return v7

    :cond_3
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p0

    invoke-virtual {p1, v7, v7, p2, p0}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_4
    return v7

    :cond_5
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    if-ne p1, v6, :cond_6

    move v7, v6

    :cond_6
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p2, v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$500(Lcom/coui/appcompat/picker/COUINumberPicker;Z)V

    invoke-virtual {p0, p1, v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_7
    return v7

    :cond_8
    if-eq p2, v0, :cond_f

    const/16 p3, 0x20

    if-eq p2, p3, :cond_d

    if-eq p2, v5, :cond_b

    if-eq p2, v4, :cond_9

    return v7

    :cond_9
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_a
    return v7

    :cond_b
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p0

    invoke-virtual {p1, v7, v7, p2, p0}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_c
    return v7

    :cond_d
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    return v6

    :cond_e
    return v7

    :cond_f
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return v6

    :cond_10
    return v7

    :cond_11
    if-eq p2, v0, :cond_16

    if-eq p2, v5, :cond_14

    if-eq p2, v4, :cond_12

    return v7

    :cond_12
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_13

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, v7, p2, p3, p0}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_13
    return v7

    :cond_14
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_15

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, v7, p2, p3, p0}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_15
    return v7

    :cond_16
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p2, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$500(Lcom/coui/appcompat/picker/COUINumberPicker;Z)V

    invoke-virtual {p0, p1, v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_17
    return v7

    :cond_18
    if-eq p2, v5, :cond_1f

    if-eq p2, v4, :cond_1d

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_1b

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_19

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_19
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0, v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$500(Lcom/coui/appcompat/picker/COUINumberPicker;Z)V

    return v6

    :cond_1a
    return v7

    :cond_1b
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$500(Lcom/coui/appcompat/picker/COUINumberPicker;Z)V

    return v6

    :cond_1c
    return v7

    :cond_1d
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1e

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v6

    :cond_1e
    return v7

    :cond_1f
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_20

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v6

    :cond_20
    return v7
.end method

.method sendAccessibilityEventForVirtualView(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->getVirtualText(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
