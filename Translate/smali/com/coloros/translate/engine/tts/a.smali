.class public final synthetic Lcom/coloros/translate/engine/tts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/tts/e;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/a;->a:Lcom/coloros/translate/engine/tts/e;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/a;->a:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/tts/e;->c(Lcom/coloros/translate/engine/tts/e;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
