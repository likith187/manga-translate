.class final Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/speech/asr/client/ASRClient;-><init>(Landroid/content/Context;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2;->invoke()Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;

    move-result-object p0

    return-object p0
.end method
