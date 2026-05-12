.class Lcom/coui/appcompat/viewpager/COUIViewPager2$1;
.super Lcom/coui/appcompat/viewpager/COUIViewPager2$DataSetChangeObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
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

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$DataSetChangeObserver;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mCurrentItemDirty:Z

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mScrollEventAdapter:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->notifyDataSetChangeHappened()V

    return-void
.end method
