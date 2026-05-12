.class public final Lcom/oplus/aiunit/core/service/ProviderClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/service/ProviderClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

.field private static final TAG:Ljava/lang/String; = "ProviderClient"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final call(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    sget-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final callUnitSupported(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/data/ServiceType;)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->callUnitSupported(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/data/ServiceType;)Z

    move-result p0

    return p0
.end method

.method public static final queryUnitInfo(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/data/ServiceType;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/data/ServiceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/aiunit/core/data/SimpleUnitInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->queryUnitInfo(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/data/ServiceType;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final queryUnitSupported(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/data/ServiceType;)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->queryUnitSupported(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/data/ServiceType;)Z

    move-result p0

    return p0
.end method
