.class public final Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

.field private static final b:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;


# instance fields
.field private a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->Companion:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    invoke-direct {v0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->b:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    sget-object v1, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v1}, Lcom/coloros/translate/base/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    :cond_0
    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->b:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    return-object v0
.end method


# virtual methods
.method public final cancelTranslate()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->cancelTranslate()V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    return-void
.end method

.method public final getImgTransConfig(Lcom/coloros/translate/screen/translate/engine/language/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a()V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->getImgTransConfig(Lcom/coloros/translate/screen/translate/engine/language/f;)V

    :cond_0
    return-void
.end method

.method public final translateImage(Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a()V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->translateImage(Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V

    :cond_0
    return-void
.end method

.method public final translateText(Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V
    .locals 1

    const-string v0, "textTranslateParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a()V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->translateText(Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V

    :cond_0
    return-void
.end method
