.class final Lcom/ai/slp/library/mt/d$c;
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
.field final synthetic $tempPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/ai/slp/library/mt/d;


# direct methods
.method constructor <init>(Lcom/ai/slp/library/mt/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ai/slp/library/mt/d$c;->this$0:Lcom/ai/slp/library/mt/d;

    iput-object p2, p0, Lcom/ai/slp/library/mt/d$c;->$tempPath:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()J
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ai/slp/library/mt/d$c;->this$0:Lcom/ai/slp/library/mt/d;

    invoke-static {v0}, Lcom/ai/slp/library/mt/d;->T(Lcom/ai/slp/library/mt/d;)Lcom/oppo/yyyy/mt/LibMt;

    move-result-object v0

    iget-object p0, p0, Lcom/ai/slp/library/mt/d$c;->$tempPath:Ljava/lang/String;

    const-string v1, "tempPath"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oppo/yyyy/mt/LibMt;->loadModel(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ai/slp/library/mt/d$c;->invoke()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
