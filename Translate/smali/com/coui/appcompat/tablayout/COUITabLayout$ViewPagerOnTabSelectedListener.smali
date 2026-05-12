.class public Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 0

    return-void
.end method
