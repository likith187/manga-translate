.class public final Lcom/coloros/translate/ui/dialoguetranslation/i0;
.super Lcom/coloros/translate/base/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/i0$a;
    }
.end annotation


# static fields
.field public static final a0:Lcom/coloros/translate/ui/dialoguetranslation/i0$a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Z

.field private M:Z

.field private N:I

.field private O:Ljava/lang/String;

.field private P:Ljava/util/LinkedHashMap;

.field private Q:Ljava/util/LinkedHashMap;

.field private R:Ljava/lang/StringBuilder;

.field private S:Ljava/lang/StringBuilder;

.field private T:Z

.field private U:Z

.field private final V:Ln8/j;

.field private final W:Ln8/j;

.field private final X:Lcom/coloros/translate/ui/dialoguetranslation/i0$i;

.field private final Y:Lcom/coloros/translate/engine/info/AsrParams;

.field private final Z:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

.field private final g:Ljava/util/List;

.field private final h:Landroidx/lifecycle/a0;

.field private final i:Landroidx/lifecycle/a0;

.field private final j:Landroidx/lifecycle/a0;

.field private final k:Landroidx/lifecycle/a0;

.field private final l:Landroidx/lifecycle/a0;

.field private final m:Landroidx/lifecycle/a0;

.field private final n:Landroidx/lifecycle/a0;

.field private final o:Landroidx/lifecycle/a0;

.field private final p:Landroidx/lifecycle/a0;

.field private q:Landroidx/lifecycle/a0;

.field private r:Landroidx/lifecycle/a0;

.field private final s:Ln8/q;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/coloros/translate/repository/local/Conversation;

.field private w:Lcom/coloros/translate/repository/local/Conversation;

.field private x:Ljava/util/HashMap;

.field private y:Lcom/coloros/translate/repository/local/Conversation;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0:Lcom/coloros/translate/ui/dialoguetranslation/i0$a;

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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    new-instance p1, Landroidx/lifecycle/a0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->h:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    new-instance v1, Ln8/q;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->j:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->k:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->l:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->m:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->n:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->o:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->p:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->r:Landroidx/lifecycle/a0;

    sget-object p1, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    const-string v0, "voice"

    invoke-virtual {p1, v0}, Lcom/coloros/translate/LanguageManager;->q(Ljava/lang/String;)Ln8/q;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->s:Ln8/q;

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/b;

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    new-instance p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {p1}, Lcom/coloros/translate/repository/local/Conversation;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v:Lcom/coloros/translate/repository/local/Conversation;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->x:Ljava/util/HashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->A:Z

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D:Z

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I:Z

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->N:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S:Ljava/lang/StringBuilder;

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->T:Z

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$g;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/i0$g;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V:Ln8/j;

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$e;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/i0$e;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->W:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$i;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->X:Lcom/coloros/translate/ui/dialoguetranslation/i0$i;

    new-instance v0, Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v10, 0x40

    const/4 v11, 0x0

    const/16 v3, 0x1b58

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

    move-result-object v2

    const-string v3, "isAutoMaticLanguage"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "enableLlm"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y:Lcom/coloros/translate/engine/info/AsrParams;

    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    return-void
.end method

