.class public final Lkotlinx/coroutines/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/p0;
.implements Lkotlinx/coroutines/o;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/r1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/r1;

    invoke-direct {v0}, Lkotlinx/coroutines/r1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParent()Lkotlinx/coroutines/f1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
