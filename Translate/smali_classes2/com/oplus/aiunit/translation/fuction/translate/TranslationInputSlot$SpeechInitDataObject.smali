.class public final Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeechInitDataObject"
.end annotation


# instance fields
.field private final speechMaxTaskCount:I
    .annotation runtime Lv4/c;
        value = "speechMaxTaskCount"
    .end annotation
.end field

.field private final textToSpeechTimeout:J
    .annotation runtime Lv4/c;
        value = "textToSpeechTimeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;->textToSpeechTimeout:J

    iput p3, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;->speechMaxTaskCount:I

    return-void
.end method


# virtual methods
.method public final getSpeechMaxTaskCount()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;->speechMaxTaskCount:I

    return p0
.end method

.method public final getTextToSpeechTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;->textToSpeechTimeout:J

    return-wide v0
.end method
