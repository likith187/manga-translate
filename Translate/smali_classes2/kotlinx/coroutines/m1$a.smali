.class final Lkotlinx/coroutines/m1$a;
.super Lkotlinx/coroutines/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final h:Lkotlinx/coroutines/m1;

.field private final i:Lkotlinx/coroutines/m1$b;

.field private final j:Lkotlinx/coroutines/p;

.field private final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/m1;Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/l1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/m1$a;->h:Lkotlinx/coroutines/m1;

    iput-object p2, p0, Lkotlinx/coroutines/m1$a;->i:Lkotlinx/coroutines/m1$b;

    iput-object p3, p0, Lkotlinx/coroutines/m1$a;->j:Lkotlinx/coroutines/p;

    iput-object p4, p0, Lkotlinx/coroutines/m1$a;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lkotlinx/coroutines/m1$a;->h:Lkotlinx/coroutines/m1;

    iget-object v0, p0, Lkotlinx/coroutines/m1$a;->i:Lkotlinx/coroutines/m1$b;

    iget-object v1, p0, Lkotlinx/coroutines/m1$a;->j:Lkotlinx/coroutines/p;

    iget-object p0, p0, Lkotlinx/coroutines/m1$a;->k:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Lkotlinx/coroutines/m1;->h(Lkotlinx/coroutines/m1;Lkotlinx/coroutines/m1$b;Lkotlinx/coroutines/p;Ljava/lang/Object;)V

    return-void
.end method
