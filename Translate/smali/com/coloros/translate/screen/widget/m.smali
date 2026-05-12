.class public final Lcom/coloros/translate/screen/widget/m;
.super Landroidx/customview/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/m$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/coloros/translate/screen/widget/m$a;


# instance fields
.field private final a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field private final b:I

.field private final c:Ljava/util/Map;

.field private final f:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/widget/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/m;->h:Lcom/coloros/translate/screen/widget/m$a;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/m;->b:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/m;->c:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/m;->f:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/m;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v3, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n1(Landroid/view/View;)Ln8/q;

    move-result-object v3

    invoke-virtual {v3}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    cmpl-float v5, p2, v3

    if-lez v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    cmpl-float v3, p1, v4

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    return v2

    :cond_1
    iget p0, p0, Lcom/coloros/translate/screen/widget/m;->b:I

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/m;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateNodeForVirtualView(ILd0/h;)V
    .locals 7

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/m;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget p0, v1, p0

    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, p0

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    invoke-direct {v2, p0, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v2}, Ld0/h;->d0(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    sget-object p0, Ld0/h$a;->i:Ld0/h$a;

    invoke-virtual {p2, p0}, Ld0/h;->b(Ld0/h$a;)V

    invoke-virtual {p2, v3}, Ld0/h;->n0(Z)V

    invoke-virtual {p2, v3}, Ld0/h;->i0(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p2, p0}, Ld0/h;->n0(Z)V

    invoke-virtual {p2, p0}, Ld0/h;->i0(Z)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p0}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    const-string p0, ""

    invoke-virtual {p2, p0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/m;->f:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/m;->f:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/m;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final varargs v([Landroid/view/View;)V
    .locals 5

    const-string v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/m;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/m;->c:Ljava/util/Map;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