.method private final A(Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/r;->i(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P:Ljava/util/LinkedHashMap;

    new-instance v3, Ln8/q;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v3, v1, p1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final B(Lcom/coloros/translate/engine/info/AsrTranslateResult;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/r;->i(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q:Ljava/util/LinkedHashMap;

    new-instance v3, Ln8/q;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v3, v1, p1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "/[\u2190-\u21ff]|[\u2600-\u26ff]|[\u2700-\u27bf]|[\u3000-\u303f]|[\u1f300-\u1f64F]|[\u1f680-\u1f6fF]/g"

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

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

.method private final O0()V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "DialogueTranslationViewModel"

    const-string v1, "startAsr"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final P0(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F:Z

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->z:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->E:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    invoke-virtual {p0, p1}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "DialogueTranslationViewModel"

    const-string p2, "stopRtasr"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic T0(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S0(Lcom/coloros/translate/repository/local/Conversation;ZZ)V

    return-void
.end method

.method private final e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->W:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    return-object p0
.end method

.method private final i0()Lcom/coloros/translate/repository/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    return-object p0
.end method

.method public static final synthetic o(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->A(Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final o0(I)V
    .locals 20

    move/from16 v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogueTranslationViewModel"

    const-string v2, "onErrorDataCollection error is zero"

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

.method public static final synthetic p(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/engine/info/AsrTranslateResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B(Lcom/coloros/translate/engine/info/AsrTranslateResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic r(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic s(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Lcom/coloros/translate/engine/info/AsrParams;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y:Lcom/coloros/translate/engine/info/AsrParams;

    return-object p0
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic u(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    return-object p0
.end method

.method private final u0(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln8/q;

    invoke-virtual {v3}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    invoke-virtual {v1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DialogueTranslationViewModel"

    invoke-virtual {v4, v5, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static final synthetic v(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->T:Z

    return p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/ui/dialoguetranslation/i0;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->o0(I)V

    return-void
.end method

.method public static final synthetic x(Lcom/coloros/translate/ui/dialoguetranslation/i0;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u0(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final x0()V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n;->I(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogueTranslationViewModel"

    const-string v2, "resumeAsr"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x1b58

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->w0(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->m()V

    return-void
.end method

.method public static final synthetic y(Lcom/coloros/translate/ui/dialoguetranslation/i0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->T:Z

    return-void
.end method

.method public static final synthetic z(Lcom/coloros/translate/ui/dialoguetranslation/i0;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P0(ZZ)V

    return-void
.end method


# virtual methods
.method public final A0(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->w:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method

.method public final B0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I:Z

    return-void
.end method

.method public final C()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getExpandField1()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sample"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->h:Landroidx/lifecycle/a0;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$b;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/i0$b;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v2, v3}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D:Z

    :cond_1
    return-void
.end method

.method public final C0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->A:Z

    return-void
.end method

.method public final D()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getExpandField1()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sample"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->x:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/repository/local/Conversation;

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->h:Landroidx/lifecycle/a0;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/i0$c;

    invoke-direct {v1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$c;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v1, v3, v0}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D:Z

    :cond_4
    return-void
.end method

.method public final D0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L:Z

    return-void
.end method

.method public final E0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    return-void
.end method

.method public final F()Z
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/d1;->INSTANCE:Lcom/coloros/translate/utils/d1;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/d1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U:Z

    return p0
.end method

.method public final F0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->z:Z

    return-void
.end method

.method public final G()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->k:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final G0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->G:Z

    return-void
.end method

.method public final H()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->h:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final H0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M:Z

    return-void
.end method

.method public final I()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->m:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final I0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J:Ljava/lang/String;

    return-void
.end method

.method public final J()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->o:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final J0(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K:I

    return-void
.end method

.method public final K()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g:Ljava/util/List;

    return-object p0
.end method

.method public final K0(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method

.method public final L()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final L0(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->N:I

    return-void
.end method

.method public final M()Lcom/coloros/translate/repository/local/Conversation;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v:Lcom/coloros/translate/repository/local/Conversation;

    return-object p0
.end method

.method public final M0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D:Z

    return-void
.end method

.method public final N()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final N0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->H:Z

    return-void
.end method

.method public final O()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final P()Lcom/coloros/translate/repository/local/Conversation;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->w:Lcom/coloros/translate/repository/local/Conversation;

    return-object p0
.end method

.method public final Q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I:Z

    return p0
.end method

.method public final Q0()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

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

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i0()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    :cond_0
    return-void
.end method

.method public final R()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->A:Z

    return p0
.end method

.method public final R0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P0(ZZ)V

    return-void
.end method

.method public final S()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L:Z

    return p0
.end method

.method public final S0(Lcom/coloros/translate/repository/local/Conversation;ZZ)V
    .locals 3

    const-string p2, "conversation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p2}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/remote/c;->w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;

    invoke-direct {v2, p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;)V

    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V

    return-void
.end method

.method public final T()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->z:Z

    return p0
.end method

.method public final U()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    return p0
.end method

.method public final U0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->X:Lcom/coloros/translate/ui/dialoguetranslation/i0$i;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/c;->H(Lcom/coloros/translate/repository/remote/c$b;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->n()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "unRegisterListener"

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v:Lcom/coloros/translate/repository/local/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->l:Landroidx/lifecycle/a0;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->z:Z

    :cond_0
    return-void
.end method

.method public final V()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->n:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final V0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "fromLanguageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguageCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    iget-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLanguage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->s0()V

    :cond_0
    return-void
.end method

.method public final W()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->G:Z

    return p0
.end method

.method public final X()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F:Z

    return p0
.end method

.method public final Y()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M:Z

    return p0
.end method

.method public final Z()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J:Ljava/lang/String;

    return-object p0
.end method

.method public final a0()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K:I

    return p0
.end method

.method public final b0()Lcom/coloros/translate/repository/local/Conversation;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y:Lcom/coloros/translate/repository/local/Conversation;

    return-object p0
.end method

.method public final c0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->j:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method protected d()V
    .locals 1

    invoke-super {p0}, Lcom/coloros/translate/base/q;->d()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i0()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->d(Z)V

    return-void
.end method

.method public final d0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->l:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final f0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->p:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final g0()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->x:Ljava/util/HashMap;

    return-object p0
.end method

.method public final h0()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->N:I

    return p0
.end method

.method public j()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogueTranslationViewModel"

    const-string v2, "onAudioFocusLost"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

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

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    :cond_0
    return-void
.end method

.method public final j0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D:Z

    return p0
.end method

.method public k()V
    .locals 0

    invoke-super {p0}, Lcom/coloros/translate/base/q;->k()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->n0()V

    return-void
.end method

.method public final k0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final l0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->H:Z

    return p0
.end method

.method public final m0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->r:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final n0()V
    .locals 4

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$d;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final p0(Z)V
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsPreConnectAsr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {p1, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y:Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v4, 0x1b58

    invoke-virtual {v3, v4}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Lcom/coloros/translate/engine/info/AsrParams;->e(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/coloros/translate/engine/info/AsrParams;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "autoMaticLanguages"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "language mCurrentLeftLanguageCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "language mCurrentRightLanguageCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-sensitive"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    :cond_0
    invoke-virtual {v3}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "asr_param_call_id"

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "sceneId"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "appVersion"

    const-string v2, "16.0.26"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "enableLlm"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O0()V

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->x0()V

    iput-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I:Z

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P0(ZZ)V

    :goto_0
    return-void
.end method

.method public final q0(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 14

    const-string v0, "conversation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

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

    const-string v6, "playText lastId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , nowId : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DialogueTranslationViewModel"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

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

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

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

    iput-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play text : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i0()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->E(Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;

    invoke-direct {v2, p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;-><init>(Lcom/coloros/translate/repository/local/Conversation;Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v3}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result p1

    const-string v3, "play_from_phone_mic"

    invoke-virtual {p0, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {v0, v1, v13, v2, p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public final r0()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preConnectServer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->X:Lcom/coloros/translate/ui/dialoguetranslation/i0$i;

    invoke-virtual {v1, v3}, Lcom/coloros/translate/repository/remote/c;->D(Lcom/coloros/translate/repository/remote/c$b;)V

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->F()V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->l(Ljava/lang/String;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y:Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "autoMaticLanguages"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

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

    iput-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "asr_param_call_id"

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sceneId"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appVersion"

    const-string v5, "16.0.26"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isPreload"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->q()V

    iput-boolean v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    return-void
.end method

.method public final s0()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rePreConnectServer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y:Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->u:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "autoMaticLanguages"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

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

    iput-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "asr_param_call_id"

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sceneId"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appVersion"

    const-string v5, "16.0.26"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isPreload"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->q()V

    iput-boolean v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B:Z

    return-void
.end method

.method public final t0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->X:Lcom/coloros/translate/ui/dialoguetranslation/i0$i;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/c;->D(Lcom/coloros/translate/repository/remote/c$b;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "registerListener"

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->l(Ljava/lang/String;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->l()V

    return-void
.end method

.method public final v0(Landroidx/lifecycle/s;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->m:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->o:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->r:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->k:Landroidx/lifecycle/a0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->l:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->i:Landroidx/lifecycle/a0;

    new-instance p1, Ln8/q;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final w0(I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->e0()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    return-void
.end method

.method public final y0(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->A:Z

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final z0(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method
