.class public final Lkotlinx/coroutines/b2;
.super Lkotlinx/coroutines/y;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/b2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/b2;

    invoke-direct {v0}, Lkotlinx/coroutines/b2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/b2;->INSTANCE:Lkotlinx/coroutines/b2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/y;-><init>()V

    return-void
.end method


# virtual methods
.method public D0(Lkotlin/coroutines/g;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method

.method public x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/f2;->b:Lkotlinx/coroutines/f2$a;

    invoke-interface {p1, p0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
