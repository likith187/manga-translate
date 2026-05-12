.class public final synthetic Lcom/oplus/aiunit/core/base/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/FramePackage;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/FramePackage;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/c;->a:Lcom/oplus/aiunit/core/FramePackage;

    iput-object p2, p0, Lcom/oplus/aiunit/core/base/c;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/c;->a:Lcom/oplus/aiunit/core/FramePackage;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/c;->b:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector;->a(Lcom/oplus/aiunit/core/FramePackage;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
