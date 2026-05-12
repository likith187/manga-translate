.class public Lcom/google/mlkit/nl/languageid/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/nl/languageid/internal/a$a;
    }
.end annotation


# instance fields
.field private final a:Lh5/b;

.field private final b:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

.field private final c:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

.field private final f:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;

.field private final i:Lw3/b;

.field private final j:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;


# direct methods
.method private constructor <init>(Lh5/b;Lcom/google/mlkit/nl/languageid/internal/d;Lcom/google/android/gms/internal/mlkit_language_id_common/sa;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/a;->a:Lh5/b;

    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/internal/a;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    iput-object p4, p0, Lcom/google/mlkit/nl/languageid/internal/a;->f:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lw3/b;

    invoke-direct {p1}, Lw3/b;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/a;->i:Lw3/b;

    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/internal/d;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    :goto_0
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/a;->j:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    invoke-static {}, Lf5/g;->c()Lf5/g;

    move-result-object p1

    invoke-virtual {p1}, Lf5/g;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/a;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    return-void
.end method

.method public static c(Lh5/b;Lcom/google/mlkit/nl/languageid/internal/d;Lcom/google/android/gms/internal/mlkit_language_id_common/sa;Lf5/d;)Lh5/c;
    .locals 2

    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/a;

    invoke-virtual {p0}, Lh5/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p3, v1}, Lf5/d;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/mlkit/nl/languageid/internal/a;-><init>(Lh5/b;Lcom/google/mlkit/nl/languageid/internal/d;Lcom/google/android/gms/internal/mlkit_language_id_common/sa;Ljava/util/concurrent/Executor;)V

    iget-object p0, v0, Lcom/google/mlkit/nl/languageid/internal/a;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;-><init>()V

    iget-object p2, v0, Lcom/google/mlkit/nl/languageid/internal/a;->j:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/e7;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;-><init>()V

    iget-object p3, v0, Lcom/google/mlkit/nl/languageid/internal/a;->a:Lh5/b;

    invoke-virtual {p3}, Lh5/b;->a()Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lcom/google/mlkit/nl/languageid/internal/a;->x(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/c7;)Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->h()Lcom/google/android/gms/internal/mlkit_language_id_common/n8;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/n8;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;I)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id_common/g7;->zzx:Lcom/google/android/gms/internal/mlkit_language_id_common/g7;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)V

    iget-object p0, v0, Lcom/google/mlkit/nl/languageid/internal/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/nl/languageid/internal/d;

    invoke-virtual {p0}, Lf5/i;->d()V

    return-object v0
.end method

