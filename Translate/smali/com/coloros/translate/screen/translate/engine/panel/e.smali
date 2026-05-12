.class public final Lcom/coloros/translate/screen/translate/engine/panel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/engine/language/e;
.implements Lf2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/engine/panel/e$a;
    }
.end annotation


# static fields
.field public static final t:Lcom/coloros/translate/screen/translate/engine/panel/e$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lw8/a;

.field private final c:Lw8/a;

.field private f:Lcom/coloros/translate/screen/translate/engine/picker/e;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private k:Lcom/coloros/translate/screen/translate/engine/tts/d;

.field private l:Z

.field private m:Z

.field private n:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

.field private o:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

.field private p:Lcom/coloros/translate/screen/translate/engine/language/a;

.field private q:Lcom/coloros/translate/screen/translate/engine/language/a;

.field private final r:Ljava/util/regex/Pattern;

.field private final s:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/panel/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/panel/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/panel/e;->t:Lcom/coloros/translate/screen/translate/engine/panel/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw8/a;Lw8/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCloseClicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPanelDismiss"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->b:Lw8/a;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->c:Lw8/a;

    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->j:Ljava/util/concurrent/ExecutorService;

    const-string p1, "[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "compile(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->r:Ljava/util/regex/Pattern;

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/panel/e$e;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$e;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->s:Ln8/j;

    return-void
.end method

.method private static final B(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->t()V

    return-void
.end method

.method private static final C(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->t()V

    return-void
.end method

.method private static final D(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sourceLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->n:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->h:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/translate/engine/panel/e;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->k(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V

    :cond_0
    return-void
.end method

.method private static final E(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->o:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->i:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/translate/engine/panel/e;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->k(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->B(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/panel/e;->E(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/panel/e;->D(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->C(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    return-void
.end method

.method public static final synthetic i(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/screen/translate/engine/tts/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    return-object p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/screen/translate/engine/panel/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic l(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/panel/TextTranslationPanel;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/coloros/translate/screen/translate/engine/panel/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    return-void
.end method

.method public static final synthetic p(Lcom/coloros/translate/screen/translate/engine/panel/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    return-void
.end method

.method private final t()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->h:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslationPanel"

    const-string v1, "translate srcText is empty, doTranslate"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->t()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coloros/translate/utils/o;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;

    iget-object v4, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->h:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v0, v4, v2}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->Companion:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;->getINSTANCE()Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/panel/e$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$b;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->translateText(Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V

    return-void
.end method

.method private final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "/[\u2190-\u21ff]|[\u2600-\u26ff]|[\u2700-\u27bf]|[\u3000-\u303f]|[\u1f300-\u1f64F]|[\u1f680-\u1f6fF]/g"

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->r:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "matcher(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "replaceAll(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final w()Lcom/coloros/translate/panel/TextTranslationPanel;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->s:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/panel/TextTranslationPanel;

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->r0()Z

    move-result p0

    return p0
.end method

.method public final F()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "showTranslatePanel"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$string;->scan_translation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/screen/R$style;->ThemeCOUIBottomSheetDialog:I

    const/16 v3, 0x7f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coloros/translate/panel/TextTranslationPanel;->a(Ljava/lang/String;ILjava/lang/Integer;Z)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->t0(Lf2/b;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->w0()V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->H(Lcom/coloros/translate/screen/translate/engine/language/e;)V

    return-void
.end method

.method public final G()V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->n:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->A0(Z)V

    iput-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    :cond_1
    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->o:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->B0(Z)V

    iput-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    :cond_3
    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sourceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "updateTranslateData"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->G()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->h:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->i:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/screen/translate/engine/panel/e$f;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/coloros/translate/screen/translate/engine/panel/e$f;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->a0(Lw8/a;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p1}, Lcom/coloros/translate/observer/e;->k()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Lf2/a$a;->b(Lf2/a;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public a()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onLanguageLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v2

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->p:Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->q:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/screen/translate/engine/language/j;->j(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/coloros/translate/screen/translate/engine/language/a;->CHINESE:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v4}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "getString(...)"

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getFullNameResId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getFullNameResId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->F0(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getSimpleNameResId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getSimpleNameResId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->F0(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onLanguageSwitched"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->G()V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->a()V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/panel/a;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/translate/engine/panel/a;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onTargetPlayerClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->o:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->B0(Z)V

    iput-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->n:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->A0(Z)V

    iput-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/tts/d;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/tts/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->B0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->o:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/panel/e$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$d;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->o:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->g()V

    :cond_6
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/panel/d;

    invoke-direct {v1, p0, v0}, Lcom/coloros/translate/screen/translate/engine/panel/d;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lcom/coloros/translate/screen/utils/t;->h(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public h()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onSourcePlayerClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->n:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->A0(Z)V

    iput-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->o:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->B0(Z)V

    iput-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->m:Z

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/tts/d;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/tts/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->l:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->A0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->n:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/panel/e$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$c;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->n:Lcom/coloros/translate/screen/translate/engine/tts/d$b;

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->g()V

    :cond_6
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/panel/c;

    invoke-direct {v1, p0, v0}, Lcom/coloros/translate/screen/translate/engine/panel/c;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lcom/coloros/translate/screen/utils/t;->h(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public k()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onCopyClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->i:Ljava/lang/String;

    sget v2, Lcom/coloros/translate/screen/R$string;->translate_toast_copy:I

    const-string v3, "NoTextIntent"

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/utils/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "event_screen_result_copy"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/screen/utils/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public m(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onLanguageClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->G()V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->f:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/picker/e;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->f:Lcom/coloros/translate/screen/translate/engine/picker/e;

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->f:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->H(ZZ)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->T(Lcom/coloros/translate/screen/translate/engine/language/e;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->c:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final q()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "dismiss"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->t0(Lf2/b;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->k:Lcom/coloros/translate/screen/translate/engine/tts/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->U()V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->T(Lcom/coloros/translate/screen/translate/engine/language/e;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->f:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->E()V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->s()V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onSwitchLanguageClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->G()V

    sget-object p0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->S()Z

    return-void
.end method

.method public s()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onExportClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/utils/j;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final v()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final x()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "hide"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->w()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->Z()V

    return-void
.end method

.method public y()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onRetryClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/panel/b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/translate/engine/panel/b;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public z()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onCloseClicked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e;->b:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method
