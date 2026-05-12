.class public final Lkotlinx/coroutines/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/o0;

.field private static final a:Lkotlinx/coroutines/y;

.field private static final b:Lkotlinx/coroutines/y;

.field private static final c:Lkotlinx/coroutines/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/o0;

    invoke-direct {v0}, Lkotlinx/coroutines/o0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/o0;->INSTANCE:Lkotlinx/coroutines/o0;

    sget-object v0, Lg9/c;->INSTANCE:Lg9/c;

    sput-object v0, Lkotlinx/coroutines/o0;->a:Lkotlinx/coroutines/y;

    sget-object v0, Lkotlinx/coroutines/b2;->INSTANCE:Lkotlinx/coroutines/b2;

    sput-object v0, Lkotlinx/coroutines/o0;->b:Lkotlinx/coroutines/y;

    sget-object v0, Lg9/b;->INSTANCE:Lg9/b;

    sput-object v0, Lkotlinx/coroutines/o0;->c:Lkotlinx/coroutines/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/y;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/o0;->a:Lkotlinx/coroutines/y;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/y;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/o0;->c:Lkotlinx/coroutines/y;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/p1;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/p1;

    return-object v0
.end method
