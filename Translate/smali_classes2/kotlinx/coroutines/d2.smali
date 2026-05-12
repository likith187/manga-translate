.class final Lkotlinx/coroutines/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g$b;
.implements Lkotlin/coroutines/g$c;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/d2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/d2;

    invoke-direct {v0}, Lkotlinx/coroutines/d2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/d2;->INSTANCE:Lkotlinx/coroutines/d2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/coroutines/g$b$a;->a(Lkotlin/coroutines/g$b;Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/g$b$a;->b(Lkotlin/coroutines/g$b;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lkotlin/coroutines/g$c;
    .locals 0

    return-object p0
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/g$b$a;->c(Lkotlin/coroutines/g$b;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/g$b$a;->d(Lkotlin/coroutines/g$b;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method
