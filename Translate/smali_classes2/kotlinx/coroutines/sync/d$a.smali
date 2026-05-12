.class final synthetic Lkotlinx/coroutines/sync/d$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/d;->d(Lkotlinx/coroutines/e2;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/sync/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/sync/d$a;

    invoke-direct {v0}, Lkotlinx/coroutines/sync/d$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/sync/d$a;->INSTANCE:Lkotlinx/coroutines/sync/d$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lkotlinx/coroutines/sync/e;

    const-string v3, "createSegment"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/o;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlinx/coroutines/sync/f;

    invoke-virtual {p0, v0, v1, p2}, Lkotlinx/coroutines/sync/d$a;->invoke(JLkotlinx/coroutines/sync/f;)Lkotlinx/coroutines/sync/f;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(JLkotlinx/coroutines/sync/f;)Lkotlinx/coroutines/sync/f;
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/e;->a(JLkotlinx/coroutines/sync/f;)Lkotlinx/coroutines/sync/f;

    move-result-object p0

    return-object p0
.end method
