.class public final synthetic Lcom/coloros/translate/engine/tts/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/tts/k;

.field public final synthetic b:[B

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/tts/k;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/j;->a:Lcom/coloros/translate/engine/tts/k;

    iput-object p2, p0, Lcom/coloros/translate/engine/tts/j;->b:[B

    iput-object p3, p0, Lcom/coloros/translate/engine/tts/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/j;->a:Lcom/coloros/translate/engine/tts/k;

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/j;->b:[B

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/j;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/engine/tts/k;->c(Lcom/coloros/translate/engine/tts/k;[BLjava/lang/String;)V

    return-void
.end method
