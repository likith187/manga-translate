.class public final Lcom/coloros/translate/backuprestore/TranslateDataBRPluginService;
.super Lcom/oplus/backup/sdk/component/BRPluginService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/backuprestore/TranslateDataBRPluginService$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/translate/backuprestore/TranslateDataBRPluginService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/backuprestore/TranslateDataBRPluginService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataBRPluginService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/backuprestore/TranslateDataBRPluginService;->a:Lcom/coloros/translate/backuprestore/TranslateDataBRPluginService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;-><init>()V

    return-void
.end method
