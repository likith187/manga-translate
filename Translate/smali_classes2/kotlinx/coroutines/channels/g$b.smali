.class public final Lkotlinx/coroutines/channels/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/channels/g$a;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/g$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lkotlinx/coroutines/channels/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lkotlinx/coroutines/channels/g;->a()Lkotlinx/coroutines/channels/g$c;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/channels/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lkotlinx/coroutines/channels/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
