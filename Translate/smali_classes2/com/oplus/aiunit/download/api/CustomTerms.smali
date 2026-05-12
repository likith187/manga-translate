.class public final Lcom/oplus/aiunit/download/api/CustomTerms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/download/api/CustomTerms$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/download/api/CustomTerms$Companion;


# instance fields
.field private aliasName:Ljava/lang/String;

.field private complete:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private downloadRetry:Ljava/lang/String;

.field private downloading:Ljava/lang/String;

.field private installRetry:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/download/api/CustomTerms$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/download/api/CustomTerms$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/download/api/CustomTerms;->Companion:Lcom/oplus/aiunit/download/api/CustomTerms$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->aliasName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloadRetry:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->installRetry:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloading:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->complete:Ljava/lang/String;

    return-void
.end method

.method public static final buildTerms(Landroid/os/Bundle;)Lcom/oplus/aiunit/download/api/CustomTerms;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/download/api/CustomTerms;->Companion:Lcom/oplus/aiunit/download/api/CustomTerms$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/download/api/CustomTerms$Companion;->buildTerms(Landroid/os/Bundle;)Lcom/oplus/aiunit/download/api/CustomTerms;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAliasName$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final fillBody(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->aliasName:Ljava/lang/String;

    const-string v1, "ai::download::key::alias_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->title:Ljava/lang/String;

    const-string v1, "ai::download::key::title"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->description:Ljava/lang/String;

    const-string v1, "ai::download::key::description"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloadRetry:Ljava/lang/String;

    const-string v1, "ai::download::key::term_download_retry"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->installRetry:Ljava/lang/String;

    const-string v1, "ai::download::key::term_install_retry"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloading:Ljava/lang/String;

    const-string v1, "ai::download::key::term_downloading"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->complete:Ljava/lang/String;

    const-string v0, "ai::download::key::term_download_complete"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAliasName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->aliasName:Ljava/lang/String;

    return-object p0
.end method

.method public final getComplete()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->complete:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDownloadRetry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloadRetry:Ljava/lang/String;

    return-object p0
.end method

.method public final getDownloading()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloading:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstallRetry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->installRetry:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setAliasName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->aliasName:Ljava/lang/String;

    return-void
.end method

.method public final setComplete(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->complete:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadRetry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloadRetry:Ljava/lang/String;

    return-void
.end method

.method public final setDownloading(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->downloading:Ljava/lang/String;

    return-void
.end method

.method public final setInstallRetry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->installRetry:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/CustomTerms;->title:Ljava/lang/String;

    return-void
.end method
