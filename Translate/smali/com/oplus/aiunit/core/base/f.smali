.class public final synthetic Lcom/oplus/aiunit/core/base/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/f;->a:Ljava/lang/String;

    check-cast p1, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector$1;->e(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method
