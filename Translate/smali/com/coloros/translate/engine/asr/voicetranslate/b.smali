.class public final synthetic Lcom/coloros/translate/engine/asr/voicetranslate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/asr/voicetranslate/c;

.field public final synthetic b:[B

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;[BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/b;->a:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    iput-object p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/b;->b:[B

    iput-wide p3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/b;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/b;->a:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/b;->b:[B

    iget-wide v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/b;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->c(Lcom/coloros/translate/engine/asr/voicetranslate/c;[BJ)V

    return-void
.end method
