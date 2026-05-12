.class final Lkotlinx/coroutines/flow/internal/g$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/g;-><init>(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/flow/internal/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/g$a;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/g$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/internal/g$a;->INSTANCE:Lkotlinx/coroutines/flow/internal/g$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(ILkotlin/coroutines/g$b;)Ljava/lang/Integer;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/coroutines/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/g$a;->invoke(ILkotlin/coroutines/g$b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
