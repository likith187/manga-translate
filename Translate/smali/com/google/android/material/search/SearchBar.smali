.class public Lcom/google/android/material/search/SearchBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchBar$SavedState;,
        Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;
    }
.end annotation


# static fields
.field private static final s:I


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Z

.field private final c:Z

.field private final f:Lcom/google/android/material/search/c;

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:Z

.field private final j:Z

.field private k:Landroid/view/View;

.field private l:Ljava/lang/Integer;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Z

.field private p:Lcom/google/android/material/shape/i;

.field private final q:Landroid/view/accessibility/AccessibilityManager;

.field private final r:Ld0/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SearchBar:I

    sput v0, Lcom/google/android/material/search/SearchBar;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialSearchBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 3
    sget v6, Lcom/google/android/material/search/SearchBar;->s:I

    invoke-static {p1, p2, p3, v6}, Lm4/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/material/search/SearchBar;->n:I

    .line 5
    new-instance v0, Lcom/google/android/material/search/b;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/b;-><init>(Lcom/google/android/material/search/SearchBar;)V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->r:Ld0/c$a;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBar;->x(Landroid/util/AttributeSet;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getDefaultNavigationIconResource()I

    move-result v0

    invoke-static {v7, v0}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->h:Landroid/graphics/drawable/Drawable;

    .line 9
    new-instance v0, Lcom/google/android/material/search/c;

    invoke-direct {v0}, Lcom/google/android/material/search/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->f:Lcom/google/android/material/search/c;

    .line 10
    sget-object v2, Lcom/google/android/material/R$styleable;->SearchBar:[I

    const/4 v8, 0x0

    new-array v5, v8, [I

    move-object v0, v7

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 12
    invoke-static {v7, p2, p3, v6}, Lcom/google/android/material/shape/n;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/n$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v2

    .line 13
    sget p2, Lcom/google/android/material/R$styleable;->SearchBar_backgroundTint:I

    invoke-virtual {v0, p2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 14
    sget p2, Lcom/google/android/material/R$styleable;->SearchBar_elevation:I

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 15
    sget p2, Lcom/google/android/material/R$styleable;->SearchBar_defaultMarginsEnabled:I

    const/4 p3, 0x1

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/search/SearchBar;->c:Z

    .line 16
    sget p2, Lcom/google/android/material/R$styleable;->SearchBar_defaultScrollFlagsEnabled:I

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/search/SearchBar;->o:Z

    .line 17
    sget p2, Lcom/google/android/material/R$styleable;->SearchBar_hideNavigationIcon:I

    invoke-virtual {v0, p2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 18
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_forceDefaultNavigationOnClickListener:I

    .line 19
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/search/SearchBar;->j:Z

    .line 20
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_tintNavigationIcon:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/search/SearchBar;->i:Z

    .line 21
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_navigationIconTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_navigationIconTint:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/search/SearchBar;->l:Ljava/lang/Integer;

    .line 23
    :cond_0
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_android_textAppearance:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 24
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    sget v5, Lcom/google/android/material/R$styleable;->SearchBar_android_hint:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    sget v6, Lcom/google/android/material/R$styleable;->SearchBar_strokeWidth:I

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 27
    sget v9, Lcom/google/android/material/R$styleable;->SearchBar_strokeColor:I

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez p2, :cond_1

    .line 29
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->m()V

    .line 30
    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    .line 31
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 32
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$layout;->mtrl_search_bar:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    iput-boolean p3, p0, Lcom/google/android/material/search/SearchBar;->b:Z

    .line 34
    sget p2, Lcom/google/android/material/R$id;->open_search_bar_text_view:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    .line 35
    invoke-static {p0, v4}, Landroidx/core/view/m0;->r0(Landroid/view/View;F)V

    .line 36
    invoke-direct {p0, p1, v1, v5}, Lcom/google/android/material/search/SearchBar;->n(ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move v5, v6

    move v6, v8

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/search/SearchBar;->l(Lcom/google/android/material/shape/n;IFFI)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/search/SearchBar;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 39
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->v()V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/material/search/SearchBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBar;->o(Z)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/search/SearchBar;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->q:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/search/SearchBar;)Ld0/c$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->r:Ld0/c$a;

    return-object p0
.end method

.method private k(II)I
    .locals 0

    if-nez p1, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method private l(Lcom/google/android/material/shape/n;IFFI)V
    .locals 1

    new-instance v0, Lcom/google/android/material/shape/i;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-virtual {p1, p3}, Lcom/google/android/material/shape/i;->setElevation(F)V

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-virtual {p1, p4, p5}, Lcom/google/android/material/shape/i;->setStroke(FI)V

    :cond_0
    sget p1, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {p0, p1}, Lb4/a;->d(Landroid/view/View;I)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-direct {p2, p1, p3, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, p2}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private m()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBar;->setNavigationIconDecorative(Z)V

    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->i:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->h:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    sget v0, Lcom/google/android/material/R$attr;->colorOnSurfaceVariant:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/google/android/material/R$attr;->colorOnSurface:I

    :goto_0
    invoke-static {p0, v0}, Lb4/a;->d(Landroid/view/View;I)I

    move-result p0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p0}, Lv/a;->n(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    :goto_2
    return-object p1
.end method

.method private n(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/j;->o(Landroid/widget/TextView;I)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchBar;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/search/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/google/android/material/R$dimen;->m3_searchbar_text_margin_start_no_navigation_icon:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/m;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    :cond_1
    return-void
.end method

.method private synthetic o(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private p()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int v5, v1, v2

    add-int v7, v5, v0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int v6, v1, v2

    add-int v8, v6, v0

    iget-object v4, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/search/SearchBar;->q(Landroid/view/View;IIII)V

    return-void
.end method

.method private q(Landroid/view/View;IIII)V
    .locals 2

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-virtual {p1, v0, p3, p0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method private r(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_searchbar_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getDefaultMarginVerticalResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0, v3, v1}, Lcom/google/android/material/search/SearchBar;->k(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v3, v0}, Lcom/google/android/material/search/SearchBar;->k(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0, v3, v1}, Lcom/google/android/material/search/SearchBar;->k(II)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/search/SearchBar;->k(II)I

    move-result p0

    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method private setNavigationIconDecorative(Z)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/material/search/SearchBar;->m:Landroid/graphics/drawable/Drawable;

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->m:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->t()V

    return-void
.end method

.method private t()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v2, v0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    neg-int v0, v0

    int-to-float v0, v0

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    neg-int v1, v3

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/google/android/material/search/a;->a(Lcom/google/android/material/search/SearchBar;FFFF)V

    return-void
.end method

.method private u()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchBar;->o:Z

    const/16 v1, 0x35

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->q:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    new-instance v0, Lcom/google/android/material/search/SearchBar$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchBar$a;-><init>(Lcom/google/android/material/search/SearchBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method private x(Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "title"

    const-string v0, "http://schemas.android.com/apk/res-auto"

    invoke-interface {p1, v0, p0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "subtitle"

    invoke-interface {p1, v0, p0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SearchBar does not support subtitle. Use hint or text instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SearchBar does not support title. Use hint or text instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getCenterView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    return-object p0
.end method

.method getCompatElevation()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/shape/i;->getElevation()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/core/view/m0;->r(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getCornerSize()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getTopLeftCornerResolvedSize()F

    move-result p0

    return p0
.end method

.method protected getDefaultMarginVerticalResource()I
    .locals 0

    sget p0, Lcom/google/android/material/R$dimen;->m3_searchbar_margin_vertical:I

    return p0
.end method

.method protected getDefaultNavigationIconResource()I
    .locals 0

    sget p0, Lcom/google/android/material/R$drawable;->ic_search_black_24:I

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getMenuResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/search/SearchBar;->n:I

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getStrokeWidth()F

    move-result p0

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public inflateMenu(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    iput p1, p0, Lcom/google/android/material/search/SearchBar;->n:I

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/j;->f(Landroid/view/View;Lcom/google/android/material/shape/i;)V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->s()V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->u()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->p()V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->t()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->onMeasure(II)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBar;->r(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/search/SearchBar$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/search/SearchBar$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/google/android/material/search/SearchBar$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/google/android/material/search/SearchBar$SavedState;

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lcom/google/android/material/search/SearchBar$SavedState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->k:Landroid/view/View;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setDefaultScrollFlagsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBar;->o:Z

    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->u()V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setHint(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBar;->setNavigationIconDecorative(Z)V

    return-void
.end method

.method public setOnLoadAnimationFadeInEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->f:Lcom/google/android/material/search/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/c;->a(Z)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getStrokeColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->p:Lcom/google/android/material/shape/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setText(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->f:Lcom/google/android/material/search/c;

    invoke-virtual {v0, p0}, Lcom/google/android/material/search/c;->b(Lcom/google/android/material/search/SearchBar;)V

    return-void
.end method
