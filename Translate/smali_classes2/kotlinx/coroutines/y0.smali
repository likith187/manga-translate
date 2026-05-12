.class public final Lkotlinx/coroutines/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/c0;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/y0;

    invoke-direct {v0}, Lkotlinx/coroutines/y0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/y0;->INSTANCE:Lkotlinx/coroutines/y0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lkotlin/coroutines/g;
    .locals 0

    sget-object p0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    return-object p0
.end method
