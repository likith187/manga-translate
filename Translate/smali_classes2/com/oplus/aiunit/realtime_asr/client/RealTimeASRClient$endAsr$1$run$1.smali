.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1$run$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1$run$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1$run$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$isEndAsr$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
