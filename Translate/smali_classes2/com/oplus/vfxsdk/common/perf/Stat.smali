.class public final Lcom/oplus/vfxsdk/common/perf/Stat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/perf/Stat;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/perf/Stat;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/perf/Stat;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method public final b()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/perf/Stat;->a:Ljava/util/HashMap;

    return-object p0
.end method
