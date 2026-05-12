.class public final synthetic Lcom/oplus/aiunit/core/base/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/data/AIConfig;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/j;->a:Lcom/oplus/aiunit/core/data/AIConfig;

    iput p2, p0, Lcom/oplus/aiunit/core/base/j;->b:I

    iput-object p3, p0, Lcom/oplus/aiunit/core/base/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/j;->a:Lcom/oplus/aiunit/core/data/AIConfig;

    iget v1, p0, Lcom/oplus/aiunit/core/base/j;->b:I

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/j;->c:Ljava/lang/String;

    check-cast p1, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->d(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method
