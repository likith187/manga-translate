.class Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;
.super Lcom/oplus/aiunit/core/callback/IProcessCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/base/FrameDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerProcessCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
        "O:",
        "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
        ">",
        "Lcom/oplus/aiunit/core/callback/IProcessCallback$Stub;"
    }
.end annotation


# instance fields
.field ipcName:Ljava/lang/String;

.field weakDetector:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/aiunit/core/base/FrameDetector<",
            "TI;TO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/core/base/FrameDetector<",
            "TI;TO;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IProcessCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;->weakDetector:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;->ipcName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;->ipcName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "ipc"

    return-object p0
.end method

.method public onCallback(Lcom/oplus/aiunit/core/ParamPackage;)I
    .locals 4

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;->weakDetector:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/base/FrameDetector;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallback$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FrameDetector"

    invoke-static {v3, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector;->access$200(Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    return p0

    :cond_2
    return v2
.end method
