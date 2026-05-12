.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->scheduleGracePeriodEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$4;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$4;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mIsInGracePeriod:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->gcFragments()V

    return-void
.end method
