.class public final Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/card/COUICardInstructionPreference;->setPagerCallback(Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/indicator/COUIPageIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

.field final synthetic this$0:Lcom/coui/appcompat/card/COUICardInstructionPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;Lcom/coui/appcompat/card/COUICardInstructionPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;->$indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput-object p2, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;->this$0:Lcom/coui/appcompat/card/COUICardInstructionPreference;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$i;->onPageScrollStateChanged(I)V

    iget-object p0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;->$indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$i;->onPageScrolled(IFI)V

    iget-object p0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;->$indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$i;->onPageSelected(I)V

    iget-object v0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;->$indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->onPageSelected(I)V

    iget-object p0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;->this$0:Lcom/coui/appcompat/card/COUICardInstructionPreference;

    invoke-static {p0, p1}, Lcom/coui/appcompat/card/COUICardInstructionPreference;->access$setLastPagerItem$p(Lcom/coui/appcompat/card/COUICardInstructionPreference;I)V

    return-void
.end method
