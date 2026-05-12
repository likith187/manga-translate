.class final Lkotlinx/coroutines/y$a$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/y$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/y$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/y$a$a;

    invoke-direct {v0}, Lkotlinx/coroutines/y$a$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/y$a$a;->INSTANCE:Lkotlinx/coroutines/y$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/g$b;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/y$a$a;->invoke(Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/y;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/y;
    .locals 0

    .line 2
    instance-of p0, p1, Lkotlinx/coroutines/y;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/y;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
