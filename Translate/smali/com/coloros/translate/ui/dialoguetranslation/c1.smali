.class public final Lcom/coloros/translate/ui/dialoguetranslation/c1;
.super Lcom/coloros/translate/base/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/c1$a;
    }
.end annotation


# static fields
.field public static final N:Lcom/coloros/translate/ui/dialoguetranslation/c1$a;


# instance fields
.field private A:Ljava/util/List;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private final G:Lcom/coloros/translate/ui/dialoguetranslation/c1$f;

.field private final H:Ln8/j;

.field private final I:Ln8/j;

.field private final J:Lcom/coloros/translate/engine/info/AsrParams;

.field private volatile K:Z

.field private final L:Ljava/lang/Runnable;

.field private final M:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Landroidx/lifecycle/a0;

.field private final j:Landroidx/lifecycle/a0;

.field private final k:Landroidx/lifecycle/a0;

.field private final l:Landroidx/lifecycle/a0;

.field private final m:Landroidx/lifecycle/a0;

.field private final n:Landroidx/lifecycle/a0;

.field private final o:Ljava/util/regex/Pattern;

.field private p:Lcom/coloros/translate/repository/local/Conversation;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final v:Ln8/q;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Lcom/coloros/translate/repository/local/Conversation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N:Lcom/coloros/translate/ui/dialoguetranslation/c1$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 12

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/base/q;-><init>(Landroid/app/Application;)V

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->g:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->h:Ljava/util/List;

    new-instance p1, Landroidx/lifecycle/a0;

    new-instance v0, Ln8/q;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->j:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->k:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->l:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->m:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n:Landroidx/lifecycle/a0;

    const-string p1, "[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->o:Ljava/util/regex/Pattern;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->t:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v2, "voice"

    invoke-virtual {v0, v2}, Lcom/coloros/translate/LanguageManager;->q(Ljava/lang/String;)Ln8/q;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->v:Ln8/q;

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->y:Z

    new-instance v0, Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {v0}, Lcom/coloros/translate/repository/local/Conversation;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->E:Ljava/lang/String;

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$f;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->G:Lcom/coloros/translate/ui/dialoguetranslation/c1$f;

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$d;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/c1$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->H:Ln8/j;

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$b;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/c1$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->I:Ln8/j;

    new-instance v0, Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v10, 0x40

    const/4 v11, 0x0

    const/16 v3, 0x1388

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/coloros/translate/engine/info/AsrParams;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "asr_param_translate_switch"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "enableLlm"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J:Lcom/coloros/translate/engine/info/AsrParams;

    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/b1;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/b1;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->L:Ljava/lang/Runnable;

    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/ui/dialoguetranslation/c1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->a0(I)V

    return-void
.end method

