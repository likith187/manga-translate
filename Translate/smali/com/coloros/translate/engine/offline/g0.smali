.class public Lcom/coloros/translate/engine/offline/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static i:Lcom/coloros/translate/engine/offline/g0;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ziyan"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/g0;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "model"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/g0;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/g0;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/g0;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/g0;->h:Ljava/lang/String;

    new-instance v0, Lcom/coloros/translate/engine/offline/g0;

    invoke-direct {v0}, Lcom/coloros/translate/engine/offline/g0;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/g0;->i:Lcom/coloros/translate/engine/offline/g0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/coloros/translate/engine/offline/g0;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g0;->i:Lcom/coloros/translate/engine/offline/g0;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "LocalFileManager"

    const-string v1, "getOrCreateDir mkdirs fail!"

    invoke-static {p0, v1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCELanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "zhen.zip"

    return-object p0

    :cond_0
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCFLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "zhfr.zip"

    return-object p0

    :cond_1
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCJLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "zhja.zip"

    return-object p0

    :cond_2
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCKLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "zhko.zip"

    return-object p0

    :cond_3
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCSLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "zhes.zip"

    return-object p0

    :cond_4
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCVLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "zhvi.zip"

    return-object p0

    :cond_5
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCILanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "zhit.zip"

    return-object p0

    :cond_6
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCGLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "zhde.zip"

    return-object p0

    :cond_7
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getEHLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "hien.zip"

    return-object p0

    :cond_8
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getEVLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "vien.zip"

    return-object p0

    :cond_9
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getETLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "then.zip"

    return-object p0

    :cond_a
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getESLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "esen.zip"

    return-object p0

    :cond_b
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getEILanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "iden.zip"

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/coloros/translate/engine/offline/g0;->h:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/g0;->d(Ljava/lang/String;)Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->b:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    sget-object v1, Lcom/coloros/translate/engine/offline/g0;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/y;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->b:Ljava/io/File;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/g0;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/g0;->d(Ljava/lang/String;)Ljava/lang/String;

    sget-char p0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->c:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    sget-object v1, Lcom/coloros/translate/engine/offline/g0;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/y;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/g0;->c:Ljava/io/File;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/g0;->c:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/g0;->d(Ljava/lang/String;)Ljava/lang/String;

    sget-char p0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/g0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/g0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    sget-object v0, Lcom/coloros/translate/engine/offline/g0;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coloros/translate/utils/y;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/g0;->b:Ljava/io/File;

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/g0;->a:Landroid/content/Context;

    sget-object v0, Lcom/coloros/translate/engine/offline/g0;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coloros/translate/utils/y;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/g0;->c:Ljava/io/File;

    return-void
.end method
