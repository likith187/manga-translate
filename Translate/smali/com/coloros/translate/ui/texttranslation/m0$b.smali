.class final Lcom/coloros/translate/ui/texttranslation/m0$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/m0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/texttranslation/m0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/m0$b;

    invoke-direct {v0}, Lcom/coloros/translate/ui/texttranslation/m0$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/m0$b;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/m0$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
    .locals 2

    .line 2
    new-instance p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;

    invoke-virtual {v1}, Lcom/oplus/aiunit/antispam/client/AntiSpamSettings$Companion;->build()Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/antispam/client/AntiSpamSettings;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0$b;->invoke()Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    move-result-object p0

    return-object p0
.end method
