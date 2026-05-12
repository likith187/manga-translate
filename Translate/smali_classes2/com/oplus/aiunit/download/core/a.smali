.class public final synthetic Lcom/oplus/aiunit/download/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/download/core/AIDownloadImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/a;->a:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/a;->a:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->a(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
