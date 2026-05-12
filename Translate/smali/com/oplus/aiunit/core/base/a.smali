.class public final synthetic Lcom/oplus/aiunit/core/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/base/FrameDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/base/FrameDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/a;->a:Lcom/oplus/aiunit/core/base/FrameDetector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/a;->a:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->e(Lcom/oplus/aiunit/core/base/FrameDetector;)V

    return-void
.end method
