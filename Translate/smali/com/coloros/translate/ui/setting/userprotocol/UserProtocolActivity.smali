.class public final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;
.super Lcom/coloros/translate/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BaseActivity<",
        "Lcom/coloros/translate/base/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$a;


# instance fields
.field private final o:Ljava/lang/StringBuffer;

.field private p:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

.field private q:Lcom/coui/appcompat/snackbar/COUISnackBar;

.field private final r:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->s:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->o:Ljava/lang/StringBuffer;

    sget-object v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$h;->INSTANCE:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$h;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->r:Ln8/j;

    return-void
.end method

.method public static synthetic D0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->c1(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->u1(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic F0(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->e1(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Landroid/net/Uri;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->v1(Landroid/net/Uri;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H0(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->d1(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/widget/ScrollView;)V

    return-void
.end method

.method public static final synthetic I0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->T0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;II)V

    return-void
.end method

.method public static final synthetic J0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->U0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    return-void
.end method

.method public static final synthetic K0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->V0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    return-void
.end method

.method public static final synthetic L0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/StringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->o:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static final synthetic M0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->X0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic N0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->Z0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    return-void
.end method

.method public static final synthetic O0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->a1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic P0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->b1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic Q0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/widget/TextView;Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->s1(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/widget/TextView;Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic R0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->t1(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic S0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->w1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final T0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;II)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$b;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;II)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->body(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;

    return-void
.end method

.method private final U0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;

    invoke-direct {v0, p0, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->body(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;

    return-void
.end method

.method private final V0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$d;

    invoke-direct {v0, p0, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$d;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->smallTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;

    return-void
.end method

.method private final X0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->r:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final Y0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$e;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->title(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Landroid/widget/TextView;

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$f;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final Z0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;

    invoke-direct {v0, p0, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->body(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;

    return-void
.end method

.method private final a1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$j;

    invoke-direct {v0, p2, p3, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$j;-><init>(ILjava/lang/String;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->body(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;

    return-void
.end method

.method private final b1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    new-instance v6, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;

    move-object v0, v6

    move v1, p2

    move-object v2, p3

    move v3, p5

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;-><init>(ILjava/lang/String;ZLjava/lang/String;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v6}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->body(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;

    return-void
.end method

.method private static final c1(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final d1(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/widget/ScrollView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$dimen;->dp_6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr p0, p1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserProtocolActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private static final e1(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 4

    invoke-static {}, Landroidx/core/view/a1$m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object v0

    iget v0, v0, Lu/e;->d:I

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupWindowInsets navigationBarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserProtocolActivity"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private final f1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$m;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$m;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final g1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$n;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final h1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$o;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final i1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$p;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$p;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final j1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final k1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$r;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$r;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final l1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$s;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$s;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final m1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$t;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$t;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final n1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final o1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$v;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$v;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final p1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final q1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$x;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$x;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final r1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$y;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$y;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    return-void
.end method

.method private final s1(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/widget/TextView;Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 6

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p4

    :goto_0
    if-gez p4, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    new-instance p3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/coloros/translate/R$style;->couiTextAppearanceButton2:I

    invoke-direct {p3, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    add-int/2addr p0, p4

    const/16 p2, 0x21

    invoke-virtual {p1, p3, p4, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p1
.end method

.method private final t1(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->q:Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->p:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coloros/translate/ui/setting/userprotocol/d;

    invoke-direct {v1, p0, v0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/d;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroid/net/Uri;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static final u1(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/coloros/translate/R$string;->toast_save_finish:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->make(Landroid/view/View;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$string;->jump_to_note:I

    new-instance v1, Lcom/coloros/translate/ui/setting/userprotocol/e;

    invoke-direct {v1, p2, p0}, Lcom/coloros/translate/ui/setting/userprotocol/e;-><init>(Landroid/net/Uri;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnAction(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->show()V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->q:Lcom/coui/appcompat/snackbar/COUISnackBar;

    return-void
.end method

.method private static final v1(Landroid/net/Uri;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object p2, Lcom/coloros/translate/utils/x;->INSTANCE:Lcom/coloros/translate/utils/x;

    invoke-virtual {p2, p1, p0}, Lcom/coloros/translate/utils/x;->c(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/x;->INSTANCE:Lcom/coloros/translate/utils/x;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/x;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method private final w1(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final W0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "link"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u2066"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2069"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/base/q;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_setting_protection_policy:I

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/translate/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserProtocolActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 p2, 0xff

    if-eq p1, p2, :cond_1

    const p2, 0xffff

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Lcom/coloros/translate/utils/x;->INSTANCE:Lcom/coloros/translate/utils/x;

    invoke-virtual {p2, p0, p1}, Lcom/coloros/translate/utils/x;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->o:Ljava/lang/StringBuffer;

    new-instance p3, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;

    invoke-direct {p3, p0, p1, p2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;Ljava/lang/StringBuffer;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p3, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1, v0, p1}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    sget p1, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget v1, Lcom/coloros/translate/R$id;->app_bar_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    sget v2, Lcom/coloros/translate/R$id;->scrollview:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    if-eqz p1, :cond_2

    sget v3, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    :cond_2
    if-eqz p1, :cond_3

    sget v3, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(I)V

    :cond_3
    if-eqz p1, :cond_4

    new-instance v3, Lcom/coloros/translate/ui/setting/userprotocol/a;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/setting/userprotocol/a;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->s(Z)V

    :cond_6
    invoke-static {v2, v0}, Landroidx/core/view/m0;->x0(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->getStatusBarView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/coloros/translate/ui/setting/userprotocol/b;

    invoke-direct {p1, v1, p0, v2}, Lcom/coloros/translate/ui/setting/userprotocol/b;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/coloros/translate/R$id;->coordinator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/c;

    invoke-direct {v0}, Lcom/coloros/translate/ui/setting/userprotocol/c;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    :cond_7
    sget p1, Lcom/coloros/translate/R$id;->protection_policy_recycler_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->p:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    sget p1, Lcom/coloros/translate/R$id;->protection_policy_content:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->Y0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->f1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->k1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->l1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->m1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->n1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->o1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->p1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->q1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->r1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->g1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->h1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->i1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->j1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V

    return-void
.end method

.method public r0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
