.class public final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;
.super Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity<",
        "Lcom/coloros/translate/ui/simultaneous/history/o0;",
        ">;"
    }
.end annotation


# static fields
.field public static final H:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$a;


# instance fields
.field private A:Landroid/view/MenuItem;

.field private B:Landroid/view/MenuItem;

.field private C:Landroid/view/MenuItem;

.field private D:Landroid/view/MenuItem;

.field private final E:Ln8/j;

.field private final F:Landroidx/activity/result/b;

.field private final G:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroidx/recyclerview/widget/RecyclerView;

.field private t:Landroid/view/View;

.field private u:Lcom/airbnb/lottie/LottieAnimationView;

.field private v:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private w:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

.field private x:Landroid/view/View;

.field private y:I

.field private z:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->H:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;-><init>()V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$g;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->E:Ln8/j;

    new-instance v0, Ld/d;

    invoke-direct {v0}, Ld/d;-><init>()V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/g;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/g;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->F:Landroidx/activity/result/b;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->G:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;

    return-void
.end method

.method private final A1()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->w:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    const-string v1, "mNavigationTool"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->x:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "mNavigationBarView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v4, Lcom/coloros/translate/R$color;->coui_navigation_enlarge_default_bg:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->w:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v4, Lcom/coloros/translate/R$id;->navigation_rename:I

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->C:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->w:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->navigation_delete:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->D:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->C:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->D:Landroid/view/MenuItem;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->C:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/j;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/j;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->D:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/k;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/k;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_7
    return-void
.end method

.method private static final B1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->D1()V

    return v3
.end method

.method private static final C1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->y1()V

    return v3
.end method

.method private final D1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/n;->y()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->s()Lcom/coloros/translate/ui/simultaneous/history/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;

    invoke-direct {v2, p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Lcom/coloros/translate/ui/simultaneous/history/n0;)V

    invoke-virtual {p0, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->N0(Ljava/lang/String;Lw8/l;)V

    :cond_0
    return-void
.end method

.method private final E1()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->v:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mToolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    sget v2, Lcom/coloros/translate/R$string;->select_project:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    sget v2, Lcom/coloros/translate/R$menu;->menu_edit_mode:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    sget v2, Lcom/coloros/translate/R$string;->select_project:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$id;->cancel_select:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->A:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->select_all:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->B:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/h;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/h;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->A:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/i;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/i;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private static final F1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->r1()Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/o;->n()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->A(Ljava/util/Set;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final G1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->p(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic R0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->F1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->C1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->z1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic U0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->u1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->B1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic W0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->x1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic X0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->G1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->w1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic Z0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->D:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic a1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->t:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->r1()Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->G:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;

    return-object p0
.end method

.method public static final synthetic d1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic e1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->x:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic f1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->w:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    return-object p0
.end method

.method public static final synthetic g1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->C:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic h1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->v:Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method public static final synthetic i1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->z:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic j1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->B:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o0;
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    return-object p0
.end method

.method public static final synthetic l1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroidx/activity/result/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->F:Landroidx/activity/result/b;

    return-object p0
.end method

.method public static final synthetic m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->u:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static final synthetic n1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->v1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic o1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->A1()V

    return-void
.end method

.method public static final synthetic p1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->E1()V

    return-void
.end method

.method private final q1()V
    .locals 5

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTablet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "    isMediumScreen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimultaneousHistoryActivity"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$id;->content_layout:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/responsiveui/R$dimen;->grid_card_special_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private final r1()Lcom/coloros/translate/ui/simultaneous/history/o;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->E:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/o;

    return-object p0
.end method

.method private final s1()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->r()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->u()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->t()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$d;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    return-void
.end method

.method private final t1()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousHistoryActivity"

    const-string v2, "initView"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/coloros/translate/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->r:Landroid/widget/LinearLayout;

    sget v0, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->v:Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget v0, Lcom/coloros/translate/R$id;->navigation_tool:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->w:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    sget v0, Lcom/coloros/translate/R$id;->navigation_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->x:Landroid/view/View;

    sget v0, Lcom/coloros/translate/R$id;->emptyTextView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->t:Landroid/view/View;

    sget v0, Lcom/coloros/translate/R$id;->simu_empty_img:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->u:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/coloros/translate/R$id;->recycler_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/coloros/translate/R$string;->simultaneous_history:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->v1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRootView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/n;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/n;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-static {v0, v2}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string v0, "mHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->r1()Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$dimen;->dp_16:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;-><init>(I)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$f;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    new-instance p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$e;

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$e;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$f;)V

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void
.end method

.method private static final u1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/a1$m;->d()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object p1

    iget p1, p1, Lu/e;->d:I

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->y:I

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->x:Landroid/view/View;

    const-string v0, "mNavigationBarView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    iget v2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->y:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->x:Landroid/view/View;

    if-nez p0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-object p2
.end method

.method private final v1(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->v:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mToolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    sget p1, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/history/l;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/l;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/coloros/translate/R$string;->simultaneous_history:I

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    sget p1, Lcom/coloros/translate/R$menu;->simultaneous_history_menu:I

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$id;->edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->z:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/m;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/m;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->r()Landroidx/lifecycle/y;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->z:Landroid/view/MenuItem;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private static final w1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final x1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/n;->Y(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->p(Z)V

    return p1
.end method

.method private final y1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/n;->u()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->t()Landroidx/lifecycle/y;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->r1()Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/q;->getItemCount()I

    move-result v1

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$i;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$i;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->J0(IILw8/a;)V

    :cond_0
    return-void
.end method

.method private static final z1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->a()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_key_note_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {p0, v3, v4}, Lcom/coloros/translate/ui/simultaneous/history/o0;->y(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_simultaneous_history:I

    return p0
.end method

.method public onBackPressed()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousHistoryActivity"

    const-string v2, "onBackPressed"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->u()Landroidx/lifecycle/y;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/o0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->p(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryActivity"

    const-string v1, "onCreate"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->t1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->q1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->s1()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->onDestroy()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryActivity"

    const-string v1, "onDestroy"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryActivity"

    const-string v1, "onPause"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryActivity"

    const-string v1, "onResume"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryActivity"

    const-string v1, "onStart"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryActivity"

    const-string v1, "onStop"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
