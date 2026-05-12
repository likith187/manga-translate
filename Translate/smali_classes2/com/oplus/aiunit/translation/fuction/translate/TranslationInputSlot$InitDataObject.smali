.class public final Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitDataObject"
.end annotation


# instance fields
.field private final imageTranslateMaxTaskCount:I
    .annotation runtime Lv4/c;
        value = "imageTranslateMaxTaskCount"
    .end annotation
.end field

.field private final imageTranslateTimeout:J
    .annotation runtime Lv4/c;
        value = "imageTranslateTimeout"
    .end annotation
.end field

.field private final photoTranslateMaxTaskCount:I
    .annotation runtime Lv4/c;
        value = "photoTranslateMaxTaskCount"
    .end annotation
.end field

.field private final photoTranslateTimeout:J
    .annotation runtime Lv4/c;
        value = "photoTranslateTimeout"
    .end annotation
.end field

.field private final sseTextTranslateMaxTaskCount:I
    .annotation runtime Lv4/c;
        value = "sseTextTranslateMaxTaskCount"
    .end annotation
.end field

.field private final sseTextTranslateTimeout:J
    .annotation runtime Lv4/c;
        value = "sseTextTranslateTimeout"
    .end annotation
.end field

.field private final textTranslateMaxTaskCount:I
    .annotation runtime Lv4/c;
        value = "textTranslateMaxTaskCount"
    .end annotation
.end field

.field private final textTranslateTimeout:J
    .annotation runtime Lv4/c;
        value = "textTranslateTimeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIJIJIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->textTranslateTimeout:J

    iput p3, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->textTranslateMaxTaskCount:I

    iput-wide p4, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->sseTextTranslateTimeout:J

    iput p6, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->sseTextTranslateMaxTaskCount:I

    iput-wide p7, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->imageTranslateTimeout:J

    iput p9, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->imageTranslateMaxTaskCount:I

    iput-wide p10, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->photoTranslateTimeout:J

    iput p12, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->photoTranslateMaxTaskCount:I

    return-void
.end method


# virtual methods
.method public final getImageTranslateMaxTaskCount()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->imageTranslateMaxTaskCount:I

    return p0
.end method

.method public final getImageTranslateTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->imageTranslateTimeout:J

    return-wide v0
.end method

.method public final getPhotoTranslateMaxTaskCount()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->photoTranslateMaxTaskCount:I

    return p0
.end method

.method public final getPhotoTranslateTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->photoTranslateTimeout:J

    return-wide v0
.end method

.method public final getSseTextTranslateMaxTaskCount()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->sseTextTranslateMaxTaskCount:I

    return p0
.end method

.method public final getSseTextTranslateTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->sseTextTranslateTimeout:J

    return-wide v0
.end method

.method public final getTextTranslateMaxTaskCount()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->textTranslateMaxTaskCount:I

    return p0
.end method

.method public final getTextTranslateTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;->textTranslateTimeout:J

    return-wide v0
.end method
