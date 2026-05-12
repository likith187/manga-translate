.class Landroidx/viewpager2/widget/ViewPager2$l;
.super Landroidx/recyclerview/widget/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$l;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/u;-><init>()V

    return-void
.end method


# virtual methods
.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$l;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method
