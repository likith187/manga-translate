.class public final Lcom/coloros/translate/ui/simultaneous/main/m$d;
.super Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/m;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Lcom/coloros/translate/utils/n$a;

.field final synthetic b:Lcom/coloros/translate/ui/simultaneous/main/m;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;-><init>()V

    new-instance p1, Lcom/coloros/translate/utils/n$a;

    invoke-direct {p1}, Lcom/coloros/translate/utils/n$a;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->a:Lcom/coloros/translate/utils/n$a;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/engine/info/AsrTranslateResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m$d;->d(Lcom/coloros/translate/engine/info/AsrTranslateResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/engine/info/AsrResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m$d;->c(Lcom/coloros/translate/engine/info/AsrResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V

    return-void
.end method

.method private static final c(Lcom/coloros/translate/engine/info/AsrResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 18

    move-object/from16 v7, p1

    const-string v0, "$asrResult"

    move-object/from16 v8, p0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v9}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v0

    const-string v10, "SimultaneousMainViewModel"

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRtasrResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->s(Lcom/coloros/translate/ui/simultaneous/main/m;)Landroid/os/Handler;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->v(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->a()Landroid/os/Bundle;

    move-result-object v11

    const-string v0, "recordId"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onRtasrResult reject no same id"

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->b()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->W()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->R()Z

    move-result v0

    const-string v13, "endOffset"

    const-string v14, "startOffset"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_9

    const-string v0, "onRtasrResult asr stop reject"

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v0, v12

    :goto_1
    invoke-virtual {v7, v1, v2, v0, v6}, Lcom/coloros/translate/ui/simultaneous/main/m;->J(JLjava/lang/String;Z)Ln8/q;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo2/a;->q(Ljava/lang/String;)V

    if-nez v12, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v2, v12

    :goto_2
    invoke-virtual {v1, v2}, Lo2/a;->w(Ljava/lang/String;)V

    if-eqz v12, :cond_6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v11, v14, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lo2/a;->x(J)V

    invoke-virtual {v11, v13, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lo2/a;->o(J)V

    invoke-virtual {v1}, Lo2/a;->e()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRtasrResult pageOffSet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->w(Lcom/coloros/translate/ui/simultaneous/main/m;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lo2/a;->r(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->c()I

    move-result v3

    if-ne v3, v15, :cond_7

    move/from16 v6, v16

    :cond_7
    invoke-virtual {v1, v6}, Lo2/a;->n(Z)V

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v7, v1, v2, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->t0(Lo2/a;ZZ)V

    :cond_8
    return-void

    :cond_9
    if-nez v12, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_a
    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v3, v12

    :goto_4
    const/4 v5, 0x4

    const/16 v17, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/ui/simultaneous/main/m;->K(Lcom/coloros/translate/ui/simultaneous/main/m;JLjava/lang/String;ZILjava/lang/Object;)Ln8/q;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    invoke-virtual {v1}, Lo2/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->c()I

    move-result v2

    if-eq v2, v15, :cond_b

    const-string v0, "onRtasrResult asr same reject"

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo2/a;->q(Ljava/lang/String;)V

    if-nez v12, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_c
    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v2, v12

    :goto_5
    invoke-virtual {v1, v2}, Lo2/a;->w(Ljava/lang/String;)V

    if-eqz v12, :cond_d

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v11, v14, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lo2/a;->x(J)V

    invoke-virtual {v11, v13, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lo2/a;->o(J)V

    invoke-virtual {v1}, Lo2/a;->e()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AsrGoing onRtasrResult pageOffSet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v10, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->w(Lcom/coloros/translate/ui/simultaneous/main/m;)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Lo2/a;->r(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrResult;->c()I

    move-result v4

    if-ne v4, v15, :cond_f

    move/from16 v6, v16

    goto :goto_7

    :cond_f
    move v6, v2

    :goto_7
    invoke-virtual {v1, v6}, Lo2/a;->n(Z)V

    xor-int/lit8 v2, v3, 0x1

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v7, v1, v2, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->t0(Lo2/a;ZZ)V

    invoke-virtual {v1}, Lo2/a;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->t(Lcom/coloros/translate/ui/simultaneous/main/m;)Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->i(Lo2/a;)V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private static final d(Lcom/coloros/translate/engine/info/AsrTranslateResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 16

    move-object/from16 v7, p1

    const-string v0, "$asrTranslateResult"

    move-object/from16 v8, p0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v9}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v0

    const-string v10, "SimultaneousMainViewModel"

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTranslateResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onTranslateResult reject empty"

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "recordId"

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "translate_is_safe"

    const/4 v12, 0x1

    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v7, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->A(Lcom/coloros/translate/ui/simultaneous/main/m;Z)V

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onTranslateResult reject no same id"

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->x(Lcom/coloros/translate/ui/simultaneous/main/m;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResultSafe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->x(Lcom/coloros/translate/ui/simultaneous/main/m;)Z

    move-result v2

    xor-int/2addr v2, v12

    const-string v3, "simultaneous"

    invoke-virtual {v0, v1, v3, v2}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->b()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->W()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->R()Z

    move-result v0

    const-string v13, "\u7ffb\u8bd1\u7ed3\u675f : "

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-nez v0, :cond_8

    const-string v0, "onTranslateResult asr stop reject"

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v2, v0, v15}, Lcom/coloros/translate/ui/simultaneous/main/m;->J(JLjava/lang/String;Z)Ln8/q;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo2/a;->z(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result v2

    if-ne v2, v14, :cond_4

    move v2, v12

    goto :goto_1

    :cond_4
    move v2, v15

    :goto_1
    invoke-virtual {v1, v2}, Lo2/a;->v(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result v2

    if-ne v2, v14, :cond_5

    move v15, v12

    :cond_5
    invoke-virtual {v1, v15}, Lo2/a;->A(Z)V

    invoke-virtual {v1}, Lo2/a;->l()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->N()Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v1}, Lo2/a;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lo2/a;->d()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->t(Lcom/coloros/translate/ui/simultaneous/main/m;)Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->g(Lo2/a;)V

    :cond_6
    invoke-virtual {v1}, Lo2/a;->j()Z

    move-result v2

    xor-int/2addr v2, v12

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v7, v1, v2, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->t0(Lo2/a;ZZ)V

    :cond_7
    return-void

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/ui/simultaneous/main/m;->K(Lcom/coloros/translate/ui/simultaneous/main/m;JLjava/lang/String;ZILjava/lang/Object;)Ln8/q;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo2/a;->z(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result v2

    if-ne v2, v14, :cond_9

    move v2, v12

    goto :goto_2

    :cond_9
    move v2, v15

    :goto_2
    invoke-virtual {v1, v2}, Lo2/a;->v(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result v2

    if-ne v2, v14, :cond_a

    move v2, v12

    goto :goto_3

    :cond_a
    move v2, v15

    :goto_3
    invoke-virtual {v1, v2}, Lo2/a;->A(Z)V

    invoke-virtual {v1}, Lo2/a;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->N()Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v1}, Lo2/a;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lo2/a;->d()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->t(Lcom/coloros/translate/ui/simultaneous/main/m;)Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->g(Lo2/a;)V

    :cond_b
    invoke-virtual {v1}, Lo2/a;->j()Z

    move-result v2

    xor-int/2addr v2, v12

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v7, v1, v2, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->t0(Lo2/a;ZZ)V

    :cond_c
    invoke-static {}, Lcom/coloros/translate/utils/q;->a()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result v0

    if-ne v0, v14, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->i0()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTts isPlayTtsEnable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  isPlayTts"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->u(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/g0;->c(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)V

    invoke-static {v7, v15, v12, v11}, Lcom/coloros/translate/ui/simultaneous/main/m;->r0(Lcom/coloros/translate/ui/simultaneous/main/m;ZILjava/lang/Object;)Z

    :cond_d
    return-void
.end method


# virtual methods
.method public onRecordTime(J)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->C0(J)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p1, p2

    const-wide/16 v0, 0x3e8

    long-to-float p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->a0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 3

    const-string v0, "asrResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/o;

    invoke-direct {v0, p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/o;-><init>(Lcom/coloros/translate/engine/info/AsrResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n$a;->d(J)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->A(Lcom/coloros/translate/ui/simultaneous/main/m;Z)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->B0(Z)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/n;->a0(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->A0(I)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/m$d$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m$d$a;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/m$d$b;

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-direct {v1, v2}, Lcom/coloros/translate/ui/simultaneous/main/m$d$b;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/main/m$d$c;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$d$c;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    invoke-static {p1, p2, v0, v1, v2}, Lcom/coloros/translate/repository/c;->a(ILjava/lang/String;Lw8/a;Lw8/a;Lw8/a;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n$a;->c(J)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->s(Lcom/coloros/translate/ui/simultaneous/main/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->v(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v1, "3"

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->a:Lcom/coloros/translate/utils/n$a;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/n;->P(Ljava/lang/String;Lcom/coloros/translate/utils/n$a;)V

    return-void
.end method

.method public onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 3

    const-string v0, "asrTranslateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/n;

    invoke-direct {v0, p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/n;-><init>(Lcom/coloros/translate/engine/info/AsrTranslateResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public onVoiceVolume(D)V
    .locals 0

    return-void
.end method
