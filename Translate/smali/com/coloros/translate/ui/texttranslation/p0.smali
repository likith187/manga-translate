.class public final Lcom/coloros/translate/ui/texttranslation/p0;
.super Lcom/coloros/translate/base/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/p0$a;
    }
.end annotation


# static fields
.field public static final T:Lcom/coloros/translate/ui/texttranslation/p0$a;


# instance fields
.field private A:Landroidx/lifecycle/a0;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private final F:Ln8/j;

.field private G:J

.field private H:J

.field private final I:Ljava/lang/String;

.field private final J:Ljava/util/regex/Pattern;

.field private final K:Ln8/j;

.field private final L:Ln8/j;

.field private final M:Ln8/j;

.field private final N:Ljava/lang/Runnable;

.field private final O:Ljava/lang/Runnable;

.field private final P:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

.field private final Q:Lcom/coloros/translate/engine/info/AsrParams;

.field private final R:Ljava/lang/String;

.field private final S:Lcom/coloros/translate/ui/texttranslation/p0$i;

.field private final g:Landroidx/lifecycle/a0;

.field private final h:Landroidx/lifecycle/a0;

.field private final i:Landroidx/lifecycle/a0;

.field private j:Landroidx/lifecycle/a0;

.field private k:Landroidx/lifecycle/a0;

.field private l:Landroidx/lifecycle/a0;

.field private final m:Landroidx/lifecycle/a0;

.field private final n:Landroidx/lifecycle/a0;

.field private final o:Landroidx/lifecycle/a0;

.field private final p:Landroidx/lifecycle/a0;

.field private final q:Landroidx/lifecycle/a0;

.field private r:Z

