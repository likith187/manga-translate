.class public abstract Lkotlinx/coroutines/channels/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/g$a;,
        Lkotlinx/coroutines/channels/g$b;,
        Lkotlinx/coroutines/channels/g$c;
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/channels/g$b;

.field private static final b:Lkotlinx/coroutines/channels/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/channels/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/g$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/channels/g;->a:Lkotlinx/coroutines/channels/g$b;

    new-instance v0, Lkotlinx/coroutines/channels/g$c;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/g$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/g;->b:Lkotlinx/coroutines/channels/g$c;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/channels/g$c;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/g;->b:Lkotlinx/coroutines/channels/g$c;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lkotlinx/coroutines/channels/g$a;

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lkotlinx/coroutines/channels/g$c;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
