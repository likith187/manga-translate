.class final Lkotlinx/coroutines/flow/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/flow/internal/e;

.field private static final a:Lkotlin/coroutines/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/e;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/e;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/internal/e;->INSTANCE:Lkotlinx/coroutines/flow/internal/e;

    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    sput-object v0, Lkotlinx/coroutines/flow/internal/e;->a:Lkotlin/coroutines/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/g;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/flow/internal/e;->a:Lkotlin/coroutines/g;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
