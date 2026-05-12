.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
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
    invoke-direct {p0}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClientVersion()I
    .locals 0

    const/16 p0, 0x3e9

    return p0
.end method

.method public final getDetectName()Ljava/lang/String;
    .locals 0

    const-string p0, "nlp_base_antispam_schedule"

    return-object p0
.end method
