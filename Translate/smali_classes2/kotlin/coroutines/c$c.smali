.class final Lkotlin/coroutines/c$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $elements:[Lkotlin/coroutines/g;

.field final synthetic $index:Lkotlin/jvm/internal/a0;


# direct methods
.method constructor <init>([Lkotlin/coroutines/g;Lkotlin/jvm/internal/a0;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/c$c;->$elements:[Lkotlin/coroutines/g;

    iput-object p2, p0, Lkotlin/coroutines/c$c;->$index:Lkotlin/jvm/internal/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln8/h0;

    check-cast p2, Lkotlin/coroutines/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/c$c;->invoke(Ln8/h0;Lkotlin/coroutines/g$b;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ln8/h0;Lkotlin/coroutines/g$b;)V
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lkotlin/coroutines/c$c;->$elements:[Lkotlin/coroutines/g;

    iget-object p0, p0, Lkotlin/coroutines/c$c;->$index:Lkotlin/jvm/internal/a0;

    iget v0, p0, Lkotlin/jvm/internal/a0;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/jvm/internal/a0;->element:I

    aput-object p2, p1, v0

    return-void
.end method
