.class public final Lcom/google/android/material/datepicker/j;
.super Lcom/google/android/material/datepicker/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/j$m;,
        Lcom/google/android/material/datepicker/j$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/q;"
    }
.end annotation


# static fields
.field static final r:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final t:Ljava/lang/Object;

.field static final u:Ljava/lang/Object;


# instance fields
.field private b:I

.field private c:Lcom/google/android/material/datepicker/DateSelector;

.field private f:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private h:Lcom/google/android/material/datepicker/DayViewDecorator;

.field private i:Lcom/google/android/material/datepicker/Month;

.field private j:Lcom/google/android/material/datepicker/j$l;

.field private k:Lcom/google/android/material/datepicker/b;

.field private l:Landroidx/recyclerview/widget/RecyclerView;

.field private m:Landroidx/recyclerview/widget/RecyclerView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/j;->r:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/j;->s:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/j;->t:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/j;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/datepicker/q;-><init>()V

    return-void
.end method

.method static A(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private static B(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/google/android/material/datepicker/n;->j:I

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/lit8 v2, v2, -0x1

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/2addr v2, v4

    add-int/2addr v3, v2

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0
.end method

.method public static D(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/j;
    .locals 3

    new-instance v0, Lcom/google/android/material/datepicker/j;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/j;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "GRID_SELECTOR_KEY"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CURRENT_MONTH_KEY"

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->m()Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private E(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/j$b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/j$b;-><init>(Lcom/google/android/material/datepicker/j;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/j$f;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/j$f;-><init>(Lcom/google/android/material/datepicker/j;)V

    invoke-static {v0, v1}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method static synthetic n(Lcom/google/android/material/datepicker/j;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/material/datepicker/j;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/material/datepicker/j;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/DateSelector;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/material/datepicker/j;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->l:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/material/datepicker/j;)Lcom/google/android/material/datepicker/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->k:Lcom/google/android/material/datepicker/b;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/material/datepicker/j;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->q:Landroid/view/View;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/material/datepicker/j;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    return-object p1
.end method

.method private u(Landroid/view/View;Lcom/google/android/material/datepicker/o;)V
    .locals 3

    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    sget-object v1, Lcom/google/android/material/datepicker/j;->u:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/material/datepicker/j$h;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/j$h;-><init>(Lcom/google/android/material/datepicker/j;)V

    invoke-static {v0, v1}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    sget v1, Lcom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/j;->n:Landroid/view/View;

    sget-object v2, Lcom/google/android/material/datepicker/j;->s:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v1, Lcom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/j;->o:Landroid/view/View;

    sget-object v2, Lcom/google/android/material/datepicker/j;->t:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/j;->p:Landroid/view/View;

    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/j;->q:Landroid/view/View;

    sget-object p1, Lcom/google/android/material/datepicker/j$l;->DAY:Lcom/google/android/material/datepicker/j$l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/j;->G(Lcom/google/android/material/datepicker/j$l;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/j$i;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/material/datepicker/j$i;-><init>(Lcom/google/android/material/datepicker/j;Lcom/google/android/material/datepicker/o;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    new-instance p1, Lcom/google/android/material/datepicker/j$j;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/j$j;-><init>(Lcom/google/android/material/datepicker/j;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->o:Landroid/view/View;

    new-instance v0, Lcom/google/android/material/datepicker/j$k;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/j$k;-><init>(Lcom/google/android/material/datepicker/j;Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->n:Landroid/view/View;

    new-instance v0, Lcom/google/android/material/datepicker/j$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/j$a;-><init>(Lcom/google/android/material/datepicker/j;Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/j$g;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/j$g;-><init>(Lcom/google/android/material/datepicker/j;)V

    return-object v0
.end method


# virtual methods
.method C()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method F(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/o;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/o;->i(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/o;->i(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lez v0, :cond_1

    move v4, v5

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/j;->E(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/j;->E(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/j;->E(I)V

    :goto_1
    return-void
.end method

.method G(Lcom/google/android/material/datepicker/j$l;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/material/datepicker/j;->j:Lcom/google/android/material/datepicker/j$l;

    sget-object v0, Lcom/google/android/material/datepicker/j$l;->YEAR:Lcom/google/android/material/datepicker/j$l;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/u;

    iget-object v3, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    iget v3, v3, Lcom/google/android/material/datepicker/Month;->c:I

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/u;->h(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->p:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->q:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->o:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/j$l;->DAY:Lcom/google/android/material/datepicker/j$l;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->q:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->n:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/j;->F(Lcom/google/android/material/datepicker/Month;)V

    :cond_1
    :goto_0
    return-void
.end method

.method I()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->j:Lcom/google/android/material/datepicker/j$l;

    sget-object v1, Lcom/google/android/material/datepicker/j$l;->YEAR:Lcom/google/android/material/datepicker/j$l;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/datepicker/j$l;->DAY:Lcom/google/android/material/datepicker/j$l;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/j;->G(Lcom/google/android/material/datepicker/j$l;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/material/datepicker/j$l;->DAY:Lcom/google/android/material/datepicker/j$l;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/j;->G(Lcom/google/android/material/datepicker/j$l;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Lcom/google/android/material/datepicker/p;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/q;->l(Lcom/google/android/material/datepicker/p;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/j;->b:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Lcom/google/android/material/datepicker/j;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DayViewDecorator;

    iput-object v0, p0, Lcom/google/android/material/datepicker/j;->h:Lcom/google/android/material/datepicker/DayViewDecorator;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/Month;

    iput-object p1, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/j;->b:I

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/google/android/material/datepicker/b;

    invoke-direct {v0, v6}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/j;->k:Lcom/google/android/material/datepicker/b;

    invoke-virtual {p1, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    invoke-static {v6}, Lcom/google/android/material/datepicker/l;->C(Landroid/content/Context;)Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    move v5, v7

    goto :goto_0

    :cond_0
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    move v5, v8

    :goto_0
    invoke-virtual {v0, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/j;->B(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setMinimumHeight(I)V

    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v2, Lcom/google/android/material/datepicker/j$c;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/j$c;-><init>(Lcom/google/android/material/datepicker/j;)V

    invoke-static {v0, v2}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    iget-object v2, p0, Lcom/google/android/material/datepicker/j;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v2}, Lcom/google/android/material/datepicker/CalendarConstraints;->j()I

    move-result v2

    new-instance v3, Lcom/google/android/material/datepicker/i;

    if-lez v2, :cond_1

    invoke-direct {v3, v2}, Lcom/google/android/material/datepicker/i;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-direct {v3}, Lcom/google/android/material/datepicker/i;-><init>()V

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Lcom/google/android/material/datepicker/j$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, p0

    move v3, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/j$d;-><init>(Lcom/google/android/material/datepicker/j;Landroid/content/Context;IZI)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lcom/google/android/material/datepicker/j;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v10, Lcom/google/android/material/datepicker/o;

    iget-object v2, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v3, p0, Lcom/google/android/material/datepicker/j;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v4, p0, Lcom/google/android/material/datepicker/j;->h:Lcom/google/android/material/datepicker/DayViewDecorator;

    new-instance v5, Lcom/google/android/material/datepicker/j$e;

    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/j$e;-><init>(Lcom/google/android/material/datepicker/j;)V

    move-object v0, v10

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/o;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;Lcom/google/android/material/datepicker/j$m;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/google/android/material/datepicker/j;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v6, v0, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/u;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/u;-><init>(Lcom/google/android/material/datepicker/j;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/j;->v()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_2
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v9, v10}, Lcom/google/android/material/datepicker/j;->u(Landroid/view/View;Lcom/google/android/material/datepicker/o;)V

    :cond_3
    invoke-static {v6}, Lcom/google/android/material/datepicker/l;->C(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroidx/recyclerview/widget/u;

    invoke-direct {v0}, Landroidx/recyclerview/widget/u;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/y;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v10, v1}, Lcom/google/android/material/datepicker/o;->i(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-direct {p0}, Lcom/google/android/material/datepicker/j;->H()V

    return-object v9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/j;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->h:Lcom/google/android/material/datepicker/DayViewDecorator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method w()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0
.end method

.method x()Lcom/google/android/material/datepicker/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->k:Lcom/google/android/material/datepicker/b;

    return-object p0
.end method

.method y()Lcom/google/android/material/datepicker/Month;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->i:Lcom/google/android/material/datepicker/Month;

    return-object p0
.end method

.method public z()Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/DateSelector;

    return-object p0
.end method
