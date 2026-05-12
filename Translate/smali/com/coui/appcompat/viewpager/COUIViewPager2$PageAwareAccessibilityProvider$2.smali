.class Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;->this$1:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Ld0/k$a;)Z
    .locals 0

    check-cast p1, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;->this$1:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->setCurrentItemFromAccessibilityCommand(I)V

    return p2
.end method
