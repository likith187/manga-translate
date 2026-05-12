.class public final Lcom/oplus/aiunit/translation/request/SynthesisRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/request/SynthesisRequest$Companion;
    }
.end annotation


# static fields
.field public static final ALGO_MODEL:Ljava/lang/String; = "model"

.field public static final APPID_CALL:Ljava/lang/String; = "call"

.field public static final APPID_VOICEBOX:Ljava/lang/String; = "voicebox"

.field public static final APP_ID:Ljava/lang/String; = "appid"

.field public static final Companion:Lcom/oplus/aiunit/translation/request/SynthesisRequest$Companion;

.field public static final LANGUAGES:Ljava/lang/String; = "languages"

.field public static final PITCH:Ljava/lang/String; = "pitch"

.field public static final SPEED:Ljava/lang/String; = "speed"

.field public static final TEXT_TYPE:Ljava/lang/String; = "type"

.field public static final VOICE_GENDER:Ljava/lang/String; = "speaker"


# instance fields
.field private content:Ljava/lang/CharSequence;

.field private extend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private params:Landroid/os/Bundle;

.field private requestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/request/SynthesisRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/request/SynthesisRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->Companion:Lcom/oplus/aiunit/translation/request/SynthesisRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->content:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->content:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getExtend()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->extend:Ljava/util/Map;

    return-object p0
.end method

.method public final getParams()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->params:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->f(Ln8/q;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->extend:Ljava/util/Map;

    return-void
.end method

.method public final setContent(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->content:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setExtend(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->extend:Ljava/util/Map;

    return-void
.end method

.method public final setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->params:Landroid/os/Bundle;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->requestId:Ljava/lang/String;

    return-void
.end method
