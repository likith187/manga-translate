.class public final Lcom/coloros/translate/panel/TextTranslationPanel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/panel/TextTranslationPanel$a;
    }
.end annotation


# static fields
.field public static final g0:Lcom/coloros/translate/panel/TextTranslationPanel$a;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/TextView;

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:Ljava/lang/Integer;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:I

.field private final S:I

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private final a:Landroid/content/Context;

.field private a0:Z

.field private b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private b0:Z

.field private c:Lf2/b;

.field private c0:Landroid/animation/ValueAnimator;

.field private d:Landroid/view/View;

.field private final d0:I

.field private e:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private e0:I

.field private f:Lcom/coloros/translate/panel/ScrollableTextView;

.field private f0:Z

.field private g:Lcom/coloros/translate/panel/ScrollableTextView;

.field private h:Lcom/coloros/translate/panel/ScrollableTextView;

.field private i:Lcom/coloros/translate/panel/ScrollableTextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/airbnb/lottie/LottieAnimationView;

.field private t:Lcom/airbnb/lottie/LottieAnimationView;

.field private u:Lcom/airbnb/lottie/LottieAnimationView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/panel/TextTranslationPanel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/panel/TextTranslationPanel;->g0:Lcom/coloros/translate/panel/TextTranslationPanel$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    const/4 v0, 0x4

    iput v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->I:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->K:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->P:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Q:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/base/R$dimen;->common_dp_80:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->S:I

    iput-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->U:Z

    iput-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->V:Z

    iput-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->W:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/coloros/translate/base/R$dimen;->common_dp_64:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d0:I

    iput-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f0:Z

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/panel/TextTranslationPanel;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->T:I

    return p0
.end method

.method public static final synthetic B(Lcom/coloros/translate/panel/TextTranslationPanel;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->I:I

    return p0
.end method

.method public static final synthetic C(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->l:Landroid/view/View;

    return-object p0
.end method

.method private final C0()V
    .locals 10

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->R()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    const/4 v2, 0x1

    const-string v3, "TextTranslationPanel"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-boolean v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->U:Z

    if-eqz v5, :cond_0

    div-int/lit8 v0, v0, 0x2

    iget v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d0:I

    :goto_0
    sub-int/2addr v0, v5

    goto :goto_1

    :cond_0
    div-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/coloros/translate/base/R$dimen;->common_dp_24:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_1
    move v5, v4

    :goto_2
    sget-object v6, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateBottomLine] source h: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", halfMaxHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/coloros/translate/base/R$dimen;->common_dp_12:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    if-ge v5, v0, :cond_2

    invoke-virtual {v1, v4}, Lcom/coloros/translate/panel/ScrollableTextView;->e(Z)V

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v2}, Lcom/coloros/translate/panel/ScrollableTextView;->e(Z)V

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->m:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v7, :cond_4

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    if-eqz v5, :cond_5

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->i:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->g:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v4

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updateBottomLine] target h: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tv h: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/coloros/translate/base/R$dimen;->common_dp_12:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-virtual {v0, v4}, Lcom/coloros/translate/panel/ScrollableTextView;->e(Z)V

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v2}, Lcom/coloros/translate/panel/ScrollableTextView;->e(Z)V

    :goto_6
    move v4, v3

    :cond_9
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->n:Landroid/view/View;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_a

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    :cond_a
    if-eqz v1, :cond_b

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4, v0, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_b
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method public static final synthetic D(Lcom/coloros/translate/panel/TextTranslationPanel;)Lcom/coloros/translate/panel/ScrollableTextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    return-object p0
.end method

