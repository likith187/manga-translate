.class public final synthetic Lcom/oplus/aiunit/core/base/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-interface {p1}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onStart()V

    return-void
.end method
