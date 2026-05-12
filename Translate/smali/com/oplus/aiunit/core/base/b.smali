.class public final synthetic Lcom/oplus/aiunit/core/base/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/base/FrameDetector;

.field public final synthetic b:Lcom/oplus/aiunit/core/base/FrameInputSlot;

.field public final synthetic c:Lcom/oplus/aiunit/core/callback/ProcessCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/base/FrameDetector;Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/b;->a:Lcom/oplus/aiunit/core/base/FrameDetector;

    iput-object p2, p0, Lcom/oplus/aiunit/core/base/b;->b:Lcom/oplus/aiunit/core/base/FrameInputSlot;

    iput-object p3, p0, Lcom/oplus/aiunit/core/base/b;->c:Lcom/oplus/aiunit/core/callback/ProcessCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/b;->a:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/b;->b:Lcom/oplus/aiunit/core/base/FrameInputSlot;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/b;->c:Lcom/oplus/aiunit/core/callback/ProcessCallback;

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->b(Lcom/oplus/aiunit/core/base/FrameDetector;Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V

    return-void
.end method
