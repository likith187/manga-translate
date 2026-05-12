.class public Lcom/facebook/rebound/ui/SpringConfiguratorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/ui/SpringConfiguratorView$e;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$c;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$b;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$d;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$f;
    }
.end annotation


# static fields
.field private static final q:Ljava/text/DecimalFormat;


# instance fields
.field private final a:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

.field private final b:Ljava/util/List;

.field private final c:Lu2/e;

.field private final f:F

.field private final h:F

.field private final i:Lu2/g;

.field private final j:I

.field private k:Landroid/widget/SeekBar;

.field private l:Landroid/widget/SeekBar;

.field private m:Landroid/widget/Spinner;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lu2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->q:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Ljava/util/List;

    const/16 p2, 0xff

    const/16 p3, 0xe1

    .line 5
    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:I

    .line 6
    invoke-static {}, Lu2/j;->g()Lu2/j;

    move-result-object p2

    .line 7
    invoke-static {}, Lu2/g;->c()Lu2/g;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Lu2/g;

    .line 8
    new-instance p3, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    invoke-direct {p3, p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    .line 10
    invoke-static {v1, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->h:F

    const/high16 v1, 0x438c0000    # 280.0f

    .line 11
    invoke-static {v1, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->f:F

    .line 12
    invoke-virtual {p2}, Lu2/b;->c()Lu2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Lu2/e;

    .line 13
    new-instance v1, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 14
    invoke-virtual {p2, v3, v4}, Lu2/e;->l(D)Lu2/e;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Lu2/e;->n(D)Lu2/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lu2/e;->a(Lu2/h;)Lu2/e;

    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    new-instance p1, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;

    invoke-direct {p1, p0, v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    .line 17
    iget-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/SeekBar;

    const v1, 0x186a0

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 18
    iget-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 19
    iget-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/SeekBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 20
    iget-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 21
    iget-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 22
    iget-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/Spinner;

    new-instance p2, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;

    invoke-direct {p2, p0, v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 23
    invoke-virtual {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o()V

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->p()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F
    .locals 0

    iget p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->h:F

    return p0
.end method

.method static synthetic e(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F
    .locals 0

    iget p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->f:F

    return p0
.end method

.method static synthetic f(Lcom/facebook/rebound/ui/SpringConfiguratorView;)I
    .locals 0

    iget p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:I

    return p0
.end method

.method static synthetic g(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lu2/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->p:Lu2/f;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lu2/f;)Lu2/f;
    .locals 0

    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->p:Lu2/f;

    return-object p1
.end method

.method static synthetic i(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lu2/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->q(Lu2/f;)V

    return-void
.end method

.method static synthetic k(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic l()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->q:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method private n(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v3

    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v7, v1, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x43960000    # 300.0f

    invoke-static {v5, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lv2/a;->a(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lv2/a;->b()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v8, v7, v3, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x64

    invoke-static {v8, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/Spinner;

    invoke-direct {v8, p1, v7}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/Spinner;

    invoke-static {}, Lv2/a;->c()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    const/16 v9, 0x30

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v2, v2, v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/Spinner;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lv2/a;->c()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-static {v10, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v10

    invoke-virtual {v9, v7, v7, v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v10, 0x50

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lv2/a;->c()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v10, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/SeekBar;

    invoke-direct {v10, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/SeekBar;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Landroid/widget/TextView;

    iget v11, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x42480000    # 50.0f

    invoke-static {v10, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v11

    invoke-static {v11, v6}, Lv2/a;->a(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Landroid/widget/TextView;

    const/16 v13, 0x13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v12, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v11, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lv2/a;->c()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v11, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Landroid/widget/TextView;

    iget v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v10, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-static {v2, v6}, Lv2/a;->a(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42700000    # 60.0f

    invoke-static {p1, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result p1

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3, v0}, Lv2/a;->d(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-static {p1, v0}, Lv2/a;->a(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    const/16 v0, 0x31

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/facebook/rebound/ui/SpringConfiguratorView$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView$b;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 p0, 0xa4

    const/16 p1, 0xd1

    const/16 v0, 0xff

    invoke-static {v0, v7, p0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Lu2/e;

    invoke-virtual {v0}, Lu2/e;->e()D

    move-result-wide v0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Lu2/e;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lu2/e;->n(D)Lu2/e;

    return-void
.end method

.method private q(Lu2/f;)V
    .locals 5

    iget-wide v0, p1, Lu2/f;->b:D

    invoke-static {v0, v1}, Lu2/d;->c(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    const v2, 0x47c35000    # 100000.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-wide v3, p1, Lu2/f;->a:D

    invoke-static {v3, v4}, Lu2/d;->b(D)D

    move-result-wide v3

    double-to-float p1, v3

    sub-float/2addr p1, v1

    mul-float/2addr p1, v2

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public o()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Lu2/g;

    invoke-virtual {v0}, Lu2/g;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    invoke-virtual {v1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;->b()V

    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lu2/f;->c:Lu2/f;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Ljava/util/List;

    sget-object v2, Lu2/f;->c:Lu2/f;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    sget-object v2, Lu2/f;->c:Lu2/f;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_2
    return-void
.end method
