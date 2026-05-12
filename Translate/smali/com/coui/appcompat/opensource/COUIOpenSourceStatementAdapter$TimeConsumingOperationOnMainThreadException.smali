.class final Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$TimeConsumingOperationOnMainThreadException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeConsumingOperationOnMainThreadException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The method loadText is time consuming, can not call this method on main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
