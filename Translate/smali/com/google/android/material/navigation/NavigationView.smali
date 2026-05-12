.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "SourceFile"

# interfaces
.implements Lg4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$d;
    }
.end annotation


# static fields
.field private static final s:[I

.field private static final t:[I

.field private static final u:I


# instance fields
.field private final a:Lcom/google/android/material/internal/NavigationMenu;

.field private final b:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private final c:I

.field private final f:[I

.field private h:Landroid/view/MenuInflater;

.field private i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private j:Z

.field private k:Z

.field private l:I

.field private final m:Z

.field private final n:I

.field private final o:Lcom/google/android/material/shape/s;

.field private final p:Lg4/h;

.field private final q:Lg4/c;

.field private final r:Landroidx/drawerlayout/widget/DrawerLayout$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->s:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->t:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 3
    sget v9, Lcom/google/android/material/navigation/NavigationView;->u:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lm4/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v10, Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {v10}, Lcom/google/android/material/internal/NavigationMenuPresenter;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x2

    .line 5
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->f:[I

    const/4 v11, 0x1

    .line 6
    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->j:Z

    .line 7
    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->k:Z

    const/4 v12, 0x0

    .line 8
    iput v12, v0, Lcom/google/android/material/navigation/NavigationView;->l:I

    .line 9
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/shape/s;->a(Landroid/view/View;)Lcom/google/android/material/shape/s;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->o:Lcom/google/android/material/shape/s;

    .line 10
    new-instance v1, Lg4/h;

    invoke-direct {v1, v0}, Lg4/h;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    .line 11
    new-instance v1, Lg4/c;

    invoke-direct {v1, v0}, Lg4/c;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->q:Lg4/c;

    .line 12
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->r:Landroidx/drawerlayout/widget/DrawerLayout$e;

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 14
    new-instance v14, Lcom/google/android/material/internal/NavigationMenu;

    invoke-direct {v14, v13}, Lcom/google/android/material/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/google/android/material/navigation/NavigationView;->a:Lcom/google/android/material/internal/NavigationMenu;

    .line 15
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    new-array v6, v12, [I

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/h0;

    move-result-object v1

    .line 17
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    .line 20
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->l:I

    if-nez v2, :cond_1

    move v2, v11

    goto :goto_0

    :cond_1
    move v2, v12

    .line 21
    :goto_0
    iput-boolean v2, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->m3_navigation_drawer_layout_corner_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->n:I

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/google/android/material/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_4

    .line 25
    :cond_2
    invoke-static {v13, v7, v8, v9}, Lcom/google/android/material/shape/n;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/n$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v2

    .line 26
    new-instance v4, Lcom/google/android/material/shape/i;

    invoke-direct {v4, v2}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    if-eqz v3, :cond_3

    .line 27
    invoke-virtual {v4, v3}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 28
    :cond_3
    invoke-virtual {v4, v13}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 29
    invoke-static {v0, v4}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 32
    :cond_5
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 33
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->c:I

    .line 34
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 35
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v3

    .line 36
    :goto_1
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 37
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    .line 38
    invoke-virtual {v1, v4, v12}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v4

    goto :goto_2

    :cond_7
    move v4, v12

    :goto_2
    const v5, 0x1010038

    if-nez v4, :cond_8

    if-nez v2, :cond_8

    .line 39
    invoke-direct {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 40
    :cond_8
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 41
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_3

    .line 42
    :cond_9
    invoke-direct {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 43
    :goto_3
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 44
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6, v12}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v6

    goto :goto_4

    :cond_a
    move v6, v12

    .line 45
    :goto_4
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearanceActiveBoldEnabled:I

    .line 46
    invoke-virtual {v1, v7, v11}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result v7

    .line 47
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 48
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v8, v12}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    .line 49
    :cond_b
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 50
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_5

    :cond_c
    move-object v8, v3

    :goto_5
    if-nez v6, :cond_d

    if-nez v8, :cond_d

    const v8, 0x1010036

    .line 51
    invoke-direct {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 52
    :cond_d
    sget v9, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_e

    .line 53
    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->hasShapeAppearance(Landroidx/appcompat/widget/h0;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 54
    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemBackground(Landroidx/appcompat/widget/h0;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 55
    sget v15, Lcom/google/android/material/R$styleable;->NavigationView_itemRippleColor:I

    .line 56
    invoke-static {v13, v1, v15}, Li4/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/h0;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 57
    invoke-direct {v0, v1, v3}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/h0;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 58
    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    .line 59
    invoke-static {v15}, Lj4/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-direct {v12, v15, v3, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V

    .line 61
    :cond_e
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 62
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    const/4 v11, 0x0

    .line 63
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    goto :goto_6

    :cond_f
    const/4 v11, 0x0

    .line 65
    :goto_6
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 66
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    .line 67
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v3

    .line 68
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    .line 69
    :cond_10
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    .line 70
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v3

    .line 71
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    .line 72
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    .line 73
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v3

    .line 74
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    .line 75
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    .line 76
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v3

    .line 77
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    .line 78
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    .line 79
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v3

    .line 80
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    .line 81
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    iget-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->j:Z

    .line 82
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result v3

    .line 83
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    .line 84
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    iget-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->k:Z

    .line 85
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result v3

    .line 86
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    .line 87
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    .line 88
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v3

    .line 89
    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroidx/appcompat/widget/h0;->k(II)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 90
    new-instance v11, Lcom/google/android/material/navigation/NavigationView$b;

    invoke-direct {v11, v0}, Lcom/google/android/material/navigation/NavigationView$b;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v14, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 91
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setId(I)V

    .line 92
    invoke-virtual {v10, v13, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    if-eqz v4, :cond_11

    .line 93
    invoke-virtual {v10, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderTextAppearance(I)V

    .line 94
    :cond_11
    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderColor(Landroid/content/res/ColorStateList;)V

    .line 95
    invoke-virtual {v10, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    if-eqz v6, :cond_12

    .line 97
    invoke-virtual {v10, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 98
    :cond_12
    invoke-virtual {v10, v7}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 99
    invoke-virtual {v10, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 100
    invoke-virtual {v10, v9}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 102
    invoke-virtual {v14, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 103
    invoke-virtual {v10, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 105
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    .line 106
    :goto_7
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 107
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 108
    :cond_14
    invoke-virtual {v1}, Landroidx/appcompat/widget/h0;->y()V

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/navigation/NavigationView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->f(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/navigation/NavigationView;)Lg4/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Lg4/c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->g()V

    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v3, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/google/android/material/navigation/NavigationView;->t:[I

    sget-object v3, Lcom/google/android/material/navigation/NavigationView;->s:[I

    sget-object v4, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    filled-new-array {v2, v3, v4}, [[I

    move-result-object v3

    invoke-virtual {p1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, p0, v0}, [I

    move-result-object p0

    invoke-direct {v1, v3, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private createDefaultItemBackground(Landroidx/appcompat/widget/h0;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    invoke-static {v0, p1, v1}, Li4/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/h0;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/h0;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private createDefaultItemDrawable(Landroidx/appcompat/widget/h0;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 9

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v0

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v2

    new-instance v4, Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/google/android/material/shape/n;->b(Landroid/content/Context;II)Lcom/google/android/material/shape/n$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    invoke-virtual {v4, p2}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    sget p0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v5

    sget p0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v6

    sget p0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v7

    sget p0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v8

    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/navigation/NavigationView;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->f:[I

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    return-object p0
.end method

.method private synthetic f(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    :cond_0
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Landroid/view/MenuInflater;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Landroid/view/MenuInflater;

    return-object p0
.end method

.method private h()Landroid/util/Pair;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    instance-of v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/Pair;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    check-cast p0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NavigationView back progress requires the direct parent view to be a DrawerLayout."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasShapeAppearance(Landroidx/appcompat/widget/h0;)Z
    .locals 0

    sget p0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p0

    if-nez p0, :cond_1

    sget p0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/h0;->s(I)Z

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

.method private maybeUpdateCornerSizeForDrawerLayout(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/i;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/j;->b(II)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/shape/i;

    invoke-virtual {v1}, Lcom/google/android/material/shape/i;->getShapeAppearanceModel()Lcom/google/android/material/shape/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/shape/n;->v()Lcom/google/android/material/shape/n$b;

    move-result-object v3

    iget v4, p0, Lcom/google/android/material/navigation/NavigationView;->l:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/n$b;->o(F)Lcom/google/android/material/shape/n$b;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/n$b;->H(F)Lcom/google/android/material/shape/n$b;

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/n$b;->w(F)Lcom/google/android/material/shape/n$b;

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/n$b;->M(F)Lcom/google/android/material/shape/n$b;

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/n$b;->B(F)Lcom/google/android/material/shape/n$b;

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->o:Lcom/google/android/material/shape/s;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/shape/s;->g(Landroid/view/View;Lcom/google/android/material/shape/n;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->o:Lcom/google/android/material/shape/s;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, v4, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/shape/s;->f(Landroid/view/View;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->o:Lcom/google/android/material/shape/s;

    invoke-virtual {p1, p0, v2}, Lcom/google/android/material/shape/s;->i(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method private setupInsetScrimsListener()V
    .locals 1

    new-instance v0, Lcom/google/android/material/navigation/NavigationView$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationView$c;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public cancelBackProgress()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->h()Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    invoke-virtual {v0}, Lg4/h;->f()V

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->g()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->o:Lcom/google/android/material/shape/s;

    new-instance v1, Lcom/google/android/material/navigation/d;

    invoke-direct {v1, p0}, Lcom/google/android/material/navigation/d;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/shape/s;->e(Landroid/graphics/Canvas;Ly3/a$a;)V

    return-void
.end method

.method getBackHelper()Lg4/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    return-object p0
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public getDividerInsetEnd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetEnd()I

    move-result p0

    return p0
.end method

.method public getDividerInsetStart()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetStart()I

    move-result p0

    return p0
.end method

.method public getHeaderCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result p0

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemHorizontalPadding()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result p0

    return p0
.end method

.method public getItemIconPadding()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemMaxLines()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemMaxLines()I

    move-result p0

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemVerticalPadding()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemVerticalPadding()I

    move-result p0

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->a:Lcom/google/android/material/internal/NavigationMenu;

    return-object p0
.end method

.method public getSubheaderInsetEnd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetEnd()I

    move-result p0

    return p0
.end method

.method public getSubheaderInsetStart()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetStart()I

    move-result p0

    return p0
.end method

.method public handleBackInvoked()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->h()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    invoke-virtual {v2}, Lg4/a;->c()Landroidx/activity/b;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    invoke-static {v1, p0}, Lcom/google/android/material/navigation/b;->b(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/material/navigation/b;->c(Landroidx/drawerlayout/widget/DrawerLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    invoke-virtual {p0, v2, v0, v3, v1}, Lg4/h;->h(Landroidx/activity/b;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)V

    return-void
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public inflateMenu(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->a:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Z

    return p0
.end method

.method public isTopInsetScrimEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/j;->e(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->q:Lg4/c;

    invoke-virtual {v1}, Lg4/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->r:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->I(Landroidx/drawerlayout/widget/DrawerLayout$e;)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->r:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$e;)V

    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Lg4/c;

    invoke-virtual {p0}, Lg4/c;->e()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->r:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->I(Landroidx/drawerlayout/widget/DrawerLayout$e;)V

    :cond_0
    return-void
.end method

.method protected onInsetsChanged(Landroidx/core/view/a1;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroidx/core/view/a1;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->c:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->a:Lcom/google/android/material/internal/NavigationMenu;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->a:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->a:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->k:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->a:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->a:Lcom/google/android/material/internal/NavigationMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDividerInsetEnd(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetEnd(I)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetStart(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, Lcom/google/android/material/shape/j;->d(Landroid/view/View;F)V

    return-void
.end method

.method public setForceCompatClippingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->o:Lcom/google/android/material/shape/s;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/shape/s;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemMaxLines(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearanceActiveBoldEnabled(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$d;)V
    .locals 0

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetEnd(I)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->b:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetStart(I)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->j:Z

    return-void
.end method

.method public startBackProgress(Landroidx/activity/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->h()Landroid/util/Pair;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    invoke-virtual {p0, p1}, Lg4/h;->j(Landroidx/activity/b;)V

    return-void
.end method

.method public updateBackProgress(Landroidx/activity/b;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->h()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    invoke-virtual {v1, p1, v0}, Lg4/h;->l(Landroidx/activity/b;I)V

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lg4/h;

    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result p1

    invoke-virtual {v0, p1}, Lg4/a;->a(F)F

    move-result p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/material/navigation/NavigationView;->n:I

    invoke-static {v0, v1, p1}, Lx3/a;->c(IIF)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/navigation/NavigationView;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    :cond_0
    return-void
.end method