.method private final D0()V
    .locals 9

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "TextTranslationPanel"

    if-nez v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "updateFrameLayout:sourceLt measuredWidth is 0"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->e0:I

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f:Lcom/coloros/translate/panel/ScrollableTextView;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-le v0, v3, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iget-boolean v4, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->X:Z

    if-nez v4, :cond_6

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    goto :goto_5

    :cond_6
    :goto_4
    iget-boolean v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->V:Z

    :goto_5
    const/16 v6, 0x8

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->p:Landroid/widget/ImageView;

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    move v4, v3

    goto :goto_8

    :cond_8
    iget-object v4, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->p:Landroid/widget/ImageView;

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    move v4, v1

    :goto_8
    if-nez v5, :cond_b

    if-eqz v4, :cond_a

    goto :goto_9

    :cond_a
    move v3, v1

    :cond_b
    :goto_9
    iput-boolean v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->U:Z

    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_c

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_a

    :cond_c
    move v3, v1

    :goto_a
    invoke-direct {p0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->S(Z)I

    move-result v4

    iget-boolean v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->X:Z

    if-nez v5, :cond_f

    if-nez v0, :cond_d

    goto :goto_c

    :cond_d
    sub-int v0, v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d0:I

    if-le v0, v1, :cond_e

    const-wide/16 v0, 0x28a

    goto :goto_b

    :cond_e
    const-wide/16 v0, 0x1c2

    :goto_b
    iget-object v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v5, :cond_12

    new-instance v6, Lf2/c;

    invoke-direct {v6, p0}, Lf2/c;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    const/4 v7, 0x2

    int-to-long v7, v7

    div-long/2addr v0, v7

    invoke-virtual {v5, v6, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    :cond_f
    :goto_c
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->o:Landroid/widget/ImageView;

    if-nez v0, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez v0, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_12
    :goto_e
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_f

    :cond_13
    const/4 v1, 0x0

    :goto_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFrameLayout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/coloros/translate/panel/TextTranslationPanel;->y0(II)V

    return-void
.end method

.method public static final synthetic E(Lcom/coloros/translate/panel/TextTranslationPanel;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method private static final E0(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->o:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_1
    return-void
.end method

.method public static final synthetic F(Lcom/coloros/translate/panel/TextTranslationPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Y:Z

    return p0
.end method

.method public static final synthetic G(Lcom/coloros/translate/panel/TextTranslationPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a0:Z

    return p0
.end method

.method private final G0(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslationPanel"

    const-string p2, "updatePanelInnerHeight: height has not change"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    iget v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->R:I

    if-ge p1, v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->S(Z)I

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->C0()V

    :cond_5
    return-void
.end method

.method public static final synthetic H(Lcom/coloros/translate/panel/TextTranslationPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b0:Z

    return p0
.end method

.method static synthetic H0(Lcom/coloros/translate/panel/TextTranslationPanel;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/panel/TextTranslationPanel;->G0(IZ)V

    return-void
.end method

.method public static final synthetic I(Lcom/coloros/translate/panel/TextTranslationPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->U:Z

    return p0
.end method

.method public static final synthetic J(Lcom/coloros/translate/panel/TextTranslationPanel;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->T:I

    return-void
.end method

.method public static final synthetic K(Lcom/coloros/translate/panel/TextTranslationPanel;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->I:I

    return-void
.end method

.method public static final synthetic L(Lcom/coloros/translate/panel/TextTranslationPanel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Y:Z

    return-void
.end method

.method public static final synthetic M(Lcom/coloros/translate/panel/TextTranslationPanel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->X:Z

    return-void
.end method

.method public static final synthetic N(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->C0()V

    return-void
.end method

.method public static final synthetic O(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->D0()V

    return-void
.end method

.method public static final synthetic P(Lcom/coloros/translate/panel/TextTranslationPanel;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/panel/TextTranslationPanel;->G0(IZ)V

    return-void
.end method

.method private final Q()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationPanel"

    const-string v1, "calculateLanguageLayout:frameWidth is 0"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->H:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->H:Landroid/widget/TextView;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/base/R$dimen;->common_dp_32:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    iget-object v4, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coloros/translate/base/R$dimen;->common_dp_16:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v2, v4

    const v4, 0x3faccccd    # 1.35f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/base/R$dimen;->common_dp_8:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    :cond_2
    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->H:Landroid/widget/TextView;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_1
    move v1, v2

    :cond_4
    iget v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->S:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    if-lt v2, v1, :cond_5

    if-lt v3, v1, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    :cond_5
    if-lt v2, v1, :cond_6

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    :cond_6
    if-lt v3, v1, :cond_7

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_2
    return-void
.end method

.method private final R()I
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d:Landroid/view/View;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->e:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->T:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/base/R$dimen;->common_dp_34:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr v0, p0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private final S(Z)I
    .locals 5

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->R()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TextTranslationPanel"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "calculateTextHeight:textFrameHeight is invalid"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v3, :cond_4

    iget-boolean v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->U:Z

    if-eqz v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d0:I

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/coloros/translate/base/R$dimen;->common_dp_24:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->X:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a0:Z

    if-eqz v1, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "calculateTextHeight:isSmallScreen"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->e0:I

    :goto_2
    move v1, p0

    goto :goto_3

    :cond_2
    iget p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->e0:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/base/R$dimen;->common_dp_48:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return v1
.end method

.method private final T()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->u:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/base/R$string;->generating:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->u:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/base/R$dimen;->common_dp_32:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->u:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    sget v2, Lcom/coloros/translate/base/R$raw;->ic_translation_panel_loading:I

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->C:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->u:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private final W(Landroid/content/Context;)[I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string v4, "getBounds(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    if-le v4, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->s0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b0:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float p0, p0, v2

    if-lez p0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/coloros/translate/base/R$dimen;->common_dp_24:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr v1, p0

    :cond_2
    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    goto :goto_4

    :cond_3
    iput-boolean v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a0:Z

    int-to-float p0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/coloros/translate/base/R$dimen;->common_dp_20:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr p0, p1

    :goto_2
    move v1, p0

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    int-to-float p0, v0

    const p1, 0x3f333333    # 0.7f

    :goto_3
    mul-float/2addr p0, p1

    goto :goto_2

    :cond_5
    int-to-float p0, v0

    const p1, 0x3f59999a    # 0.85f

    goto :goto_3

    :cond_6
    :goto_4
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPanelPeekHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TextTranslationPanel"

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    float-to-int p0, v1

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private final Y(Landroid/widget/TextView;)Landroid/text/StaticLayout;
    .locals 4

    new-instance p0, Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p0, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const-string v0, "obtain(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final b0(Lcom/coloros/translate/panel/TextTranslationPanel;Lw8/a;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onHidden"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanel"

    const-string v2, "hideLoadingView done"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->B:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->A:Landroid/view/View;

    const/16 v2, 0x8

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->C:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->D:Landroid/view/View;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Lcom/coloros/translate/panel/TextTranslationPanel$b;

    invoke-direct {v2, p0}, Lcom/coloros/translate/panel/TextTranslationPanel$b;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->u:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    :cond_6
    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Z:Z

    return-void
.end method

.method private final c0(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/coloros/translate/base/R$id;->containerLt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->B:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    sget v1, Lcom/coloros/translate/base/R$id;->toolBar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->e:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p1, :cond_2

    sget v1, Lcom/coloros/translate/base/R$id;->titleTv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->v:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget v1, Lcom/coloros/translate/base/R$id;->loadingContainerLt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->A:Landroid/view/View;

    if-eqz p1, :cond_4

    sget v1, Lcom/coloros/translate/base/R$id;->loadingLt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->C:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    sget v1, Lcom/coloros/translate/base/R$id;->generatingErrorLt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->D:Landroid/view/View;

    if-eqz p1, :cond_6

    sget v1, Lcom/coloros/translate/base/R$id;->generatingErrorTv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->E:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    sget v1, Lcom/coloros/translate/base/R$id;->generatingErrorIv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_7

    :cond_7
    move-object v1, v0

    :goto_7
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->F:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    sget v1, Lcom/coloros/translate/base/R$id;->retryBtn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object v1, v0

    :goto_8
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->G:Landroid/view/View;

    if-eqz p1, :cond_9

    sget v1, Lcom/coloros/translate/base/R$id;->sourceLt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_9

    :cond_9
    move-object v1, v0

    :goto_9
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->y:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    sget v1, Lcom/coloros/translate/base/R$id;->sourceHolderTv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/panel/ScrollableTextView;

    goto :goto_a

    :cond_a
    move-object v1, v0

    :goto_a
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_b

    sget v1, Lcom/coloros/translate/base/R$id;->targetHolderTv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/panel/ScrollableTextView;

    goto :goto_b

    :cond_b
    move-object v1, v0

    :goto_b
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->g:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_c

    sget v1, Lcom/coloros/translate/base/R$id;->sourceTv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/panel/ScrollableTextView;

    goto :goto_c

    :cond_c
    move-object v1, v0

    :goto_c
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_d

    sget v1, Lcom/coloros/translate/base/R$id;->targetTv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/panel/ScrollableTextView;

    goto :goto_d

    :cond_d
    move-object v1, v0

    :goto_d
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->i:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_e

    sget v1, Lcom/coloros/translate/base/R$id;->expandIv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_e

    :cond_e
    move-object v1, v0

    :goto_e
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->o:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    sget v1, Lcom/coloros/translate/base/R$id;->collapseIv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_f

    :cond_f
    move-object v1, v0

    :goto_f
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->p:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    sget v1, Lcom/coloros/translate/base/R$id;->sourcePlayerIv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_10

    :cond_10
    move-object v1, v0

    :goto_10
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_11

    sget v1, Lcom/coloros/translate/base/R$id;->targetPlayerIv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_11

    :cond_11
    move-object v1, v0

    :goto_11
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    sget v1, Lcom/coloros/translate/base/R$id;->sourcePlayerAnimationView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_12

    :cond_12
    move-object v1, v0

    :goto_12
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->s:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_13

    sget v1, Lcom/coloros/translate/base/R$id;->targetPlayerAnimationView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_13

    :cond_13
    move-object v1, v0

    :goto_13
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->t:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_14

    sget v1, Lcom/coloros/translate/base/R$id;->sourcePlayerLt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_14

    :cond_14
    move-object v1, v0

    :goto_14
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->l:Landroid/view/View;

    if-eqz p1, :cond_15

    sget v1, Lcom/coloros/translate/base/R$id;->sourceLine:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_15

    :cond_15
    move-object v1, v0

    :goto_15
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->m:Landroid/view/View;

    if-eqz p1, :cond_16

    sget v1, Lcom/coloros/translate/base/R$id;->targetLine:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_16

    :cond_16
    move-object v1, v0

    :goto_16
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->n:Landroid/view/View;

    if-eqz p1, :cond_17

    sget v1, Lcom/coloros/translate/base/R$id;->switchButton:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_17

    :cond_17
    move-object v1, v0

    :goto_17
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_18

    sget v1, Lcom/coloros/translate/base/R$id;->copyIv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_18

    :cond_18
    move-object v1, v0

    :goto_18
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_19

    sget v1, Lcom/coloros/translate/base/R$id;->language_source:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_19

    :cond_19
    move-object v1, v0

    :goto_19
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    if-eqz p1, :cond_1a

    sget v1, Lcom/coloros/translate/base/R$id;->language_target:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_1a

    :cond_1a
    move-object v1, v0

    :goto_1a
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    if-eqz p1, :cond_1b

    sget v1, Lcom/coloros/translate/base/R$id;->bottomLt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    goto :goto_1b

    :cond_1b
    move-object v1, v0

    :goto_1b
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1c

    sget v1, Lcom/coloros/translate/base/R$id;->exportTv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_1c

    :cond_1c
    move-object v1, v0

    :goto_1c
    iput-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->X()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f0:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPanelView, showCloseText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextTranslationPanel"

    invoke-virtual {v1, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    sget v0, Lcom/coloros/translate/base/R$id;->closeIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1d
    if-nez v0, :cond_1e

    goto :goto_1d

    :cond_1e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    if-eqz p1, :cond_22

    sget v0, Lcom/coloros/translate/base/R$id;->closeTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_22

    new-instance v0, Lf2/q;

    invoke-direct {v0, p0}, Lf2/q;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1f

    :cond_1f
    if-eqz p1, :cond_20

    sget v0, Lcom/coloros/translate/base/R$id;->closeTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :cond_20
    if-nez v0, :cond_21

    goto :goto_1e

    :cond_21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1e
    if-eqz p1, :cond_22

    sget v0, Lcom/coloros/translate/base/R$id;->closeIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_22

    new-instance v0, Lf2/d;

    invoke-direct {v0, p0}, Lf2/d;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_22
    :goto_1f
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_23

    new-instance v0, Lf2/e;

    invoke-direct {v0, p0}, Lf2/e;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_23
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_24

    new-instance v0, Lf2/f;

    invoke-direct {v0, p0}, Lf2/f;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_24
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->s:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_25

    new-instance v0, Lf2/g;

    invoke-direct {v0, p0}, Lf2/g;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_25
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->t:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_26

    new-instance v0, Lf2/h;

    invoke-direct {v0, p0}, Lf2/h;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_26
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->H:Landroid/widget/TextView;

    if-eqz p1, :cond_27

    new-instance v0, Lf2/i;

    invoke-direct {v0, p0}, Lf2/i;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_27
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    if-eqz p1, :cond_28

    new-instance v0, Lf2/j;

    invoke-direct {v0, p0}, Lf2/j;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_28
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    if-eqz p1, :cond_29

    new-instance v0, Lf2/k;

    invoke-direct {v0, p0}, Lf2/k;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_29
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_2a

    new-instance v0, Lf2/l;

    invoke-direct {v0, p0}, Lf2/l;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2a
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_2b

    new-instance v0, Lf2/r;

    invoke-direct {v0, p0}, Lf2/r;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->o:Landroid/widget/ImageView;

    if-eqz p1, :cond_2c

    new-instance v0, Lf2/s;

    invoke-direct {v0, p0}, Lf2/s;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->p:Landroid/widget/ImageView;

    if-eqz p1, :cond_2d

    new-instance v0, Lf2/t;

    invoke-direct {v0, p0}, Lf2/t;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2d
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->G:Landroid/view/View;

    if-eqz p1, :cond_2e

    new-instance v0, Lf2/u;

    invoke-direct {v0, p0}, Lf2/u;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2e
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    if-nez p1, :cond_2f

    goto :goto_20

    :cond_2f
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    if-nez p1, :cond_30

    goto :goto_21

    :cond_30
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_21
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->j:Landroid/widget/ImageView;

    if-nez p1, :cond_31

    goto :goto_22

    :cond_31
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    :cond_32
    :goto_22
    iget-boolean p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Q:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_34

    sget v0, Lcom/coloros/translate/base/R$drawable;->common_ic_swtich:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23

    :cond_33
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_34

    sget v0, Lcom/coloros/translate/base/R$drawable;->common_ic_switch_single:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_34
    :goto_23
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    invoke-direct {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->Y(Landroid/widget/TextView;)Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/base/R$dimen;->common_dp_48:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_24

    :cond_35
    move v2, v0

    :goto_24
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->i:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_36
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->v:Landroid/widget/TextView;

    if-nez p1, :cond_37

    goto :goto_25

    :cond_37
    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->L:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_25
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez p1, :cond_38

    goto :goto_26

    :cond_38
    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->J:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_26
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->i:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez p1, :cond_39

    goto :goto_27

    :cond_39
    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->K:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_27
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->l:Landroid/view/View;

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3a
    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->m0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final d0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->s()V

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->k0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final e0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0, v3}, Lf2/b;->m(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->p0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final f0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationPanel"

    const-string v1, "languageTargetTv OnClicked"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lf2/b;->m(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->d0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final g0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->r()V

    :cond_1
    return-void
.end method

.method public static synthetic h(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->f0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final h0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->k()V

    :cond_1
    return-void
.end method

.method public static synthetic i(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->E0(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    return-void
.end method

.method private static final i0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationPanel"

    const-string v1, "expandPanel"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    instance-of v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    iput-boolean v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Y:Z

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->X:Z

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->D0()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic j(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->h0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final j0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationPanel"

    const-string v1, "collapsePanel"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->X:Z

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->D0()V

    return-void
.end method

.method public static synthetic k(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->x0(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    return-void
.end method

.method private static final k0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->y()V

    :cond_1
    return-void
.end method

.method public static synthetic l(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->j0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final l0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationPanel"

    const-string v1, "closeTv clicked!"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->z()V

    :cond_1
    return-void
.end method

.method public static synthetic m(Lcom/coloros/translate/panel/TextTranslationPanel;Lw8/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->b0(Lcom/coloros/translate/panel/TextTranslationPanel;Lw8/a;)V

    return-void
.end method

.method private static final m0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->z()V

    :cond_1
    return-void
.end method

.method public static synthetic n(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->g0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final n0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->h()V

    :cond_1
    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/panel/TextTranslationPanel;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/panel/TextTranslationPanel;->z0(Lcom/coloros/translate/panel/TextTranslationPanel;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final o0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "targetPlayerIv OnClicked"

    const-string v1, "TextTranslationPanel"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->d()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "targetPlayerIv DuplicateClicked or isHideLoadingView, can not play"

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->e0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final p0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->h()V

    :cond_1
    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->i0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final q0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationPanel"

    const-string v1, "targetPlayerAnimationView OnClicked"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf2/b;->d()V

    :cond_1
    return-void
.end method

.method public static synthetic r(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->v0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic s(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->q0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private final s0(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lt2/a;->f(Landroid/content/Context;)Lt2/a;

    move-result-object p0

    invoke-virtual {p0}, Lt2/a;->l()Landroidx/lifecycle/y;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lt2/b$a;->UNFOLD:Lt2/b$a;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic t(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->l0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->n0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->o0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final v0(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lf2/b;->n()V

    :cond_0
    return-void
.end method

.method public static final synthetic w(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->Q()V

    return-void
.end method

.method public static final synthetic x(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private static final x0(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->T()V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->u:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->x()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    const/16 v0, 0x158

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    new-instance v0, Lcom/coloros/translate/panel/TextTranslationPanel$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/panel/TextTranslationPanel$d;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_0
    return-void
.end method

.method public static final synthetic y(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d:Landroid/view/View;

    return-object p0
.end method

.method private final y0(II)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showShrinkAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDraggable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->U:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/base/R$dimen;->common_dp_64:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :cond_2
    filled-new-array {p1, p2}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d0:I

    if-le p1, p2, :cond_3

    const-wide/16 p1, 0x28a

    goto :goto_1

    :cond_3
    const-wide/16 p1, 0x1c2

    :goto_1
    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lf2/n;

    invoke-direct {p1, p0, v0, v1}, Lf2/n;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;II)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coloros/translate/panel/TextTranslationPanel$e;

    invoke-direct {p1, p0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel$e;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;I)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic z(Lcom/coloros/translate/panel/TextTranslationPanel;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->R:I

    return p0
.end method

.method private static final z0(Lcom/coloros/translate/panel/TextTranslationPanel;IILandroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    if-eq p1, p2, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->l:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    int-to-float v1, p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->l:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->l:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->U:Z

    if-eqz p0, :cond_4

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const p3, 0x3f99999a    # 1.2f

    mul-float/2addr p2, p3

    sub-float/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public A0(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleSourcePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->q:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->s:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->x()V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    const/16 p1, 0x45

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    new-instance p1, Lcom/coloros/translate/panel/TextTranslationPanel$f;

    invoke-direct {p1, p0}, Lcom/coloros/translate/panel/TextTranslationPanel$f;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->q:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->s:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_3

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public B0(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleTargetPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->r:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->t:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->x()V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    const/16 p1, 0x45

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    new-instance p1, Lcom/coloros/translate/panel/TextTranslationPanel$g;

    invoke-direct {p1, p0}, Lcom/coloros/translate/panel/TextTranslationPanel$g;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->r:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->t:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public F0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "sourceLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLanguage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->O:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->P:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Q:Z

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->w:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->x:Landroid/widget/TextView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    sget p2, Lcom/coloros/translate/base/R$drawable;->common_ic_swtich:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    sget p2, Lcom/coloros/translate/base/R$drawable;->common_ic_switch_single:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lcom/coloros/translate/panel/TextTranslationPanel$h;

    invoke-direct {p2, p0}, Lcom/coloros/translate/panel/TextTranslationPanel$h;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-void
.end method

.method public U()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanel"

    const-string v2, "dismiss"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final V()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final X()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f0:Z

    return p0
.end method

.method public Z()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hide()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/Integer;Z)V
    .locals 6

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TextTranslationPanel"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v4, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->L:Ljava/lang/String;

    iput p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->M:I

    iput-object p3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->N:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez p1, :cond_9

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-direct {v1, v5, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget p2, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {p1, v1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    :cond_2
    if-eqz p4, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/coloros/translate/panel/TextTranslationPanel;->W(Landroid/content/Context;)[I

    move-result-object p2

    iget-boolean p3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a0:Z

    if-eqz p3, :cond_6

    sget p3, Lcom/coloros/translate/base/R$layout;->layout_text_translation_panel_small:I

    goto :goto_3

    :cond_6
    sget p3, Lcom/coloros/translate/base/R$layout;->layout_text_translation_panel:I

    :goto_3
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    invoke-virtual {p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentView()Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/coloros/translate/panel/TextTranslationPanel;->c0(Landroid/view/View;)V

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->showDragView()V

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setSkipCollapsed(Z)V

    aget p4, p2, v4

    iput p4, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->R:I

    invoke-virtual {p1, p4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPeekHeight(I)V

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHeight(I)V

    iget-boolean p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a0:Z

    xor-int/2addr p2, v4

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFirstShowCollapsed(Z)V

    new-instance p2, Lf2/p;

    invoke-direct {p2, p0}, Lf2/p;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    instance-of p3, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p3, :cond_7

    move-object v2, p2

    check-cast v2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelSkipCollapsed(Z)V

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    new-instance p2, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;

    invoke-direct {p2, p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v2, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addBottomSheetCallback(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V

    :cond_8
    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    :cond_9
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_a
    iget-boolean p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a0:Z

    if-eqz p1, :cond_b

    const-string p0, "isSmallLandscapeScreen,ignore updatePanelInnerHeight"

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->d:Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance p2, Lcom/coloros/translate/panel/TextTranslationPanel$c;

    invoke-direct {p2, p0}, Lcom/coloros/translate/panel/TextTranslationPanel$c;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_c
    return-void
.end method

.method public a0(Lw8/a;)V
    .locals 3

    const-string v0, "onHidden"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanel"

    const-string v2, "hideLoadingView delay"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->Z:Z

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->B:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lf2/m;

    invoke-direct {v1, p0, p1}, Lf2/m;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;Lw8/a;)V

    const-wide/16 p0, 0x15e

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanel"

    const-string v2, "updateTranslationText"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->J:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->g:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->i:Lcom/coloros/translate/panel/ScrollableTextView;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/coloros/translate/panel/ScrollableTextView;->d()V

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->i:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/coloros/translate/panel/ScrollableTextView;->d()V

    :cond_5
    iput-boolean p3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->V:Z

    iput-boolean p4, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->W:Z

    const/4 p1, 0x0

    const/4 p2, 0x4

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->q:Landroid/widget/ImageView;

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object p3, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->q:Landroid/widget/ImageView;

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    if-nez p4, :cond_a

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->r:Landroid/widget/ImageView;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->r:Landroid/widget/ImageView;

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance p2, Lcom/coloros/translate/panel/TextTranslationPanel$i;

    invoke-direct {p2, p0}, Lcom/coloros/translate/panel/TextTranslationPanel$i;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_c
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->h:Lcom/coloros/translate/panel/ScrollableTextView;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_d
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->A:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->C:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->D:Landroid/view/View;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->E:Landroid/widget/TextView;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/base/R$string;->generating_server_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->F:Landroid/widget/ImageView;

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/base/R$string;->generating_server_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->E:Landroid/widget/TextView;

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->F:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->u:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    :cond_a
    return-void
.end method

.method public r0()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t0(Lf2/b;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanel"

    const-string v2, "setOnPanelCallback"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->c:Lf2/b;

    return-void
.end method

.method public final u0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->f0:Z

    return-void
.end method

.method public w0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanel"

    const-string v2, "showLoadingView"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->z:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->A:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->C:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->D:Landroid/view/View;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel;->B:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    new-instance v1, Lf2/o;

    invoke-direct {v1, p0}, Lf2/o;-><init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
