.class public final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;
.super Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity<",
        "Lcom/coloros/translate/ui/simultaneous/history/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final M:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$a;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private C:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private D:Landroid/view/View;

.field private E:I

.field private F:Landroid/media/MediaPlayer;

.field private G:Landroidx/appcompat/app/c;

.field private H:J

.field private final I:Ln8/j;

.field private final J:Ln8/j;

.field private final K:Ln8/j;

.field private final L:Ln8/j;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/View;

.field private w:Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Lcom/coui/appcompat/seekbar/COUISeekBar;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->M:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->H:J

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$l;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$l;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->I:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$o;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->J:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$m;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$m;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->K:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->L:Ln8/j;

    return-void
.end method

.method private final A1()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->x()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$b;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->w()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$c;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->v()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$d;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->E()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$e;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$e;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->D()Landroidx/lifecycle/y;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    return-void
.end method

.method private final B1()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->C:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mToolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    sget v1, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/c0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/c0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/coloros/translate/R$menu;->simultaneous_history_details_menu:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$id;->share:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/d0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/d0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$id;->rename:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/e0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/e0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->delete:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/f0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/f0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private static final C1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->x()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->x()Landroidx/lifecycle/y;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;

    invoke-direct {v1, p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;-><init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->N0(Ljava/lang/String;Lw8/l;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final D1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->v()V

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->K0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;IILw8/a;ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final E1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final F1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->S1()V

    const/4 p0, 0x1

    return p0
.end method

.method private final G1()V
    .locals 6

    sget v0, Lcom/coloros/translate/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->r:Landroid/widget/LinearLayout;

    sget v0, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->C:Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget v0, Lcom/coloros/translate/R$id;->divider_line_bottom:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->v:Landroid/view/View;

    sget v0, Lcom/coloros/translate/R$id;->ll_recording_play:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->w:Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;

    sget v0, Lcom/coloros/translate/R$id;->tv_audio_duration:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->z:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/R$id;->tv_audio_current_position:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/seekbar/COUISeekBar;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->y:Lcom/coui/appcompat/seekbar/COUISeekBar;

    sget v0, Lcom/coloros/translate/R$id;->iv_audio_control:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    sget v0, Lcom/coloros/translate/R$id;->navigation_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->D:Landroid/view/View;

    sget v0, Lcom/coloros/translate/R$id;->recycler_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->B:Landroidx/recyclerview/widget/COUIRecyclerView;

    sget v0, Lcom/coloros/translate/R$id;->display_language_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->s:Landroid/widget/LinearLayout;

    sget v0, Lcom/coloros/translate/R$id;->tv_show_both_language:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->t:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/R$id;->tv_show_translation:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mSwitchDisplayLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/z;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/z;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->B:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_1

    const-string v0, "mHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$dimen;->dp_24:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance v2, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->v1()Lcom/coloros/translate/ui/simultaneous/history/h0;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->v1()Lcom/coloros/translate/ui/simultaneous/history/h0;

    move-result-object v2

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$i;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$i;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v2, v3}, Lcom/coloros/translate/ui/simultaneous/history/h0;->r(Lcom/coloros/translate/ui/simultaneous/history/h0$e;)V

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$k;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$k;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$j;

    invoke-direct {v3, v2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$j;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$k;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const-string v0, "mAudioControlButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/a0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/a0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->r:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    const-string v0, "mRootView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/b0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/b0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-static {v1, v0}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    return-void
.end method

.method private static final H1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->M()V

    return-void
.end method

.method private static final I1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->w()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->L1(J)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->K(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "start play!!!!!!!!!!"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->W1()V

    :goto_0
    return-void
.end method

.method private static final J1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/a1$m;->d()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object p1

    iget p1, p1, Lu/e;->d:I

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->E:I

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->D:Landroid/view/View;

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

    iget v2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->E:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->D:Landroid/view/View;

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

.method private final K1()V
    .locals 5

    const-string v0, "SimultaneousHistoryDetailsActivity"

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const-string v3, "mAudioControlButton"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    sget v4, Lcom/coloros/translate/R$drawable;->ic_recording_pause:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    sget v1, Lcom/coloros/translate/R$string;->simultaneous_audio_play_content_description:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "updateRecordingPlayState pause"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "Error MediaPlayer start:"

    invoke-virtual {v2, v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u1()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x1()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private final L1(J)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "playSeekTo startTime"

    const-string v2, "SimultaneousHistoryDetailsActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->W1()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "Error MediaPlayer seekTo (may not be prepared yet):"

    invoke-virtual {p2, v2, v0, p1}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->box-impl(Ljava/lang/Object;)Ln8/r;

    :cond_2
    return-void
.end method

.method private final M1(Ljava/lang/String;)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "SimultaneousHistoryDetailsActivity"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "playAudio -> File path is Empty"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "playAudio -> mMediaPlayer is not null"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->v:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "mDividerLineBottom"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->w:Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;

    if-nez v0, :cond_3

    const-string v0, "mAudioPlayView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->y:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-nez v0, :cond_4

    const-string v0, "mSeekBar"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->w1()Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    const-string v0, "mAudioControlButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    sget v0, Lcom/coloros/translate/R$string;->simultaneous_audio_play_content_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/history/s;

    invoke-direct {p1, p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/s;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/history/x;

    invoke-direct {p1, p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/x;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/history/y;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/y;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playAudio -> e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/l0;

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/l0;->N(J)V

    :cond_6
    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    return-void
.end method

.method private static final N1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_runCatching"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "playAudio setOnPreparedListener"

    invoke-virtual {p2, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->y:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const-string v0, "mSeekBar"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->y:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->A()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x:Landroid/widget/TextView;

    if-nez p2, :cond_2

    const-string p2, "mAudioCurrentPos"

    invoke-static {p2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_2
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->A()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->z:Landroid/widget/TextView;

    if-nez p2, :cond_3

    const-string p2, "mAudioDuration"

    invoke-static {p2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p2

    int-to-long v2, p2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->y1()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->A()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method private static final O1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_runCatching"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "playAudio setOnCompletionListener"

    invoke-virtual {p2, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    const-string v0, "mAudioControlButton"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    sget v2, Lcom/coloros/translate/R$drawable;->ic_recording_pause:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    sget v0, Lcom/coloros/translate/R$string;->simultaneous_audio_play_content_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->y:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-nez p2, :cond_2

    const-string p2, "mSeekBar"

    invoke-static {p2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/ui/simultaneous/history/l0;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->K(Z)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x:Landroid/widget/TextView;

    if-nez p2, :cond_3

    const-string p2, "mAudioCurrentPos"

    invoke-static {p2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u1()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x1()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final P1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playAudio setOnErrorListener  what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   extra:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SimultaneousHistoryDetailsActivity"

    invoke-virtual {p1, p3, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    const/4 p2, 0x0

    const-string p3, "mAudioControlButton"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    sget v0, Lcom/coloros/translate/R$drawable;->ic_recording_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    sget p1, Lcom/coloros/translate/R$string;->simultaneous_audio_play_content_description:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u1()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x1()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    const-wide/16 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/l0;->N(J)V

    const/4 p0, 0x0

    return p0
.end method

.method private final Q1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    sget p2, Lcom/coloros/translate/R$string;->share:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "SimultaneousHistoryDetailsActivity"

    const-string p2, "shareAudioFile -> No apps available to share files"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic R0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->H1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V

    return-void
.end method

.method private final R1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "SimultaneousHistoryDetailsActivity"

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x61a80

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "shareText -> too length"

    invoke-virtual {v1, v0, v3}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lb9/d;->e(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    :try_start_0
    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    sget p2, Lcom/coloros/translate/R$string;->share:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareText error:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "shareText -> No app available to share text"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "shareText -> text is empty"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->C1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private final S1()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/coloros/translate/utils/n;->X(Lcom/coloros/translate/utils/n;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$layout;->dialog_simultaneous_history_share:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->w()Landroidx/lifecycle/y;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v3, "findViewById(...)"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/coloros/translate/R$id;->tv_share_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    new-instance v5, Lcom/coloros/translate/ui/simultaneous/history/u;

    invoke-direct {v5, p0}, Lcom/coloros/translate/ui/simultaneous/history/u;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/coloros/translate/R$id;->divider_line_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v1, Lcom/coloros/translate/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v5, Lcom/coloros/translate/ui/simultaneous/history/v;

    invoke-direct {v5, p0}, Lcom/coloros/translate/ui/simultaneous/history/v;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->x()Landroidx/lifecycle/y;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    sget v5, Lcom/coloros/translate/R$id;->tv_share_recording:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/TextView;

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/history/w;

    invoke-direct {v3, p0, v1}, Lcom/coloros/translate/ui/simultaneous/history/w;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Lcom/coloros/translate/repository/local/SimultaneousHistory;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/coloros/translate/R$id;->divider_line_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/coloros/translate/R$string;->share:I

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->G:Landroidx/appcompat/app/c;

    return-void
.end method

.method public static synthetic T0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->z1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    return-void
.end method

.method private static final T1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/n;->W(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/l0;

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->H:J

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$n;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$n;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/l0;->B(JLw8/l;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->G:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic U0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Lcom/coloros/translate/repository/local/SimultaneousHistory;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->V1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Lcom/coloros/translate/repository/local/SimultaneousHistory;Landroid/view/View;)V

    return-void
.end method

.method private static final U1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v0, "3"

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/n;->W(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->G:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic V0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->U1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final V1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Lcom/coloros/translate/repository/local/SimultaneousHistory;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v0, "2"

    invoke-virtual {p2, v0}, Lcom/coloros/translate/utils/n;->W(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->Q1(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->G:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic W0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->N1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private final W1()V
    .locals 5

    const-string v0, "SimultaneousHistoryDetailsActivity"

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->K1()V

    goto :goto_4

    :cond_0
    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "updateRecordingPlayState start"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, "mAudioControlButton"

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    sget v4, Lcom/coloros/translate/R$drawable;->ic_recording_playing:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    sget v1, Lcom/coloros/translate/R$string;->simultaneous_audio_pause_content_description:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->X1()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "Error MediaPlayer start (may not be prepared yet):"

    invoke-virtual {v1, v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public static synthetic X0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private final X1()V
    .locals 8

    const-string v0, "SimultaneousHistoryDetailsActivity"

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v1, v2}, Lb9/d;->e(II)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->y:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "mSeekBar"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x:Landroid/widget/TextView;

    if-nez v2, :cond_1

    const-string v2, "mAudioCurrentPos"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    div-long v4, v1, v4

    invoke-static {v4, v5}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSeekBar currentPosition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v3, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/l0;->N(J)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u1()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x1()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u1()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x1()Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "updateSeekBar: MediaPlayer not prepared yet, duration = 0"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    :goto_2
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "Error updateSeekBar:"

    invoke-virtual {v2, v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-static {p0}, Ln8/r;->box-impl(Ljava/lang/Object;)Ln8/r;

    :cond_4
    return-void
.end method

.method public static synthetic Y0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->P1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->T1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->I1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->J1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->O1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic d1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->D1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->E1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic f1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic g1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u1()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/h0;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->v1()Lcom/coloros/translate/ui/simultaneous/history/h0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->B:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method public static final synthetic j1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic l1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/l0;
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    return-object p0
.end method

.method public static final synthetic n1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x1()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->L1(J)V

    return-void
.end method

.method public static final synthetic p1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->M1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic q1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic r1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->R1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic s1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->X1()V

    return-void
.end method

.method private final t1()V
    .locals 6

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/responsiveui/R$dimen;->grid_list_special_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTablet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "    paddingValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimultaneousHistoryDetailsActivity"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$id;->content_layout:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->setPercentIndentEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v1, v4, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->w:Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;

    if-nez p0, :cond_1

    const-string p0, "mAudioPlayView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->setPercentIndentEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private final u1()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->I:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final v1()Lcom/coloros/translate/ui/simultaneous/history/h0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->K:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/h0;

    return-object p0
.end method

.method private final w1()Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->L:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method private final x1()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->J:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final y1()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->z:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mAudioDuration"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/t;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/history/t;-><init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final z1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x:Landroid/widget/TextView;

    const-string v1, "mAudioCurrentPos"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->z:Landroid/widget/TextView;

    const-string v4, "mAudioDuration"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/coloros/translate/R$dimen;->dp_10:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->z:Landroid/widget/TextView;

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x:Landroid/widget/TextView;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_simultaneous_history_details:I

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "onCreate"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->G1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->t1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->B1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A1()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_key_note_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->H:J

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/l0;

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->H:J

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->F(J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->onDestroy()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousHistoryDetailsActivity"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->u1()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->x1()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->F:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "onPause"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousHistoryDetailsActivity"

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->X1()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "onStart"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousHistoryDetailsActivity"

    const-string v2, "onStop"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->K1()V

    return-void
.end method
