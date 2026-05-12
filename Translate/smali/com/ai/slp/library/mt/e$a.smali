.class final Lcom/ai/slp/library/mt/e$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ai/slp/library/mt/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ai/slp/library/mt/e;


# direct methods
.method constructor <init>(Lcom/ai/slp/library/mt/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ai/slp/library/mt/e$a;->this$0:Lcom/ai/slp/library/mt/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ai/slp/library/mt/d;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/ai/slp/library/mt/e$a;->this$0:Lcom/ai/slp/library/mt/e;

    new-instance v0, Lcom/ai/slp/library/mt/d;

    invoke-direct {v0, p0}, Lcom/ai/slp/library/mt/d;-><init>(Lz0/b;)V

    invoke-static {p0, v0}, Lcom/ai/slp/library/mt/e;->P(Lcom/ai/slp/library/mt/e;Lcom/ai/slp/library/impl/component/c;)Lcom/ai/slp/library/impl/component/c;

    move-result-object p0

    check-cast p0, Lcom/ai/slp/library/mt/d;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ai/slp/library/mt/e$a;->invoke()Lcom/ai/slp/library/mt/d;

    move-result-object p0

    return-object p0
.end method
