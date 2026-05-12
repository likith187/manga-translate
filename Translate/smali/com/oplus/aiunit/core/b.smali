.class public final synthetic Lcom/oplus/aiunit/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/AIConnector;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/AIConnector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/b;->a:Lcom/oplus/aiunit/core/AIConnector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/b;->a:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->a(Lcom/oplus/aiunit/core/AIConnector;)V

    return-void
.end method
