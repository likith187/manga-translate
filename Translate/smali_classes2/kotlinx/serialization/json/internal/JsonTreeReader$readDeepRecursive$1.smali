.class final Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lw8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/JsonTreeReader;->readDeepRecursive()Lkotlinx/serialization/json/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Lw8/q;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1"
    f = "JsonTreeReader.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/internal/JsonTreeReader;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln8/c;

    check-cast p2, Ln8/h0;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->invoke(Ln8/c;Ln8/h0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ln8/c;Ln8/h0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/c;",
            "Ln8/h0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-direct {p2, p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/d;)V

    iput-object p1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->L$0:Ljava/lang/Object;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p2, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ln8/c;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$getLexer$p(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readValue(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readValue(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->label:I

    invoke-static {v1, p1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readObject(Lkotlinx/serialization/json/internal/JsonTreeReader;Ln8/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    move-object p0, p1

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    goto :goto_1

    :cond_5
    const/16 p1, 0x8

    if-ne v1, p1, :cond_6

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readArray(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_6
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$getLexer$p(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    move-result-object v0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Can\'t begin reading element, unexpected token"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method
