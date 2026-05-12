.class public final synthetic Lcom/coloros/translate/engine/tts/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/tts/e;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/f;->a:Lcom/coloros/translate/engine/tts/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/f;->a:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e$c;->e(Lcom/coloros/translate/engine/tts/e;)V

    return-void
.end method
