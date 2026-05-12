.class public abstract Lf8/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/e$a;
    }
.end annotation


# static fields
.field public static final a:Lf8/e$a;

.field private static b:Lcom/oplus/vfxsdk/common/perf/Stat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf8/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf8/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lf8/e;->a:Lf8/e$a;

    new-instance v0, Lcom/oplus/vfxsdk/common/perf/Stat;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/perf/Stat;-><init>()V

    sput-object v0, Lf8/e;->b:Lcom/oplus/vfxsdk/common/perf/Stat;

    return-void
.end method

.method public static final synthetic a()Lcom/oplus/vfxsdk/common/perf/Stat;
    .locals 1

    sget-object v0, Lf8/e;->b:Lcom/oplus/vfxsdk/common/perf/Stat;

    return-object v0
.end method
