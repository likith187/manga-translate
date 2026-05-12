.class public final Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/d;
.implements Lf2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$a;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private f:Z

.field private final h:Ln8/j;

.field private final i:Ln8/j;

.field private final j:Ln8/j;

.field private k:Lcom/coloros/translate/o;

.field private l:Z

.field private m:Lcom/coloros/translate/b;

.field private n:Lcom/coloros/translate/b;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/Runnable;

.field private r:I

.field private s:I

.field private t:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->u:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->b:Ljava/lang/String;

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$i;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->h:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$j;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$j;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->i:Ln8/j;

    sget-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$b;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->j:Ln8/j;

    return-void
.end method

.method private final A0(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_0

    sget v0, Lcom/coloros/translate/R$string;->tip_max_length:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->u0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->u0(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/texttranslation/m0;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->y0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Z)V

    return-void
.end method

.method public static final synthetic f0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/LanguageManager;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic h0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/panel/TextTranslationPanel;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/ui/texttranslation/m0;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t0()V

    return-void
.end method

.method public static final synthetic k0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f:Z

    return-void
.end method

.method public static final synthetic l0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->z0(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V

    return-void
.end method

.method private final m0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v0}, Lcom/coloros/translate/base/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->v0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->x0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final n0()Lcom/coloros/translate/LanguageManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->j:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method private final o0()Lcom/coloros/translate/panel/TextTranslationPanel;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->h:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/panel/TextTranslationPanel;

    return-object p0
.end method

.method private final p0()Lcom/coloros/translate/ui/texttranslation/m0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->i:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/m0;

    return-object p0
.end method

.method private final q0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private final r0()Z
    .locals 6

    invoke-static {p0}, Lcom/coloros/translate/utils/z;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/utils/z;->f(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t:Ljava/lang/Boolean;

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t:Ljava/lang/Boolean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFoldScreenSizeChanged: foldStateChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", lastFoldState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentFoldState="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextTranslationPanelActivity"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t:Ljava/lang/Boolean;

    return v1
.end method

.method private final s0()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->z()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$c;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V

    new-instance v2, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$g;

    invoke-direct {v2, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$g;-><init>(Lw8/l;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->A()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$d;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V

    new-instance v2, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$g;

    invoke-direct {v2, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$g;-><init>(Lw8/l;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->w()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V

    new-instance v2, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$g;

    invoke-direct {v2, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$g;-><init>(Lw8/l;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method private final t0()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanelActivity"

    const-string v2, "readyToFinish: cancelled pending show dialog task"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private final u0(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlin/text/n;

    const-string v1, "^[\\n\\r]+|[\\n\\r]+$"

    invoke-direct {v0, v1}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->c:Ljava/lang/String;

    return-void
.end method

.method private final v0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$h;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$h;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v1}, Lcom/coloros/translate/base/a;->a(Landroid/app/Activity;ILe2/b;)V

    return-void
.end method

.method private final w0(Z)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->l:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTextTranslation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanelActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "startTextTranslation:checkAiDownload and finish"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    :cond_3
    new-instance v0, Lcom/coloros/translate/ui/texttranslation/l0;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/ui/texttranslation/l0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Z)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "startTextTranslation: Activity is finishing or destroyed, skip show dialog"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->w0(Z)V

    return-void
.end method

.method private static final y0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Z)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TextTranslationPanelActivity"

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startTextTranslation: Window is null, skip show dialog"

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/coloros/translate/R$string;->app_name_new:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "getString(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/coloros/translate/R$style;->AppNoTitleTheme:I

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lf2/a$a;->a(Lf2/a;Ljava/lang/String;ILjava/lang/Integer;ZILjava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->w0()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->l:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startTextTranslation doTranslate!!!!!!"

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/m0;->s()V

    :cond_3
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTextTranslation: Failed to show dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    :cond_4
    return-void

    :cond_5
    :goto_3
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startTextTranslation: Activity is finishing or destroyed after post, skip show dialog"

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q:Ljava/lang/Runnable;

    return-void
.end method

.method private final z0(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V
    .locals 6

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TextTranslationPanelActivity"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/coloros/translate/engine/offline/g;->getLanguageResIdByModel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/coloros/translate/base/R$string;->download_offline_package_tips:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->c(Ljava/lang/String;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lf2/a$a;->b(Lf2/a;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/utils/d0;

    const-string v2, "TextTranslationPanelWantToPlayTts"

    invoke-direct {v1, v2}, Lcom/coloros/translate/utils/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lx9/c;->k(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->E()V

    return-void
.end method

.method public h()V
    .locals 3

    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/utils/d0;

    const-string v2, "TextTranslationPanelWantToPlayTts"

    invoke-direct {v1, v2}, Lcom/coloros/translate/utils/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lx9/c;->k(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->D()V

    return-void
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 11

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->l:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->F()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLanguageChanged:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextTranslationPanelActivity"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-eq v0, v3, :cond_a

    if-ne v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "getString(...)"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getSimpleNameResId()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSimpleNameResId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coloros/translate/LanguageManager;->B()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    invoke-virtual {v9}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    sget-object v5, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    const/4 v6, 0x0

    if-eq v0, v5, :cond_6

    move v5, p1

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v8

    invoke-virtual {v8, v3, v7, v5}, Lcom/coloros/translate/panel/TextTranslationPanel;->F0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->m:Lcom/coloros/translate/b;

    if-ne v3, v0, :cond_8

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n:Lcom/coloros/translate/b;

    if-ne v3, v1, :cond_8

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/m0;->w()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    const-string p0, "onLanguageChanged: language is not change"

    invoke-virtual {v2, v4, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->m:Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n:Lcom/coloros/translate/b;

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/coloros/translate/ui/texttranslation/m0;->H(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-static {p0, v6, p1, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->x0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;ZILjava/lang/Object;)V

    :cond_9
    return-void

    :cond_a
    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->z0(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/texttranslation/m0;->r(Landroid/content/Context;)V

    return-void
.end method

.method public m(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->F()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->k:Lcom/coloros/translate/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/translate/o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->k:Lcom/coloros/translate/o;

    sget v1, Lcom/coloros/translate/R$drawable;->right_single_arrow:I

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o;->E(I)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->k:Lcom/coloros/translate/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/o;->G(Z)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->F()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->k:Lcom/coloros/translate/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/o;->t()V

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanelActivity"

    const-string v2, "onPanelDismiss"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t0()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->F()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->s:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged: currentNightMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newNightMode="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextTranslationPanel"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->r:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->s:I

    if-eq v5, p1, :cond_2

    move v3, v4

    :cond_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->r:I

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->s:I

    return-void

    :cond_4
    :goto_1
    const-string p1, "TextTranslationPanelActivity"

    const-string v0, "onConfigurationChanged: screen rotation or night mode changed, closing panel"

    invoke-virtual {v1, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->q0()V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/utils/f0;->b(Landroid/view/Window;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v1, ","

    const-string v2, "TextTranslationPanelActivity"

    const-string v3, ""

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "extra_from_package"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v3

    :cond_0
    const-string v4, "com.oplus.aiwriter"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/coloros/translate/panel/TextTranslationPanel;->u0(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/coloros/translate/panel/TextTranslationPanel;->u0(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "extra_type"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_result"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->a:Z

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate:extraPackage :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v4, "7"

    if-eqz p1, :cond_5

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v5, "onCreate:EXTRA_PROCESS_TEXT"

    invoke-virtual {p1, v2, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v5, "onCreate:EXTRA_TEXT"

    invoke-virtual {p1, v2, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "onCreate:sourceText is empty"

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t0()V

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "src_language"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "dist_language"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p:Ljava/lang/String;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: defaultLanguageCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->t0(Lf2/b;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object v5

    new-instance v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;

    const/4 p1, 0x0

    invoke-direct {v7, p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Lkotlin/coroutines/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    invoke-direct {p0, v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->A0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->m0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->s0()V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_8

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/n;->F(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lx9/c;->o(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->r:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->s:I

    invoke-static {p0}, Lcom/coloros/translate/utils/z;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p0}, Lcom/coloros/translate/utils/z;->f(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t:Ljava/lang/Boolean;

    :cond_9
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanelActivity"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->U()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->k:Lcom/coloros/translate/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/o;->t()V

    :cond_1
    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx9/c;->q(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/texttranslation/m0;->B(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public final onMessageEvent(Lcom/coloros/translate/utils/d0;)V
    .locals 4
    .annotation runtime Lx9/m;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/d0;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received eventbus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanelActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/utils/d0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextTranslationWantToPlayTts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->F()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "extra_source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "TextTranslationPanelActivity"

    const-string v5, ""

    if-eqz v1, :cond_3

    const-string v1, "extra_from_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v5

    :cond_0
    const-string v6, "com.oplus.aiwriter"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/coloros/translate/panel/TextTranslationPanel;->u0(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->u0(Z)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    const-string v0, "extra_result"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->a:Z

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNewIntent:extraPackage :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v6, "onNewIntent:EXTRA_PROCESS_TEXT"

    invoke-virtual {v1, v4, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v6, "onNewIntent:EXTRA_TEXT"

    invoke-virtual {v1, v4, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->A0(Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "onNewIntent:isGrantedPrivacyPolicy is true startTextTranslation"

    invoke-virtual {p1, v4, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, v3, v2, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->x0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "onNewIntent:isGrantedPrivacyPolicy is false"

    invoke-virtual {p0, v4, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onPause"

    const-string v2, "TextTranslationPanelActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->r0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onPause: Detected foldable screen size change due to fold/unfold"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t0()V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->l()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->F()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onResume"

    const-string v2, "TextTranslationPanelActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v1}, Lcom/coloros/translate/base/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PrivacyPolicy is changed,force finish"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->t0()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/LanguageManager;->R(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "text_panel"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/LanguageManager;->O(Lcom/coloros/translate/d;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->r0()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->F()V

    sget-object p0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->U()V

    return-void
.end method

.method public s()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->p0()Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->t()V

    return-void
.end method

.method public y()V
    .locals 7

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n0()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRetryClicked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextTranslationPanelActivity"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->x0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;ZILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->z0(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V

    return-void
.end method

.method public z()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationPanelActivity"

    const-string v2, "readyToFinish: panel is showing, waiting for dismiss"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->o0()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->U()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->n()V

    return-void
.end method
