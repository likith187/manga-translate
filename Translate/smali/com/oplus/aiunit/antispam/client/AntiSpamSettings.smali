.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;
.super Lcom/oplus/aisubsystem/core/client/AiSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Builder;,
        Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiSettings;-><init>()V

    return-void
.end method

.method public static final build()Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;->build()Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;

    move-result-object v0

    return-object v0
.end method

.method public static final build(Lw8/l;)Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")",
            "Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;->build(Lw8/l;)Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;

    move-result-object p0

    return-object p0
.end method
