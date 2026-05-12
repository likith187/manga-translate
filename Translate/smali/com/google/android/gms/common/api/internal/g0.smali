.class final Lcom/google/android/gms/common/api/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/d;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/e;

.field private final b:I

.field private final c:Lcom/google/android/gms/common/api/internal/b;

.field private final d:J

.field private final e:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/e;ILcom/google/android/gms/common/api/internal/b;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/e;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/g0;->b:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/g0;->c:Lcom/google/android/gms/common/api/internal/b;

    iput-wide p4, p0, Lcom/google/android/gms/common/api/internal/g0;->d:J

    iput-wide p6, p0, Lcom/google/android/gms/common/api/internal/g0;->e:J

    return-void
.end method

.method static b(Lcom/google/android/gms/common/api/internal/e;ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/g0;
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/l;->b()Lcom/google/android/gms/common/internal/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->F0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->G0()Z

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/e;->s(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/x;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/x;->v()Lcom/google/android/gms/common/api/a$f;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/common/internal/d;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/x;->v()Lcom/google/android/gms/common/api/a$f;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/d;->H()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/d;->h()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/common/api/internal/g0;->c(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/common/internal/d;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/x;->G()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->H0()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    new-instance v11, Lcom/google/android/gms/common/api/internal/g0;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_2

    :cond_4
    move-wide v5, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_3

    :cond_5
    move-wide v7, v1

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/common/api/internal/g0;-><init>(Lcom/google/android/gms/common/api/internal/e;ILcom/google/android/gms/common/api/internal/b;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method private static c(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/common/internal/d;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->F()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->G0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->E0()[I

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->F0()[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, Lr3/a;->a([II)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Lr3/a;->a([II)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/x;->t()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->D0()I

    move-result p2

    if-ge p0, p2, :cond_3

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Lw3/i;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/l;->b()Lcom/google/android/gms/common/internal/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/l;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->F0()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/e;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/g0;->c:Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/e;->s(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/x;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/x;->v()Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/common/internal/d;

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/x;->v()Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/d;

    iget-wide v4, v0, Lcom/google/android/gms/common/api/internal/g0;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-lez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v8

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/d;->x()I

    move-result v19

    const/16 v9, 0x64

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->G0()Z

    move-result v10

    and-int/2addr v4, v10

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->D0()I

    move-result v10

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->E0()I

    move-result v11

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->l0()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/d;->H()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/d;->h()Z

    move-result v12

    if-nez v12, :cond_4

    iget v4, v0, Lcom/google/android/gms/common/api/internal/g0;->b:I

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/g0;->c(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/common/internal/d;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->H0()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lcom/google/android/gms/common/api/internal/g0;->d:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v8

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->D0()I

    move-result v11

    move v4, v5

    :cond_4
    move v2, v10

    move v3, v11

    goto :goto_2

    :cond_5
    const/16 v10, 0x1388

    move v1, v8

    move v3, v9

    move v2, v10

    :goto_2
    iget-object v5, v0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual/range {p1 .. p1}, Lw3/i;->i()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_6

    move v12, v8

    goto :goto_5

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lw3/i;->g()Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_3
    move v8, v9

    :goto_4
    move v12, v11

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lw3/i;->e()Ljava/lang/Exception;

    move-result-object v8

    instance-of v9, v8, Lcom/google/android/gms/common/api/b;

    if-eqz v9, :cond_9

    check-cast v8, Lcom/google/android/gms/common/api/b;

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/b;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Status;->F0()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Status;->D0()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v8}, Lcom/google/android/gms/common/ConnectionResult;->D0()I

    move-result v8

    move v12, v8

    move v8, v9

    goto :goto_5

    :cond_9
    const/16 v8, 0x65

    goto :goto_4

    :goto_5
    if-eqz v4, :cond_a

    iget-wide v6, v0, Lcom/google/android/gms/common/api/internal/g0;->d:J

    iget-wide v9, v0, Lcom/google/android/gms/common/api/internal/g0;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v9, v15, v9

    long-to-int v4, v9

    move/from16 v20, v4

    move-wide v15, v13

    move-wide v13, v6

    goto :goto_6

    :cond_a
    move-wide v13, v6

    move-wide v15, v13

    move/from16 v20, v11

    :goto_6
    iget v10, v0, Lcom/google/android/gms/common/api/internal/g0;->b:I

    new-instance v0, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v0

    move v11, v8

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v14, v2

    move-object v11, v5

    move-object v12, v0

    move v13, v1

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/common/api/internal/e;->A(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    :cond_b
    :goto_7
    return-void
.end method
