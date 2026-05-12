.class public final synthetic Lcom/coloros/translate/engine/tts/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/tts/n;

.field public final synthetic b:[B

.field public final synthetic c:Lcom/coloros/translate/engine/tts/e;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/d;->a:Lcom/coloros/translate/engine/tts/n;

    iput-object p2, p0, Lcom/coloros/translate/engine/tts/d;->b:[B

    iput-object p3, p0, Lcom/coloros/translate/engine/tts/d;->c:Lcom/coloros/translate/engine/tts/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/d;->a:Lcom/coloros/translate/engine/tts/n;

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/d;->b:[B

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/d;->c:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/engine/tts/e;->a(Lcom/coloros/translate/engine/tts/n;[BLcom/coloros/translate/engine/tts/e;)V

    return-void
.end method
