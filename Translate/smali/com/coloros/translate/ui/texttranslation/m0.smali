.class public final Lcom/coloros/translate/ui/texttranslation/m0;
.super Lcom/coloros/translate/base/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/m0$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/coloros/translate/ui/texttranslation/m0$a;


# instance fields
.field private final g:Landroid/app/Application;

.field private final h:Ln8/j;

.field private final i:Landroidx/lifecycle/a0;

.field private final j:Landroidx/lifecycle/a0;

.field private final k:Landroidx/lifecycle/a0;

.field private l:Ljava/lang/String;

.field private m:Lcom/coloros/translate/b;

.field private n:Lcom/coloros/translate/b;

.field private final o:Ljava/util/regex/Pattern;

.field private final p:Ln8/j;

.field private q:Z

.field private final r:Lcom/coloros/translate/ui/texttranslation/m0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/m0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/m0;->s:Lcom/coloros/translate/ui/texttranslation/m0$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/base/q;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->g:Landroid/app/Application;

    sget-object p1, Lcom/coloros/translate/ui/texttranslation/m0$g;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/m0$g;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->h:Ln8/j;

    new-instance p1, Landroidx/lifecycle/a0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->i:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->j:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->k:Landroidx/lifecycle/a0;

    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->l:Ljava/lang/String;

    sget-object p1, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->m:Lcom/coloros/translate/b;

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->n:Lcom/coloros/translate/b;

    const-string p1, "[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->o:Ljava/util/regex/Pattern;

    sget-object p1, Lcom/coloros/translate/ui/texttranslation/m0$b;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/m0$b;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->p:Ln8/j;

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/m0$c;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/texttranslation/m0$c;-><init>(Lcom/coloros/translate/ui/texttranslation/m0;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->r:Lcom/coloros/translate/ui/texttranslation/m0$c;

    return-void
.end method

.method private final G()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->m:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->n:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTranslate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextTranslationPanelViewMode"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v2}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/remote/c;->w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/m0;->l:Ljava/lang/String;

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/m0$f;

    invoke-direct {v4, p0, v1}, Lcom/coloros/translate/ui/texttranslation/m0$f;-><init>(Lcom/coloros/translate/ui/texttranslation/m0;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V

    return-void
.end method

.method public static final synthetic o(Lcom/coloros/translate/ui/texttranslation/m0;)Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->v()Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/coloros/translate/ui/texttranslation/m0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic q(Lcom/coloros/translate/ui/texttranslation/m0;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->G()V

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

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->o:Ljava/util/regex/Pattern;

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

.method private final v()Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->p:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    return-object p0
.end method

.method private final x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->h:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->j:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final B(Landroidx/lifecycle/s;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->k:Landroidx/lifecycle/a0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->r:Lcom/coloros/translate/ui/texttranslation/m0$c;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/repository/remote/c;->H(Lcom/coloros/translate/repository/remote/c$b;)V

    return-void
.end method

.method public final C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->q:Z

    return-void
.end method

.method public final D()V
    .locals 14

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TextTranslationPanelViewMode"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startSourcePlayer: TargetPlayer is running, return"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "startSourcePlayer: SourcePlayer is running, force to stop then return"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->l:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startSourcePlayer: sourceText is empty, force return"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/texttranslation/m0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/m0;->m:Lcom/coloros/translate/b;

    invoke-virtual {v3}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0xfd

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/m0$d;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/m0$d;-><init>(Lcom/coloros/translate/ui/texttranslation/m0;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/coloros/translate/repository/remote/a$a;->a(Lcom/coloros/translate/repository/remote/a;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public final E()V
    .locals 15

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TextTranslationPanelViewMode"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startTargetPlayer: sourcePlayer is running, return"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startTargetPlayer: TargetPlayer is running, force to stop then return"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/texttranslation/m0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->n:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0xfd

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/coloros/translate/ui/texttranslation/m0$e;

    invoke-direct {v5, p0}, Lcom/coloros/translate/ui/texttranslation/m0$e;-><init>(Lcom/coloros/translate/ui/texttranslation/m0;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/coloros/translate/repository/remote/a$a;->a(Lcom/coloros/translate/repository/remote/a;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startTargetPlayer: resultText is empty, force return"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final F()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TextTranslationPanelViewMode"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "stopTTs: is running,force to stop"

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->i:Landroidx/lifecycle/a0;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->j:Landroidx/lifecycle/a0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "stopTTs: TargetPlayer is running,force to stop"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final H(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V
    .locals 5

    const-string v0, "fromLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLanguage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanelViewMode"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->m:Lcom/coloros/translate/b;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/m0;->n:Lcom/coloros/translate/b;

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sourceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->l:Ljava/lang/String;

    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/widget/k;->c:Lcom/coloros/translate/widget/k$b;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/k$b;->a()Lcom/coloros/translate/widget/k;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$string;->translation_result_copied:I

    invoke-virtual {v0, p1, p0, v1}, Lcom/coloros/translate/widget/k;->d(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result v1

    const-string v2, "TextTranslationPanelViewMode"

    if-nez v1, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "[doTranslate] TranslationService not connected"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->r:Lcom/coloros/translate/ui/texttranslation/m0$c;

    invoke-virtual {v1, p0}, Lcom/coloros/translate/repository/remote/c;->D(Lcom/coloros/translate/repository/remote/c$b;)V

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->F()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "[doTranslate] TranslationService connected"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->G()V

    :goto_0
    return-void
.end method

.method public final t()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/m0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->g:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/i0;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final w()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->k:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final y()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->q:Z

    return p0
.end method

.method public final z()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0;->i:Landroidx/lifecycle/a0;

    return-object p0
.end method
