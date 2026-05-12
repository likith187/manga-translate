.class public final synthetic Lcom/oplus/aiunit/core/base/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/h;->a:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/aiunit/core/base/h;->b:I

    iput-object p3, p0, Lcom/oplus/aiunit/core/base/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/h;->a:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/aiunit/core/base/h;->b:I

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/h;->c:Ljava/lang/String;

    check-cast p1, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->c(Ljava/lang/String;ILjava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method