.method private final v(JZLcom/google/android/gms/internal/mlkit_language_id_common/l8;Lcom/google/android/gms/internal/mlkit_language_id_common/k8;Lcom/google/android/gms/internal/mlkit_language_id_common/f7;)V
    .locals 12

    move-object v8, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v9, v0, p1

    new-instance v11, Lcom/google/mlkit/nl/languageid/internal/c;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v9

    move v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/mlkit/nl/languageid/internal/c;-><init>(Lcom/google/mlkit/nl/languageid/internal/a;JZLcom/google/android/gms/internal/mlkit_language_id_common/f7;Lcom/google/android/gms/internal/mlkit_language_id_common/l8;Lcom/google/android/gms/internal/mlkit_language_id_common/k8;)V

    iget-object v0, v8, Lcom/google/mlkit/nl/languageid/internal/a;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/g7;->zzw:Lcom/google/android/gms/internal/mlkit_language_id_common/g7;

    invoke-virtual {v0, v11, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->e(Lcom/google/mlkit/nl/languageid/internal/c;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v8, Lcom/google/mlkit/nl/languageid/internal/a;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    iget-object v3, v8, Lcom/google/mlkit/nl/languageid/internal/a;->j:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    if-ne v3, v4, :cond_0

    const/16 v3, 0x601b

    goto :goto_0

    :cond_0
    const/16 v3, 0x601a

    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/mlkit_language_id_common/f7;->zza()I

    move-result v4

    sub-long v5, v0, v9

    move-object p0, v2

    move p1, v3

    move p2, v4

    move-wide p3, v5

    move-wide/from16 p5, v0

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->c(IIJJ)V

    return-void
.end method

.method private static final x(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/c7;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;-><init>()V

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->a(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final V(Ljava/lang/String;)Lw3/i;
    .locals 5

    const-string v0, "Text can not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "LanguageIdentification has been closed"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->k(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lf5/i;->b()Z

    move-result v2

    iget-object v3, p0, Lcom/google/mlkit/nl/languageid/internal/a;->f:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/mlkit/nl/languageid/internal/b;

    xor-int/2addr v1, v2

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/google/mlkit/nl/languageid/internal/b;-><init>(Lcom/google/mlkit/nl/languageid/internal/a;Lcom/google/mlkit/nl/languageid/internal/d;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->i:Lw3/b;

    invoke-virtual {p0}, Lw3/b;->b()Lw3/a;

    move-result-object p0

    invoke-virtual {v0, v3, v4, p0}, Lf5/i;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lw3/a;)Lw3/i;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/c0;
        value = .enum Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/a;->i:Lw3/b;

    invoke-virtual {v1}, Lw3/b;->a()V

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/a;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lf5/i;->f(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;-><init>()V

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/internal/a;->j:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/e7;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;-><init>()V

    iget-object p0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->a:Lh5/b;

    invoke-virtual {p0}, Lh5/b;->a()Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/google/mlkit/nl/languageid/internal/a;->x(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/c7;)Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->h()Lcom/google/android/gms/internal/mlkit_language_id_common/n8;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/n8;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    const/4 p0, 0x1

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;I)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/g7;->zzz:Lcom/google/android/gms/internal/mlkit_language_id_common/g7;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)V

    return-void
.end method

.method final synthetic i(JZLcom/google/android/gms/internal/mlkit_language_id_common/f7;Lcom/google/android/gms/internal/mlkit_language_id_common/l8;Lcom/google/android/gms/internal/mlkit_language_id_common/k8;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 1

    new-instance p5, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    invoke-direct {p5}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;-><init>()V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->a:Lh5/b;

    invoke-virtual {v0}, Lh5/b;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/nl/languageid/internal/a;->x(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/c7;)Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->a(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_language_id_common/u6;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->c(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/u6;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/f7;)Lcom/google/android/gms/internal/mlkit_language_id_common/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/w6;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/w6;)Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    if-eqz p6, :cond_0

    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/k8;)Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;-><init>()V

    iget-object p0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->j:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/e7;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->h()Lcom/google/android/gms/internal/mlkit_language_id_common/n8;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/n8;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    move-result-object p0

    return-object p0
.end method

.method final synthetic k(Lcom/google/mlkit/nl/languageid/internal/d;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/a;->a:Lh5/b;

    invoke-virtual {v0}, Lh5/b;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/google/mlkit/nl/languageid/internal/d;->j(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :goto_1
    move-object v6, p2

    goto :goto_2

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/mlkit_language_id_common/h8;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/h8;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/e8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/g8;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h8;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/g8;)Lcom/google/android/gms/internal/mlkit_language_id_common/h8;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/h8;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/k8;

    move-result-object p2

    goto :goto_1

    :goto_2
    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id_common/f7;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, v8

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/nl/languageid/internal/a;->v(JZLcom/google/android/gms/internal/mlkit_language_id_common/l8;Lcom/google/android/gms/internal/mlkit_language_id_common/k8;Lcom/google/android/gms/internal/mlkit_language_id_common/f7;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id_common/f7;->zzV:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, v8

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/nl/languageid/internal/a;->v(JZLcom/google/android/gms/internal/mlkit_language_id_common/l8;Lcom/google/android/gms/internal/mlkit_language_id_common/k8;Lcom/google/android/gms/internal/mlkit_language_id_common/f7;)V

    throw p1
.end method
