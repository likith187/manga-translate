.class public final synthetic Lcom/oplus/aiunit/core/service/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/e;->a:Lcom/oplus/aiunit/core/service/ServiceManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/e;->a:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->g(Lcom/oplus/aiunit/core/service/ServiceManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
