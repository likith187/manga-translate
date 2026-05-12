.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Builder;
.super Lcom/oplus/aisubsystem/core/client/AiSettings$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiSettings$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;

    invoke-virtual {p0, v0}, Lcom/oplus/aisubsystem/core/client/AiSettings$b;->buildSettings(Ljava/lang/Class;)Lcom/oplus/aisubsystem/core/client/AiSettings;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;

    return-object p0
.end method
