.class public Landroidx/core/view/insets/ProtectionLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Landroidx/core/view/insets/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/view/insets/ProtectionLayout;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/view/insets/ProtectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/core/view/insets/ProtectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;ILf0/a;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->getOrInstallSystemBarStateMonitor()Landroidx/core/view/insets/d;

    move-result-object v0

    new-instance v1, Landroidx/core/view/insets/a;

    iget-object v2, p0, Landroidx/core/view/insets/ProtectionLayout;->a:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Landroidx/core/view/insets/a;-><init>(Landroidx/core/view/insets/d;Ljava/util/List;)V

    iput-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    invoke-virtual {v1}, Landroidx/core/view/insets/a;->h()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    invoke-virtual {v3, v2}, Landroidx/core/view/insets/a;->g(I)Lf0/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    add-int v4, v2, v0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Landroidx/core/view/insets/ProtectionLayout;->a(Landroid/content/Context;ILf0/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    sget v0, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/core/view/insets/d;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroidx/core/view/insets/d;

    invoke-virtual {v0}, Landroidx/core/view/insets/d;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/core/view/insets/d;->h()V

    sget v0, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    invoke-virtual {v1}, Landroidx/core/view/insets/a;->h()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    invoke-virtual {v1}, Landroidx/core/view/insets/a;->h()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    invoke-virtual {v0}, Landroidx/core/view/insets/a;->h()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    invoke-virtual {v0}, Landroidx/core/view/insets/a;->f()V

    iput-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/insets/a;->g(I)Lf0/a;

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private getOrInstallSystemBarStateMonitor()Landroidx/core/view/insets/d;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    sget v0, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/core/view/insets/d;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/view/insets/d;

    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/view/insets/d;

    invoke-direct {v0, p0}, Landroidx/core/view/insets/d;-><init>(Landroid/view/ViewGroup;)V

    sget v1, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/core/view/insets/ProtectionLayout;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/insets/a;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_1

    if-gez p2, :cond_2

    :cond_1
    move p2, v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->b:Landroidx/core/view/insets/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->d()V

    :cond_0
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->b()V

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->d()V

    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->c()V

    return-void
.end method

.method public setProtections(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf0/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->d()V

    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->b()V

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method
