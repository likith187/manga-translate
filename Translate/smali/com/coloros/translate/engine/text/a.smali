.class public final synthetic Lcom/coloros/translate/engine/text/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;

.field public final synthetic b:Lkotlinx/coroutines/c0;

.field public final synthetic c:La2/b;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lkotlinx/coroutines/c0;La2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/a;->a:Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/a;->b:Lkotlinx/coroutines/c0;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/a;->c:La2/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/text/a;->a:Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;

    iget-object v1, p0, Lcom/coloros/translate/engine/text/a;->b:Lkotlinx/coroutines/c0;

    iget-object p0, p0, Lcom/coloros/translate/engine/text/a;->c:La2/b;

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/engine/text/b;->a(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lkotlinx/coroutines/c0;La2/b;)V

    return-void
.end method
