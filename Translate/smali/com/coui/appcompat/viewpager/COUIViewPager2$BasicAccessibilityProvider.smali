.class Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;
.super Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BasicAccessibilityProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/viewpager/COUIViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public handlesLmPerformAccessibilityAction(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->isUserInputEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handlesRvGetAccessibilityClassName()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLmInitializeAccessibilityNodeInfo(Ld0/h;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->isUserInputEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ld0/h$a;->r:Ld0/h$a;

    invoke-virtual {p1, p0}, Ld0/h;->a0(Ld0/h$a;)Z

    sget-object p0, Ld0/h$a;->q:Ld0/h$a;

    invoke-virtual {p1, p0}, Ld0/h;->a0(Ld0/h$a;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ld0/h;->C0(Z)V

    :cond_0
    return-void
.end method

.method public onLmPerformAccessibilityAction(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->handlesLmPerformAccessibilityAction(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public onRvGetAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->handlesRvGetAccessibilityClassName()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
