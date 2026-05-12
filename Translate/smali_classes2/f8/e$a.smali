.class public final Lf8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf8/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lf8/b;
    .locals 2

    invoke-virtual {p0}, Lf8/e$a;->c()Lcom/oplus/vfxsdk/common/perf/Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/perf/Stat;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf8/e$a;->c()Lcom/oplus/vfxsdk/common/perf/Stat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/perf/Stat;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Lf8/b;

    return-object p0

    :cond_0
    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    invoke-virtual {p0}, Lf8/e$a;->c()Lcom/oplus/vfxsdk/common/perf/Stat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/perf/Stat;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lf8/c;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf8/e$a;->c()Lcom/oplus/vfxsdk/common/perf/Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/perf/Stat;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf8/e$a;->c()Lcom/oplus/vfxsdk/common/perf/Stat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/perf/Stat;->b()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Lf8/c;

    return-object p0

    :cond_0
    new-instance v0, Lf8/c;

    invoke-direct {v0}, Lf8/c;-><init>()V

    invoke-virtual {p0}, Lf8/e$a;->c()Lcom/oplus/vfxsdk/common/perf/Stat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/perf/Stat;->b()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Lcom/oplus/vfxsdk/common/perf/Stat;
    .locals 0

    invoke-static {}, Lf8/e;->a()Lcom/oplus/vfxsdk/common/perf/Stat;

    move-result-object p0

    return-object p0
.end method
