.class public Lcom/google/android/material/search/SearchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.implements Lg4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchView$SavedState;,
        Lcom/google/android/material/search/SearchView$b;,
        Lcom/google/android/material/search/SearchView$Behavior;
    }
.end annotation


# static fields
.field private static final G:I


# instance fields
.field private A:Z

.field private final B:I

.field private C:Z

.field private D:Z

.field private E:Lcom/google/android/material/search/SearchView$b;

.field private F:Ljava/util/Map;

.field final a:Landroid/view/View;

.field final b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field final c:Landroid/view/View;

.field final f:Landroid/view/View;

.field final h:Landroid/widget/FrameLayout;

.field final i:Landroid/widget/FrameLayout;

.field final j:Lcom/google/android/material/appbar/MaterialToolbar;

.field final k:Landroidx/appcompat/widget/Toolbar;

.field final l:Landroid/widget/TextView;

.field final m:Landroid/widget/EditText;

.field final n:Landroid/widget/ImageButton;

.field final o:Landroid/view/View;

.field final p:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private final q:Z

.field private final r:Lcom/google/android/material/search/w;

.field private final s:Lg4/c;

.field private final t:Z

.field private final u:Ld4/a;

.field private final v:Ljava/util/Set;

.field private w:Lcom/google/android/material/search/SearchBar;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SearchView:I

    sput v0, Lcom/google/android/material/search/SearchView;->G:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    sget v4, Lcom/google/android/material/search/SearchView;->G:I

    invoke-static {p1, p2, p3, v4}, Lm4/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lg4/c;

    invoke-direct {p1, p0}, Lg4/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->s:Lg4/c;

    .line 5
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->v:Ljava/util/Set;

    const/16 p1, 0x10

    .line 6
    iput p1, p0, Lcom/google/android/material/search/SearchView;->x:I

    .line 7
    sget-object p1, Lcom/google/android/material/search/SearchView$b;->HIDDEN:Lcom/google/android/material/search/SearchView$b;

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    sget-object v2, Lcom/google/android/material/R$styleable;->SearchView:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget p3, Lcom/google/android/material/R$styleable;->SearchView_backgroundTint:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/search/SearchView;->B:I

    .line 12
    sget p3, Lcom/google/android/material/R$styleable;->SearchView_headerLayout:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 13
    sget v1, Lcom/google/android/material/R$styleable;->SearchView_android_textAppearance:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 14
    sget v1, Lcom/google/android/material/R$styleable;->SearchView_android_text:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->SearchView_android_hint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    sget v3, Lcom/google/android/material/R$styleable;->SearchView_searchPrefixText:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    sget v4, Lcom/google/android/material/R$styleable;->SearchView_useDrawerArrowDrawable:I

    .line 18
    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 19
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_animateNavigationIcon:I

    const/4 v7, 0x1

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/search/SearchView;->y:Z

    .line 20
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_animateMenuItems:I

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/search/SearchView;->z:Z

    .line 21
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_hideNavigationIcon:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 22
    sget v6, Lcom/google/android/material/R$styleable;->SearchView_autoShowKeyboard:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/search/SearchView;->A:Z

    .line 23
    sget v6, Lcom/google/android/material/R$styleable;->SearchView_backHandlingEnabled:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/search/SearchView;->t:Z

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v6, Lcom/google/android/material/R$layout;->mtrl_search_view:I

    invoke-virtual {p2, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    iput-boolean v7, p0, Lcom/google/android/material/search/SearchView;->q:Z

    .line 27
    sget p2, Lcom/google/android/material/R$id;->open_search_view_scrim:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->a:Landroid/view/View;

    .line 28
    sget p2, Lcom/google/android/material/R$id;->open_search_view_root:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 29
    sget p2, Lcom/google/android/material/R$id;->open_search_view_background:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->c:Landroid/view/View;

    .line 30
    sget p2, Lcom/google/android/material/R$id;->open_search_view_status_bar_spacer:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->f:Landroid/view/View;

    .line 31
    sget p2, Lcom/google/android/material/R$id;->open_search_view_header_container:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->h:Landroid/widget/FrameLayout;

    .line 32
    sget p2, Lcom/google/android/material/R$id;->open_search_view_toolbar_container:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->i:Landroid/widget/FrameLayout;

    .line 33
    sget p2, Lcom/google/android/material/R$id;->open_search_view_toolbar:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 34
    sget p2, Lcom/google/android/material/R$id;->open_search_view_dummy_toolbar:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->k:Landroidx/appcompat/widget/Toolbar;

    .line 35
    sget p2, Lcom/google/android/material/R$id;->open_search_view_search_prefix:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->l:Landroid/widget/TextView;

    .line 36
    sget p2, Lcom/google/android/material/R$id;->open_search_view_edit_text:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    .line 37
    sget p2, Lcom/google/android/material/R$id;->open_search_view_clear_button:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->n:Landroid/widget/ImageButton;

    .line 38
    sget p2, Lcom/google/android/material/R$id;->open_search_view_divider:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->o:Landroid/view/View;

    .line 39
    sget p2, Lcom/google/android/material/R$id;->open_search_view_content_container:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->p:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 40
    new-instance p2, Lcom/google/android/material/search/w;

    invoke-direct {p2, p0}, Lcom/google/android/material/search/w;-><init>(Lcom/google/android/material/search/SearchView;)V

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    .line 41
    new-instance p2, Ld4/a;

    invoke-direct {p2, p1}, Ld4/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->u:Ld4/a;

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->O()V

    .line 43
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->I()V

    .line 44
    invoke-direct {p0, p3}, Lcom/google/android/material/search/SearchView;->setUpHeaderLayout(I)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/google/android/material/search/SearchView;->setSearchPrefixText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/search/SearchView;->M(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, v4, v5}, Lcom/google/android/material/search/SearchView;->H(ZZ)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->J()V

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->K()V

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->N()V

    return-void
.end method

.method private static synthetic A(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic B(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 1

    invoke-virtual {p2}, Landroidx/core/view/a1;->m()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacer(I)V

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->D:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setStatusBarSpacerEnabledInternal(Z)V

    :cond_1
    return-object p2
.end method

.method private synthetic C(Landroid/view/View;Landroidx/core/view/a1;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/a1;
    .locals 3

    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    goto :goto_0

    :cond_0
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_1

    :cond_1
    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    :goto_1
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p2}, Landroidx/core/view/a1;->k()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    invoke-virtual {p2}, Landroidx/core/view/a1;->l()I

    move-result v2

    add-int/2addr p1, v2

    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method private synthetic D(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->R()V

    return-void
.end method

.method private G(Lcom/google/android/material/search/SearchView$b;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    sget-object p2, Lcom/google/android/material/search/SearchView$b;->SHOWN:Lcom/google/android/material/search/SearchView$b;

    if-ne p1, p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->setModalForAccessibility(Z)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/google/android/material/search/SearchView$b;->HIDDEN:Lcom/google/android/material/search/SearchView$b;

    if-ne p1, p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->setModalForAccessibility(Z)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    new-instance p2, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->v:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->T(Lcom/google/android/material/search/SearchView$b;)V

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private H(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v0, Lcom/google/android/material/search/p;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/p;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    new-instance p1, Lf/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/d;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, p2}, Lb4/a;->d(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lf/d;->c(I)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private I()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getOverlayElevation()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay(F)V

    return-void
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/material/search/f;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/f;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/material/search/SearchView$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$a;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->p:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    new-instance v1, Lcom/google/android/material/search/o;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/o;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private L()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->o:Landroid/view/View;

    new-instance v3, Lcom/google/android/material/search/i;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/material/search/i;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    invoke-static {p0, v3}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    return-void
.end method

.method private M(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-static {v0, p1}, Landroidx/core/widget/j;->o(Landroid/widget/TextView;I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private N()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->Q()V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->L()V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->P()V

    return-void
.end method

.method private O()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v0, Lcom/google/android/material/search/n;

    invoke-direct {v0}, Lcom/google/android/material/search/n;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private P()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getStatusBarHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacer(I)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->f:Landroid/view/View;

    new-instance v1, Lcom/google/android/material/search/k;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/k;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    return-void
.end method

.method private Q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v1, Lcom/google/android/material/search/j;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/j;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private S(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/google/android/material/search/SearchView;->S(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->F:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->F:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->F:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private T(Lcom/google/android/material/search/SearchView$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->t:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/search/SearchView$b;->SHOWN:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->s:Lg4/c;

    invoke-virtual {p0}, Lg4/c;->c()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/search/SearchView$b;->HIDDEN:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->s:Lg4/c;

    invoke-virtual {p0}, Lg4/c;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method private U()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->s(Landroidx/appcompat/widget/Toolbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getDefaultNavigationIconResource()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIconTint()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIconTint()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lv/a;->n(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v2, Lcom/google/android/material/internal/FadeThroughDrawable;

    iget-object v3, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/material/internal/FadeThroughDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->V()V

    :goto_0
    return-void
.end method

.method private V()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lv/a;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lf/d;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lf/d;

    int-to-float v2, p0

    invoke-virtual {v1, v2}, Lf/d;->e(F)V

    :cond_2
    instance-of v1, v0, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/material/internal/FadeThroughDrawable;

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->D(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/material/search/SearchView;->z(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchView;->y(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->u()V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->v()V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->x(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/a1;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/a1;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchView;->C(Landroid/view/View;Landroidx/core/view/a1;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method private getActivityWindow()Landroid/view/Window;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getOverlayElevation()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getCompatElevation()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$dimen;->m3_searchview_elevation:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method private getStatusBarHeight()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic h(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchView;->B(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/search/SearchView;->A(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->w(Landroid/view/View;)V

    return-void
.end method

.method private q()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    sget-object v1, Lcom/google/android/material/search/SearchView$b;->HIDDEN:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    sget-object v0, Lcom/google/android/material/search/SearchView$b;->HIDING:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private s(Landroidx/appcompat/widget/Toolbar;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lv/a;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Lf/d;

    return p0
.end method

.method private setStatusBarSpacerEnabledInternal(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setUpBackgroundViewElevationOverlay(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->u:Ld4/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->c:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/search/SearchView;->B:I

    invoke-virtual {v0, v1, p1}, Ld4/a;->c(IF)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpHeaderLayout(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->h:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setUpStatusBarSpacer(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic u()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchView;->C:Z

    invoke-static {v0, p0}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic v()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchView;->C:Z

    invoke-static {v0, p0}, Lcom/google/android/material/internal/ViewUtils;->showKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->n()V

    return-void
.end method

.method private synthetic x(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->m()V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->F()V

    return-void
.end method

.method private synthetic y(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->l()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic z(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-virtual {p4}, Landroidx/core/view/a1;->k()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p4}, Landroidx/core/view/a1;->l()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-object p4
.end method


# virtual methods
.method public E()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/material/search/g;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/g;-><init>(Lcom/google/android/material/search/SearchView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method F()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->E()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    sget-object v1, Lcom/google/android/material/search/SearchView$b;->SHOWN:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    sget-object v1, Lcom/google/android/material/search/SearchView$b;->SHOWING:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {p0}, Lcom/google/android/material/search/w;->Z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public W()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getActivityWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, p0, Lcom/google/android/material/search/SearchView;->x:I

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->q:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->p:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public cancelBackProgress()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {p0}, Lcom/google/android/material/search/w;->o()V

    :cond_1
    :goto_0
    return-void
.end method

.method getBackHelper()Lg4/g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {p0}, Lcom/google/android/material/search/w;->r()Lg4/g;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/material/search/SearchView$Behavior;

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView$Behavior;-><init>()V

    return-object p0
.end method

.method public getCurrentTransitionState()Lcom/google/android/material/search/SearchView$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    return-object p0
.end method

.method protected getDefaultNavigationIconResource()I
    .locals 0

    sget p0, Lcom/google/android/material/R$drawable;->ic_arrow_back_black_24:I

    return p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSearchPrefix()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public getSearchPrefixText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSoftInputMode()I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    iget p0, p0, Lcom/google/android/material/search/SearchView;->x:I

    return p0
.end method

.method public getText()Landroid/text/Editable;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    return-object p0
.end method

.method public handleBackInvoked()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {v0}, Lcom/google/android/material/search/w;->S()Landroidx/activity/b;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {p0}, Lcom/google/android/material/search/w;->p()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->n()V

    :goto_0
    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->h:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/material/search/h;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/h;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    sget-object v1, Lcom/google/android/material/search/SearchView$b;->HIDDEN:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->E:Lcom/google/android/material/search/SearchView$b;

    sget-object v1, Lcom/google/android/material/search/SearchView$b;->HIDING:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {p0}, Lcom/google/android/material/search/w;->M()Landroid/animation/AnimatorSet;

    :cond_1
    :goto_0
    return-void
.end method

.method o()Z
    .locals 1

    iget p0, p0, Lcom/google/android/material/search/SearchView;->x:I

    const/16 v0, 0x30

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/j;->e(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->W()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/search/SearchView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/search/SearchView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/google/android/material/search/SearchView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p1, Lcom/google/android/material/search/SearchView$SavedState;->b:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setVisible(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/google/android/material/search/SearchView$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/material/search/SearchView$SavedState;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    iput p0, v0, Lcom/google/android/material/search/SearchView$SavedState;->b:I

    return-object v0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchView;->y:Z

    return p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchView;->z:Z

    return p0
.end method

.method public setAnimatedNavigationIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->y:Z

    return-void
.end method

.method public setAutoShowKeyboard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->A:Z

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay(F)V

    return-void
.end method

.method public setHint(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMenuItemsAnimated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->z:Z

    return-void
.end method

.method public setModalForAccessibility(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/search/SearchView;->F:Ljava/util/Map;

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/SearchView;->S(Landroid/view/ViewGroup;Z)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->F:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V

    return-void
.end method

.method public setSearchPrefixText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->l:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStatusBarSpacerEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchView;->D:Z

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setStatusBarSpacerEnabledInternal(Z)V

    return-void
.end method

.method public setText(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setToolbarTouchscreenBlocksFocus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    return-void
.end method

.method setTransitionState(Lcom/google/android/material/search/SearchView$b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchView;->G(Lcom/google/android/material/search/SearchView$b;Z)V

    return-void
.end method

.method public setUseWindowInsetsController(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->C:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->V()V

    if-eqz p1, :cond_2

    sget-object v3, Lcom/google/android/material/search/SearchView$b;->SHOWN:Lcom/google/android/material/search/SearchView$b;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/google/android/material/search/SearchView$b;->HIDDEN:Lcom/google/android/material/search/SearchView$b;

    :goto_2
    if-eq v0, p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/search/SearchView;->G(Lcom/google/android/material/search/SearchView$b;Z)V

    return-void
.end method

.method public setupWithSearchBar(Lcom/google/android/material/search/SearchBar;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/w;->X(Lcom/google/android/material/search/SearchBar;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/material/search/l;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/l;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/material/search/m;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/m;-><init>(Lcom/google/android/material/search/SearchView;)V

    invoke-static {p1, v0}, Lcom/google/android/material/search/d;->a(Lcom/google/android/material/search/SearchBar;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/search/e;->a(Landroid/widget/EditText;Z)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->U()V

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->I()V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getCurrentTransitionState()Lcom/google/android/material/search/SearchView$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->T(Lcom/google/android/material/search/SearchView$b;)V

    return-void
.end method

.method public startBackProgress(Landroidx/activity/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/w;->a0(Landroidx/activity/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateBackProgress(Landroidx/activity/b;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->w:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->r:Lcom/google/android/material/search/w;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/w;->f0(Landroidx/activity/b;)V

    :cond_1
    :goto_0
    return-void
.end method
