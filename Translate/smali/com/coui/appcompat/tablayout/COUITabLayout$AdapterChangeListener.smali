.class Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V
    .locals 0

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->access$000(Lcom/coui/appcompat/tablayout/COUITabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->mAutoRefresh:Z

    invoke-virtual {p1, p3, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/a;Z)V

    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->mAutoRefresh:Z

    return-void
.end method
