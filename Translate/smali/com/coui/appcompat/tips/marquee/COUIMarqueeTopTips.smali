.class public Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;
.super Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;
.source "SourceFile"


# instance fields
.field private mCOUIDefaultTopTipsView:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected generateView()Lcom/coui/appcompat/tips/def/IDefaultTopTips;
    .locals 1

    invoke-super {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->generateView()Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    iput-object v0, p0, Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;->mCOUIDefaultTopTipsView:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    return-object v0
.end method

.method public startRoll()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;->mCOUIDefaultTopTipsView:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->startRoll()V

    return-void
.end method

.method public stopRoll()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;->mCOUIDefaultTopTipsView:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->stopRoll()V

    return-void
.end method
