.class public final Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest$Companion;
    }
.end annotation


# static fields
.field public static final ALGORITHM_AZURE:I = 0x1

.field public static final ALGORITHM_GOOGLE:I = 0x2

.field public static final ALGORITHM_SELF:I = 0x0

.field public static final ALGORITHM_YOUDAO:I = 0x3

.field public static final CLOUD_MODEL_JSON:I = 0x0

.field public static final CLOUD_MODEL_PIC:I = 0x1

.field public static final Companion:Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest$Companion;

.field public static final DEVICE_MODEL:I = 0x2


# instance fields
.field private algorithmModel:I

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

.field private imageBytes:Ljava/lang/String;

.field private pictureTransModel:I

.field private requestId:Ljava/lang/String;

.field private sourceLanguage:Ljava/lang/String;

.field private targetLanguage:Ljava/lang/String;

.field private youdaoInfo:Lcom/oplus/aiunit/translation/model/YoudaoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->Companion:Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->imageBytes:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->targetLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAlgorithmModel()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->algorithmModel:I

    return p0
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

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->extend:Ljava/util/Map;

    return-object p0
.end method

.method public final getImageBytes()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->imageBytes:Ljava/lang/String;

    return-object p0
.end method

.method public final getPictureTransModel()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->pictureTransModel:I

    return p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getYoudaoInfo()Lcom/oplus/aiunit/translation/model/YoudaoInfo;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->youdaoInfo:Lcom/oplus/aiunit/translation/model/YoudaoInfo;

    return-object p0
.end method

.method public final setAlgorithmModel(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->algorithmModel:I

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

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->extend:Ljava/util/Map;

    return-void
.end method

.method public final setImageBytes(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->imageBytes:Ljava/lang/String;

    return-void
.end method

.method public final setPictureTransModel(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->pictureTransModel:I

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setSourceLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->sourceLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setTargetLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->targetLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setYoudaoInfo(Lcom/oplus/aiunit/translation/model/YoudaoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->youdaoInfo:Lcom/oplus/aiunit/translation/model/YoudaoInfo;

    return-void
.end method
