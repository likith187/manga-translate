.class public final synthetic Lcom/oplus/aiunit/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    invoke-static {p1, p2}, Lcom/oplus/aiunit/core/FramePackage;->a(Ljava/lang/String;Lcom/oplus/aiunit/core/ShareMemoryHolder;)V

    return-void
.end method