.method public static final synthetic B(Lcom/coloros/translate/ui/dialoguetranslation/c1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->f0(I)V

    return-void
.end method

.method public static final synthetic C(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method

.method public static final synthetic D(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p0(Lcom/coloros/translate/repository/local/Conversation;Z)V

    return-void
.end method

.method private final E(Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A:Ljava/util/List;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final F(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->K:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/a;->e()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlUseBluetoothMic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->u(Z)V

    return-void
.end method

.method private static final H(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslationViewModel"

    const-string v2, "delayRegister"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->d0()V

    return-void
.end method

.method private final I(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "/[\u2190-\u21ff]|[\u2600-\u26ff]|[\u2700-\u27bf]|[\u3000-\u303f]|[\u1f300-\u1f64F]|[\u1f680-\u1f6fF]/g"

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->o:Ljava/util/regex/Pattern;

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

.method private final X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->I:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    return-object p0
.end method

.method private final Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->H:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    return-object p0
.end method

.method private final a0(I)V
    .locals 20

    move/from16 v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslationViewModel"

    const-string v2, "error is zero"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0x1eda

    if-ne v0, v1, :cond_1

    sget-object v2, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v3

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const-string v4, "event_asr_silence_for_dialog"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v11, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x30

    const/16 v19, 0x0

    const-string v13, "event_translate_fial_for_dialog"

    const-string v14, "reason"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final f0(I)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetSliceTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    return-void
.end method

.method private final k0()V
    .locals 4

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->B:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n;->N(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->d0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->B:Z

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "FaceToFaceTranslationViewModel"

    const-string v3, "asr onStart"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->F(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/coloros/translate/ui/dialoguetranslation/c1;ZZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->l0(ZZZ)V

    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->H(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    return-void
.end method

.method public static final synthetic p(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->E(Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final p0(Lcom/coloros/translate/repository/local/Conversation;Z)V
    .locals 4

    sget-object p2, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p2}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/remote/c;->w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;

    invoke-direct {v3, p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;-><init>(Lcom/coloros/translate/repository/local/Conversation;Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V

    return-void
.end method

.method public static final synthetic q(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic r(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic s(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/engine/info/AsrParams;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J:Lcom/coloros/translate/engine/info/AsrParams;

    return-object p0
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    return-object p0
.end method

.method public static final synthetic v(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->C:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic x(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->y:Z

    return p0
.end method

.method public static final synthetic y(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic z(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    return-object p0
.end method


# virtual methods
.method public final G(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlUseBluetoothMicEx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->B:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->K:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/a;->e()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->u(Z)V

    :cond_1
    return-void
.end method

.method public final J()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final K()Z
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/d1;->INSTANCE:Lcom/coloros/translate/utils/d1;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/d1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->F:Z

    return p0
.end method

.method public final L()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->l:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final M()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final N()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->h:Ljava/util/List;

    return-object p0
.end method

.method public final O()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final P()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->t:Z

    return p0
.end method

.method public final Q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->q:Z

    return p0
.end method

.method public final R()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->s:Z

    return p0
.end method

.method public final S()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->r:Z

    return p0
.end method

.method public final T()Lcom/coloros/translate/repository/local/Conversation;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p:Lcom/coloros/translate/repository/local/Conversation;

    return-object p0
.end method

.method public final U()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->j:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final V()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->k:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final W()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->m:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final Y()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->g:Ljava/util/List;

    return-object p0
.end method

.method public final b0(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 14

    const-string v0, "conversation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playText lastId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  nowId="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_1

    iput-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->o0()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_2

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->o0()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play text:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v13, Lcom/coloros/translate/engine/info/TtsParams;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToLanguage()Ljava/lang/String;

    move-result-object v4

    const/16 v11, 0xfd

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;

    invoke-direct {v2, p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v3}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result p1

    const-string v3, "play_from_phone_mic"

    invoke-virtual {p0, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {v0, v1, v13, v2, p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c0()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[reTranslate] from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastTranslateComplete: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "do reTranslate !!!"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {p0, v0, v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p0(Lcom/coloros/translate/repository/local/Conversation;Z)V

    :cond_1
    return-void
.end method

.method protected d()V
    .locals 2

    invoke-super {p0}, Lcom/coloros/translate/base/q;->d()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->u(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->d(Z)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->L:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/translate/utils/z0;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "registerListener"

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->G:Lcom/coloros/translate/ui/dialoguetranslation/c1$f;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/c;->D(Lcom/coloros/translate/repository/remote/c$b;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->l(Ljava/lang/String;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->l()V

    return-void
.end method

.method public final e0(Landroidx/lifecycle/s;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->m:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n:Landroidx/lifecycle/a0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->k:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->j:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->l:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->m:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    new-instance p1, Ln8/q;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final g0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->t:Z

    return-void
.end method

.method public final h0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->q:Z

    return-void
.end method

.method public final i0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->s:Z

    return-void
.end method

.method public j()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslationViewModel"

    const-string v2, "onAudioFocusLost"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->o0()V

    :cond_0
    return-void
.end method

.method public final j0(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method

.method public final l0(ZZZ)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J:Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v1, 0x1388

    invoke-virtual {p2, v1}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v1}, Lcom/coloros/translate/engine/info/AsrParams;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, v1}, Lcom/coloros/translate/engine/info/AsrParams;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/AsrParams;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DialogueTranslationViewModel"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/AsrParams;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "language to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->D:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-sensitive"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->D:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentRequestIdCommonPart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceToFaceTranslationViewModel"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_user1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_user2"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->C:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "asr_param_call_id"

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->C:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sceneId"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appVersion"

    const-string v3, "16.0.26"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enableLlm"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    iput-boolean p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->y:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->k0()V

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-nez p3, :cond_6

    :cond_5
    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    :cond_6
    invoke-virtual {p0, v1, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/c1$g;

    invoke-direct {p1, p0, p3}, Lcom/coloros/translate/ui/dialoguetranslation/c1$g;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;Z)V

    const-wide/16 p2, 0x258

    invoke-static {p2, p3, p1}, Lcom/coloros/translate/utils/z0;->c(JLw8/a;)V

    :goto_3
    return-void
.end method

.method public final n0(ZZ)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->B:Z

    iget-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->r:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRtasr isReadyToPlay : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mIsRecoding : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStopByManual: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->B:Z

    if-eqz v1, :cond_0

    iput-boolean p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->r:Z

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->q:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->B:Z

    invoke-virtual {p0, p1}, Lcom/coloros/translate/base/q;->h(Z)Z

    const-string p2, "stopRtasr"

    invoke-virtual {v0, v2, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->F(Z)V

    :cond_0
    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    :cond_0
    return-void
.end method

.method public final q0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "unRegisterListener"

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->G:Lcom/coloros/translate/ui/dialoguetranslation/c1$f;

    invoke-virtual {v1, v3}, Lcom/coloros/translate/repository/remote/c;->H(Lcom/coloros/translate/repository/remote/c$b;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->n()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->t(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->X()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->h()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->o0()V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unRegisterListener stopRtasr"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->z:Lcom/coloros/translate/repository/local/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    iput-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->q:Z

    :cond_0
    return-void
.end method

.method public final r0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fromLanguageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguageCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x:Ljava/lang/String;

    return-void
.end method

.method public final s0(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;->K:Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useBluetoothMic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceToFaceTranslationViewModel"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
