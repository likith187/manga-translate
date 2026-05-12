.class public final synthetic Lcom/oplus/aiunit/core/protocol/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/e;->a:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/e;->a:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->a(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;)V

    return-void
.end method
