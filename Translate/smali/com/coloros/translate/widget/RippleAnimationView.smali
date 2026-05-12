.class public final Lcom/coloros/translate/widget/RippleAnimationView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/widget/RippleAnimationView$a;,
        Lcom/coloros/translate/widget/RippleAnimationView$b;,
        Lcom/coloros/translate/widget/RippleAnimationView$c;
    }
.end annotation


# static fields
.field public static final m:Lcom/coloros/translate/widget/RippleAnimationView$b;


# instance fields
.field private a:Lcom/coloros/translate/widget/CircleView;

.field private b:Lcom/coloros/translate/widget/RippleView;

.field private c:Lcom/coloros/translate/widget/RippleView;

.field private f:Lcom/coloros/translate/widget/RippleView;

.field private h:Lcom/airbnb/lottie/LottieAnimationView;

.field private i:Landroid/widget/ImageView;

.field private j:I

.field private k:Lcom/coloros/translate/widget/RippleAnimationView$a;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/widget/RippleAnimationView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/widget/RippleAnimationView$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/widget/RippleAnimationView;->m:Lcom/coloros/translate/widget/RippleAnimationView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/coloros/translate/widget/RippleAnimationView$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/widget/RippleAnimationView$a;-><init>(Lcom/coloros/translate/widget/RippleAnimationView;)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->k:Lcom/coloros/translate/widget/RippleAnimationView$a;

    .line 3
    invoke-direct {p0}, Lcom/coloros/translate/widget/RippleAnimationView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/coloros/translate/widget/RippleAnimationView$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/widget/RippleAnimationView$a;-><init>(Lcom/coloros/translate/widget/RippleAnimationView;)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->k:Lcom/coloros/translate/widget/RippleAnimationView$a;

    .line 6
    invoke-direct {p0}, Lcom/coloros/translate/widget/RippleAnimationView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/coloros/translate/widget/RippleAnimationView$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/widget/RippleAnimationView$a;-><init>(Lcom/coloros/translate/widget/RippleAnimationView;)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->k:Lcom/coloros/translate/widget/RippleAnimationView$a;

    .line 9
    invoke-direct {p0}, Lcom/coloros/translate/widget/RippleAnimationView;->a()V

    return-void
.end method

.method private final a()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$layout;->ripple_animation_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/widget/CircleView;

    iput-object v1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->a:Lcom/coloros/translate/widget/CircleView;

    sget v1, Lcom/coloros/translate/R$id;->first_ripple:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/widget/RippleView;

    iput-object v1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->b:Lcom/coloros/translate/widget/RippleView;

    sget v1, Lcom/coloros/translate/R$id;->second_ripple:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/widget/RippleView;

    iput-object v1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->c:Lcom/coloros/translate/widget/RippleView;

    sget v1, Lcom/coloros/translate/R$id;->third_ripple:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/widget/RippleView;

    iput-object v1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->f:Lcom/coloros/translate/widget/RippleView;

    sget v1, Lcom/coloros/translate/R$id;->animationView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/coloros/translate/R$id;->micImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/translate/widget/RippleAnimationView$d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/widget/RippleAnimationView$d;-><init>(Lcom/coloros/translate/widget/RippleAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMAnimationRunnable()Lcom/coloros/translate/widget/RippleAnimationView$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->k:Lcom/coloros/translate/widget/RippleAnimationView$a;

    return-object p0
.end method

.method public final getMAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public final getMCircleView()Lcom/coloros/translate/widget/CircleView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->a:Lcom/coloros/translate/widget/CircleView;

    return-object p0
.end method

.method public final getMFirstRipple()Lcom/coloros/translate/widget/RippleView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->b:Lcom/coloros/translate/widget/RippleView;

    return-object p0
.end method

.method public final getMIsAnnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->l:Z

    return p0
.end method

.method public final getMMicImage()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMOnAnimationStatusChangeListener()Lcom/coloros/translate/widget/RippleAnimationView$c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMPlayStatus()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->j:I

    return p0
.end method

.method public final getMSecondRipple()Lcom/coloros/translate/widget/RippleView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->c:Lcom/coloros/translate/widget/RippleView;

    return-object p0
.end method

.method public final getMThirdRipple()Lcom/coloros/translate/widget/RippleView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView;->f:Lcom/coloros/translate/widget/RippleView;

    return-object p0
.end method

.method public final setMAnimationRunnable(Lcom/coloros/translate/widget/RippleAnimationView$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->k:Lcom/coloros/translate/widget/RippleAnimationView$a;

    return-void
.end method

.method public final setMAnimationView(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public final setMCircleView(Lcom/coloros/translate/widget/CircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->a:Lcom/coloros/translate/widget/CircleView;

    return-void
.end method

.method public final setMFirstRipple(Lcom/coloros/translate/widget/RippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->b:Lcom/coloros/translate/widget/RippleView;

    return-void
.end method

.method public final setMIsAnnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->l:Z

    return-void
.end method

.method public final setMMicImage(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->i:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMOnAnimationStatusChangeListener(Lcom/coloros/translate/widget/RippleAnimationView$c;)V
    .locals 0

    return-void
.end method

.method public final setMPlayStatus(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->j:I

    return-void
.end method

.method public final setMSecondRipple(Lcom/coloros/translate/widget/RippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->c:Lcom/coloros/translate/widget/RippleView;

    return-void
.end method

.method public final setMThirdRipple(Lcom/coloros/translate/widget/RippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView;->f:Lcom/coloros/translate/widget/RippleView;

    return-void
.end method
