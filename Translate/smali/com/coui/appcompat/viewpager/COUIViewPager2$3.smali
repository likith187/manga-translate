.class Lcom/coui/appcompat/viewpager/COUIViewPager2$3;
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

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mRecyclerView:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_0
    return-void
.end method
