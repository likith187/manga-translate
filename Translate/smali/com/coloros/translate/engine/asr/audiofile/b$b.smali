.class final Lcom/coloros/translate/engine/asr/audiofile/b$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/asr/audiofile/b;->e([B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/engine/asr/audiofile/b;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/asr/audiofile/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/audiofile/b$b;->this$0:Lcom/coloros/translate/engine/asr/audiofile/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/asr/audiofile/b$b;->invoke([BI)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke([BI)V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/b$b;->this$0:Lcom/coloros/translate/engine/asr/audiofile/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/audiofile/b;->f(Lcom/coloros/translate/engine/asr/audiofile/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/asr/audiofile/f;

    .line 4
    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/audiofile/f;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/audiofile/f;->e()Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method
