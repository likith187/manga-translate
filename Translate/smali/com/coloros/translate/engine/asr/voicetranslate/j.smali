.class public final synthetic Lcom/coloros/translate/engine/asr/voicetranslate/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/asr/voicetranslate/k;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/asr/voicetranslate/k;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/j;->a:Lcom/coloros/translate/engine/asr/voicetranslate/k;

    iput-object p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/j;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/j;->a:Lcom/coloros/translate/engine/asr/voicetranslate/k;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/j;->b:[B

    invoke-static {v0, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->q(Lcom/coloros/translate/engine/asr/voicetranslate/k;[B)V

    return-void
.end method
