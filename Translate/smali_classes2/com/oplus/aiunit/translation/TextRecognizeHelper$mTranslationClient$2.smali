.class final Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/TextRecognizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/a;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;
    .locals 3

    .line 2
    invoke-static {}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->access$getMContext$p()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    move-result-object v0

    invoke-static {}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->access$getMContext$p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->init(Landroid/content/Context;)V

    .line 4
    sget-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "default"

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setPackageName(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    .line 6
    new-instance v1, Lcom/oplus/aiunit/translation/fuction/translate/TranslationDetector;

    const-string v2, "ai_omni"

    invoke-direct {v1, p0, v2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/translation/fuction/translate/TranslationDetector;)V

    return-object v0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Context not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;->invoke()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    return-object p0
.end method
