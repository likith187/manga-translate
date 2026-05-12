.class public final Lcom/oplus/aiunit/translation/DynamicRealTimeAsrHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/DynamicRealTimeAsrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/DynamicRealTimeAsrHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDetectorName()Ljava/lang/String;
    .locals 0

    const-string p0, "ai_omni"

    return-object p0
.end method

.method public final getSceneName()Ljava/lang/String;
    .locals 0

    const-string p0, "ai_omni"

    return-object p0
.end method
