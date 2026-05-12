.class public final Lcom/coloros/translate/utils/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/b1;

.field private static a:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/b1;

    invoke-direct {v0}, Lcom/coloros/translate/utils/b1;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/b1;->INSTANCE:Lcom/coloros/translate/utils/b1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/b1;->d(II)V

    return-void
.end method

.method public static final b(II)V
    .locals 3

    new-instance v0, Lcom/coloros/translate/utils/a1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/utils/a1;-><init>(II)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/utils/b1;->b(II)V

    return-void
.end method

.method private static final d(II)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ToastUtils"

    const-string v2, "toast"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/b1;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/coloros/translate/utils/b1;->a:Landroid/widget/Toast;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
