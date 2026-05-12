.class public final synthetic Lcom/oplus/aiunit/core/base/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/data/AIConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/data/AIConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/k;->a:Lcom/oplus/aiunit/core/data/AIConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/k;->a:Lcom/oplus/aiunit/core/data/AIConfig;

    check-cast p1, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->b(Lcom/oplus/aiunit/core/data/AIConfig;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method
