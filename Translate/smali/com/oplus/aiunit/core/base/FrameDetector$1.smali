.class Lcom/oplus/aiunit/core/base/FrameDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/callback/DetectStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/base/FrameDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/core/base/FrameDetector;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/base/FrameDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/aiunit/core/data/AIConfig;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->lambda$onStart$0(Lcom/oplus/aiunit/core/data/AIConfig;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/aiunit/core/data/AIConfig;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->lambda$onOneDestroy$3(Lcom/oplus/aiunit/core/data/AIConfig;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->lambda$onAllFail$2(Ljava/lang/String;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->lambda$onOneFail$1(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->lambda$onAllDestroy$4(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method

.method private static synthetic lambda$onAllDestroy$4(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllDestroy(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onAllFail$2(Ljava/lang/String;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllFail(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onOneDestroy$3(Lcom/oplus/aiunit/core/data/AIConfig;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onOneDestroy(Lcom/oplus/aiunit/core/data/AIConfig;)V

    return-void
.end method

.method private static synthetic lambda$onOneFail$1(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onOneFail(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onStart$0(Lcom/oplus/aiunit/core/data/AIConfig;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onStart(Lcom/oplus/aiunit/core/data/AIConfig;)V

    return-void
.end method


# virtual methods
.method public onAllDestroy(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAllDestroy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, v1, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$100(Lcom/oplus/aiunit/core/base/FrameDetector;)I

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$000(Lcom/oplus/aiunit/core/base/FrameDetector;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/base/f;

    invoke-direct {v0, p1}, Lcom/oplus/aiunit/core/base/f;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAllFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAllFail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, v1, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$100(Lcom/oplus/aiunit/core/base/FrameDetector;)I

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$000(Lcom/oplus/aiunit/core/base/FrameDetector;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/base/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/oplus/aiunit/core/base/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameDetector"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOneDestroy(Lcom/oplus/aiunit/core/data/AIConfig;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOneDestroy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, v1, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$000(Lcom/oplus/aiunit/core/base/FrameDetector;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/base/k;

    invoke-direct {v0, p1}, Lcom/oplus/aiunit/core/base/k;-><init>(Lcom/oplus/aiunit/core/data/AIConfig;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOneFail(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOneFail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, v1, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$000(Lcom/oplus/aiunit/core/base/FrameDetector;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/base/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/oplus/aiunit/core/base/j;-><init>(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, v1, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$000(Lcom/oplus/aiunit/core/base/FrameDetector;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/base/i;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/base/i;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStart(Lcom/oplus/aiunit/core/data/AIConfig;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, v1, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$1;->this$0:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$000(Lcom/oplus/aiunit/core/base/FrameDetector;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/base/g;

    invoke-direct {v0, p1}, Lcom/oplus/aiunit/core/base/g;-><init>(Lcom/oplus/aiunit/core/data/AIConfig;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
