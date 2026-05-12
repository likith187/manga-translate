.class Lcom/coui/appcompat/viewpager/COUIViewPager2$2;
.super Landroidx/viewpager2/widget/ViewPager2$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->updateCurrentItem()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mCurrentItem:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mCurrentItem:I

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mAccessibilityProvider:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->onSetNewCurrentItem()V

    :cond_0
    return-void
.end method
