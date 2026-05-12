.class final synthetic Lkotlinx/coroutines/channels/c$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/c;->w()Lc9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/channels/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/c$a;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/c$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/c$a;->INSTANCE:Lkotlinx/coroutines/channels/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lkotlinx/coroutines/channels/c;

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

    check-cast p2, Lkotlinx/coroutines/channels/i;

    invoke-virtual {p0, v0, v1, p2}, Lkotlinx/coroutines/channels/c$a;->invoke(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/i;",
            ")",
            "Lkotlinx/coroutines/channels/i;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/channels/c;->c(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    move-result-object p0

    return-object p0
.end method
