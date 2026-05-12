.class final Lkotlin/coroutines/g$a$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/g$a;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/coroutines/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/g$a$a;

    invoke-direct {v0}, Lkotlin/coroutines/g$a$a;-><init>()V

    sput-object v0, Lkotlin/coroutines/g$a$a;->INSTANCE:Lkotlin/coroutines/g$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/g;

    check-cast p2, Lkotlin/coroutines/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/g$a$a;->invoke(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)Lkotlin/coroutines/g;
    .locals 2

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lkotlin/coroutines/g$b;->getKey()Lkotlin/coroutines/g$c;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/g;->minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p0

    .line 3
    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    if-ne p0, p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lkotlin/coroutines/e;->d:Lkotlin/coroutines/e$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/e;

    if-nez v1, :cond_1

    .line 5
    new-instance p1, Lkotlin/coroutines/c;

    invoke-direct {p1, p0, p2}, Lkotlin/coroutines/c;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p0

    if-ne p0, p1, :cond_2

    .line 7
    new-instance p0, Lkotlin/coroutines/c;

    invoke-direct {p0, p2, v1}, Lkotlin/coroutines/c;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)V

    move-object p2, p0

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Lkotlin/coroutines/c;

    new-instance v0, Lkotlin/coroutines/c;

    invoke-direct {v0, p0, p2}, Lkotlin/coroutines/c;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)V

    invoke-direct {p1, v0, v1}, Lkotlin/coroutines/c;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
