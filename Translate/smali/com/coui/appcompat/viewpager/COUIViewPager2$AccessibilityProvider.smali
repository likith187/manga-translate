.class abstract Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AccessibilityProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/viewpager/COUIViewPager2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    return-void
.end method


# virtual methods
.method handlesGetAccessibilityClassName()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method handlesLmPerformAccessibilityAction(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method handlesRvGetAccessibilityClassName()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onAttachAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$h;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method onDetachAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$h;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method onGetAccessibilityClassName()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onInitialize(Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    return-void
.end method

.method onLmInitializeAccessibilityNodeInfo(Ld0/h;)V
    .locals 0

    return-void
.end method

.method onLmPerformAccessibilityAction(I)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onRestorePendingState()V
    .locals 0

    return-void
.end method

.method onRvGetAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onRvInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method onSetLayoutDirection()V
    .locals 0

    return-void
.end method

.method onSetNewCurrentItem()V
    .locals 0

    return-void
.end method

.method onSetOrientation()V
    .locals 0

    return-void
.end method

.method onSetUserInputEnabled()V
    .locals 0

    return-void
.end method