.field private s:Ljava/util/List;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Landroidx/lifecycle/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/p0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/p0;->T:Lcom/coloros/translate/ui/texttranslation/p0$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 10

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/base/q;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/a0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->g:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->h:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    const-string v1, ""

    invoke-direct {p1, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->i:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->j:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->k:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->l:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v2}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->m:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->n:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->o:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->w:Ljava/lang/String;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->z:Landroidx/lifecycle/a0;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->A:Landroidx/lifecycle/a0;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->E:Ljava/lang/String;

    sget-object p1, Lcom/coloros/translate/ui/texttranslation/p0$e;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/p0$e;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->F:Ln8/j;

    const-string p1, "[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|"

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->I:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->J:Ljava/util/regex/Pattern;

    sget-object p1, Lcom/coloros/translate/ui/texttranslation/p0$f;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/p0$f;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->K:Ln8/j;

    sget-object p1, Lcom/coloros/translate/ui/texttranslation/p0$c;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/p0$c;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->L:Ln8/j;

    sget-object p1, Lcom/coloros/translate/ui/texttranslation/p0$b;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/p0$b;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->M:Ln8/j;

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/n0;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/texttranslation/n0;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->N:Ljava/lang/Runnable;

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/o0;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/texttranslation/o0;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->O:Ljava/lang/Runnable;

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/p0$d;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/texttranslation/p0$d;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->P:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    new-instance p1, Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/16 v1, 0xbb8

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x2

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/coloros/translate/engine/info/AsrParams;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->Q:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-sensitive"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->R:Ljava/lang/String;

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/p0$i;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/texttranslation/p0$i;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->S:Lcom/coloros/translate/ui/texttranslation/p0$i;

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->D:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic B(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->B:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic C(Lcom/coloros/translate/ui/texttranslation/p0;)J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->H:J

    return-wide v0
.end method

.method public static final synthetic D(Lcom/coloros/translate/ui/texttranslation/p0;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->G:J

    return-void
.end method

.method public static final synthetic E(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->E:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic F(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->C:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic G(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->D:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic H(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->B:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic I(Lcom/coloros/translate/ui/texttranslation/p0;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->H:J

    return-void
.end method

.method private final J(Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->t:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

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

.method private final X()Lcom/coloros/translate/utils/v0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->F:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/utils/v0;

    return-object p0
.end method

.method private final Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->K:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    return-object p0
.end method

.method private static final l0(Lcom/coloros/translate/ui/texttranslation/p0;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "tip_max_record_time"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/coloros/translate/R$string;->tip_max_record_time:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    return-void
.end method

.method private static final m0(Lcom/coloros/translate/ui/texttranslation/p0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "tip_mUnTalkTimeStop"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/ui/texttranslation/p0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->l0(Lcom/coloros/translate/ui/texttranslation/p0;)V

    return-void
.end method

.method public static synthetic p(Lcom/coloros/translate/ui/texttranslation/p0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->m0(Lcom/coloros/translate/ui/texttranslation/p0;)V

    return-void
.end method

.method public static final synthetic q(Lcom/coloros/translate/ui/texttranslation/p0;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/p0;->J(Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lcom/coloros/translate/ui/texttranslation/p0;)J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->G:J

    return-wide v0
.end method

.method public static final synthetic s(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/engine/info/AsrParams;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->Q:Lcom/coloros/translate/engine/info/AsrParams;

    return-object p0
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/texttranslation/p0;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->g()Z

    move-result p0

    return p0
.end method

.method public static final synthetic u(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->N:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic v(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->P:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    return-object p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->X()Lcom/coloros/translate/utils/v0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic x(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->O:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic y(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic z(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->C:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A0()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "stopOriTTs"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    :cond_0
    return-void
.end method

.method public final B0()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "stopTTs"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    :cond_0
    return-void
.end method

.method public final C0(Lcom/coloros/translate/repository/local/Conversation;Ljava/lang/String;)V
    .locals 4

    const-string v0, "conversation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    const-string v0, "aiunit_stream_translate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p2}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/remote/c;->z()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p2}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/remote/c;->w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coloros/translate/ui/texttranslation/p0$j;

    invoke-direct {v3, p0, p1}, Lcom/coloros/translate/ui/texttranslation/p0$j;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;Lcom/coloros/translate/repository/local/Conversation;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V

    return-void
.end method

.method public final D0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->S:Lcom/coloros/translate/ui/texttranslation/p0$i;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/c;->H(Lcom/coloros/translate/repository/remote/c$b;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "unRegisterListener"

    const-string v2, "TextTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->A0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->j:Landroidx/lifecycle/a0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->X()Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->n()V

    return-void
.end method

.method public final E0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fromCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLanguage fromCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , toCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final K(ZZ)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelStreamTranslate streamRequestId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , clearResult : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->D:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->z()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->c(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_1
    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->D:Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->v:Z

    :cond_3
    return-void
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "/[\u2190-\u21ff]|[\u2600-\u26ff]|[\u2700-\u27bf]|[\u3000-\u303f]|[\u1f300-\u1f64F]|[\u1f680-\u1f6fF]/g"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->J:Ljava/util/regex/Pattern;

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

.method public final M()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->u:Z

    return p0
.end method

.method public final N()Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->M:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    return-object p0
.end method

.method public final O()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final P()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->w:Ljava/lang/String;

    return-object p0
.end method

.method public final Q()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

    return-object p0
.end method

.method public final R()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->l:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final S()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->r:Z

    return p0
.end method

.method public final T()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->j:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final U()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->g:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final V()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->L:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    return-object p0
.end method

.method public final Y()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->i:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final a0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->k:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final b0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->o:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final c0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->v:Z

    return p0
.end method

.method public final d0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final e0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->m:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final f0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->n:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final g0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->x:Z

    return p0
.end method

.method public final h0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->z:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final i0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->h:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public j()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "onAudioFocusLost"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->v()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    :cond_2
    return-void
.end method

.method public final j0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->y:Z

    return p0
.end method

.method public final k0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->A:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final n0(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->Q:Lcom/coloros/translate/engine/info/AsrParams;

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->f(Ljava/lang/String;)V

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "asr_param_call_id"

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/p0;->R:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "asr_param_translate_switch"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "enableLlm"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromLanguageCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , toLanguageCode : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextTranslationViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/n;->f0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->q()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/base/q;->h(Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    :goto_0
    return-void
.end method

.method public final o0()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0;->A0()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playOriText fromLanguageCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextTranslationViewModel"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v4

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xfd

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/coloros/translate/ui/texttranslation/p0$g;

    invoke-direct {v7, v0}, Lcom/coloros/translate/ui/texttranslation/p0$g;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/coloros/translate/repository/remote/a$a;->a(Lcom/coloros/translate/repository/remote/a;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p0()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toLanguageCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextTranslationViewModel"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v4

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xfd

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/coloros/translate/ui/texttranslation/p0$h;

    invoke-direct {v7, v0}, Lcom/coloros/translate/ui/texttranslation/p0$h;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/coloros/translate/repository/remote/a$a;->a(Lcom/coloros/translate/repository/remote/a;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final q0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->S:Lcom/coloros/translate/ui/texttranslation/p0$i;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/c;->D(Lcom/coloros/translate/repository/remote/c$b;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "registerListener"

    const-string v2, "TextTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->P:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->l(Ljava/lang/String;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->l()V

    return-void
.end method

.method public final r0(Landroidx/lifecycle/s;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->m:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->o:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->z:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->A:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->m(Landroidx/lifecycle/s;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->t:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->s:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final s0(I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->Q:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0;->Q:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/info/AsrParams;->g(I)V

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    return-void
.end method

.method public final t0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->u:Z

    return-void
.end method

.method public final u0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->x:Z

    return-void
.end method

.method public final v0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->w:Ljava/lang/String;

    return-void
.end method

.method public final w0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->r:Z

    return-void
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->t:Ljava/lang/String;

    return-void
.end method

.method public final y0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->y:Z

    return-void
.end method

.method public final z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/p0;->v:Z

    return-void
.end method
