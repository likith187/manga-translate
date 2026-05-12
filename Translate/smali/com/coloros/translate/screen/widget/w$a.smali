.class public final Lcom/coloros/translate/screen/widget/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/w$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/w$a;-><init>()V

    return-void
.end method

.method private final a(Lcom/coloros/translate/screen/widget/w$b;)Landroid/graphics/Rect;
    .locals 1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/coloros/translate/screen/widget/w$b;->FULL:Lcom/coloros/translate/screen/widget/w$b;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/screen/utils/w;->b(Landroid/graphics/Rect;)V

    :cond_1
    return-object p0
.end method

.method private final b()Ljava/util/List;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/utils/w;->INSTANCE:Lcom/coloros/translate/screen/utils/w;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/w;->c()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->getSplitAreaRegion()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p0

    :catchall_0
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private final c(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final d(Landroid/content/Context;Lt2/b$b;Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    if-lez p0, :cond_3

    if-lez v0, :cond_3

    :try_start_0
    sget-object v2, Lcom/coloros/translate/screen/widget/w$a$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    new-instance p2, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-direct {p2, p1, p0, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    const/16 p0, 0x8

    invoke-static {p2, p0, v1, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ)F

    move-result p0

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_1
    new-instance p2, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-direct {p2, p1, p0, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    const/4 p0, 0x6

    invoke-static {p2, p0, v1, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ)F

    move-result p0

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p0

    :catch_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public static synthetic f(Lcom/coloros/translate/screen/widget/w$a;Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;ILjava/lang/Object;)Lcom/coloros/translate/screen/widget/w;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/w$a;->e(Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;)Lcom/coloros/translate/screen/widget/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/coloros/translate/screen/widget/w$a;Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;ILjava/lang/Object;)Lcom/coloros/translate/screen/widget/w;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/w$a;->g(Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;)Lcom/coloros/translate/screen/widget/w;

    move-result-object p0

    return-object p0
.end method

.method private final i(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "com.android.internal.R$dimen"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "docked_stack_divider_thickness"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSplitGap fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTranslationFullParams"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final e(Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;)Lcom/coloros/translate/screen/widget/w;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/w$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/coloros/translate/screen/widget/w$a;->a(Lcom/coloros/translate/screen/widget/w$b;)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/w$a;->i(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/w$a;->c(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_15

    if-eqz p2, :cond_d

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->FULL:Lcom/coloros/translate/screen/widget/w$b;

    if-ne p2, v9, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/widget/w$a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v6, :cond_12

    const-string v0, "Collection contains no element matching the predicate."

    if-eq p2, v7, :cond_a

    const/4 v6, 0x3

    if-eq p2, v6, :cond_7

    const/4 v6, 0x4

    if-eq p2, v6, :cond_4

    const/4 v5, 0x5

    if-ne p2, v5, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->BOTTOM:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->top:I

    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-eqz v6, :cond_5

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->RIGHT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->top:I

    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v5

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_8

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->TOP:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_b

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->LEFT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->top:I

    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v5

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    aget v0, v0, v8

    if-ne p2, v0, :cond_10

    iget p2, v3, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_f

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result v0

    if-gt p2, v0, :cond_e

    goto :goto_1

    :cond_e
    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->BOTTOM:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_f
    :goto_1
    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->TOP:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_10
    iget p2, v3, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_11

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->LEFT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->top:I

    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v5

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_11
    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->RIGHT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->top:I

    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v5

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    :cond_12
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v0

    const/high16 v0, 0x44160000    # 600.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    sget-object p2, Lt2/b$b;->SMALL:Lt2/b$b;

    goto :goto_3

    :cond_13
    const/high16 v0, 0x44520000    # 840.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_14

    sget-object p2, Lt2/b$b;->MEDIUM:Lt2/b$b;

    goto :goto_3

    :cond_14
    sget-object p2, Lt2/b$b;->LARGE:Lt2/b$b;

    :goto_3
    move-object v8, v9

    goto :goto_4

    :cond_15
    sget-object p2, Lcom/coloros/translate/screen/widget/w$b;->FULL:Lcom/coloros/translate/screen/widget/w$b;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result v1

    aget v2, v0, v8

    aget v9, v0, v6

    sub-int/2addr v9, v5

    invoke-virtual {v3, v8, v1, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    aget v1, v0, v8

    aget v0, v0, v6

    invoke-virtual {v4, v8, v8, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/coloros/translate/screen/utils/g;->c()Lt2/b$b;

    move-result-object v0

    move-object v8, p2

    move-object p2, v0

    :goto_4
    invoke-direct {p0, p1, p2, v3}, Lcom/coloros/translate/screen/widget/w$a;->d(Landroid/content/Context;Lt2/b$b;Landroid/graphics/Rect;)I

    move-result v5

    iget p0, v3, Landroid/graphics/Rect;->left:I

    sget-object p1, Lcom/coloros/translate/screen/widget/w$b;->RIGHT:Lcom/coloros/translate/screen/widget/w$b;

    if-ne v8, p1, :cond_16

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, v5

    div-int/2addr p1, v7

    add-int/2addr p1, p0

    :goto_5
    move v6, p1

    goto :goto_6

    :cond_16
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, v5

    div-int/2addr p1, v7

    goto :goto_5

    :goto_6
    new-instance p1, Lcom/coloros/translate/screen/widget/w;

    const/4 v9, 0x0

    move-object v2, p1

    move v7, p0

    invoke-direct/range {v2 .. v9}, Lcom/coloros/translate/screen/widget/w;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILcom/coloros/translate/screen/widget/w$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final g(Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;)Lcom/coloros/translate/screen/widget/w;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/w$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/coloros/translate/screen/widget/w$a;->a(Lcom/coloros/translate/screen/widget/w$b;)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/w$a;->i(Landroid/content/Context;)I

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_15

    if-eqz p2, :cond_d

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->FULL:Lcom/coloros/translate/screen/widget/w$b;

    if-ne p2, v9, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/widget/w$a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v6, :cond_12

    const-string v0, "Collection contains no element matching the predicate."

    if-eq p2, v7, :cond_a

    const/4 v6, 0x3

    if-eq p2, v6, :cond_7

    if-eq p2, v5, :cond_4

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->BOTTOM:Lcom/coloros/translate/screen/widget/w$b;

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-eqz v6, :cond_5

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->RIGHT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_8

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->TOP:Lcom/coloros/translate/screen/widget/w$b;

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_b

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->LEFT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    aget v0, v0, v8

    if-ne p2, v0, :cond_10

    iget p2, v3, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_f

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result v0

    if-gt p2, v0, :cond_e

    goto :goto_1

    :cond_e
    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->BOTTOM:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_f
    :goto_1
    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->TOP:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_10
    iget p2, v3, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_11

    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->LEFT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_11
    sget-object v9, Lcom/coloros/translate/screen/widget/w$b;->RIGHT:Lcom/coloros/translate/screen/widget/w$b;

    iget p2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iput p2, v4, Landroid/graphics/Rect;->left:I

    :cond_12
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v0

    const/high16 v0, 0x44160000    # 600.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    sget-object p2, Lt2/b$b;->SMALL:Lt2/b$b;

    goto :goto_3

    :cond_13
    const/high16 v0, 0x44520000    # 840.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_14

    sget-object p2, Lt2/b$b;->MEDIUM:Lt2/b$b;

    goto :goto_3

    :cond_14
    sget-object p2, Lt2/b$b;->LARGE:Lt2/b$b;

    goto :goto_3

    :cond_15
    sget-object p2, Lcom/coloros/translate/screen/widget/w$b;->FULL:Lcom/coloros/translate/screen/widget/w$b;

    aget v1, v0, v8

    aget v2, v0, v6

    invoke-virtual {v3, v8, v8, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    aget v1, v0, v8

    aget v0, v0, v6

    invoke-virtual {v4, v8, v8, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/coloros/translate/screen/utils/g;->c()Lt2/b$b;

    move-result-object v0

    move-object v9, p2

    move-object p2, v0

    :goto_3
    invoke-direct {p0, p1, p2, v3}, Lcom/coloros/translate/screen/widget/w$a;->d(Landroid/content/Context;Lt2/b$b;Landroid/graphics/Rect;)I

    move-result p0

    sget-object p1, Lcom/coloros/translate/screen/widget/w$a$a;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-ne p1, v5, :cond_16

    iget p1, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p2, p0

    div-int/2addr p2, v7

    add-int/2addr p1, p2

    iget p2, v3, Landroid/graphics/Rect;->left:I

    move v6, p1

    move v7, p2

    goto :goto_4

    :cond_16
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p0

    div-int/2addr p1, v7

    move v6, p1

    move v7, v8

    :goto_4
    new-instance p1, Lcom/coloros/translate/screen/widget/w;

    const/4 p2, 0x0

    move-object v2, p1

    move v5, p0

    move-object v8, v9

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/coloros/translate/screen/widget/w;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILcom/coloros/translate/screen/widget/w$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final j()Z
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/w$a;->b()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
