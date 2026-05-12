.class final Lcom/ai/slp/library/mt/d$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ai/slp/library/mt/d;->W(Lcom/ai/slp/library/mt/f;)Lcom/ai/slp/library/mt/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $id:Lkotlin/jvm/internal/c0;

.field final synthetic $inData:Lcom/ai/slp/library/mt/f;

.field final synthetic this$0:Lcom/ai/slp/library/mt/d;


# direct methods
.method constructor <init>(Lcom/ai/slp/library/mt/d;Lkotlin/jvm/internal/c0;Lcom/ai/slp/library/mt/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ai/slp/library/mt/d$e;->this$0:Lcom/ai/slp/library/mt/d;

    iput-object p2, p0, Lcom/ai/slp/library/mt/d$e;->$id:Lkotlin/jvm/internal/c0;

    iput-object p3, p0, Lcom/ai/slp/library/mt/d$e;->$inData:Lcom/ai/slp/library/mt/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ai/slp/library/mt/d$e;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ai/slp/library/mt/d$e;->this$0:Lcom/ai/slp/library/mt/d;

    invoke-static {v0}, Lcom/ai/slp/library/mt/d;->T(Lcom/ai/slp/library/mt/d;)Lcom/oppo/yyyy/mt/LibMt;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ai/slp/library/mt/d$e;->$id:Lkotlin/jvm/internal/c0;

    iget-object v1, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p0, p0, Lcom/ai/slp/library/mt/d$e;->$inData:Lcom/ai/slp/library/mt/f;

    invoke-virtual {p0}, Lcom/ai/slp/library/mt/f;->b()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, v1, v2, p0}, Lcom/oppo/yyyy/mt/LibMt;->translate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
