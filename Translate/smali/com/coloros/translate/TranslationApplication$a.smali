.class public final Lcom/coloros/translate/TranslationApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/TranslationApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/coloros/translate/TranslationApplication$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Application;
    .locals 0

    sget-object p0, Lcom/coloros/translate/TranslationApplication;->c:Landroid/app/Application;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sContext"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/app/Application;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/coloros/translate/TranslationApplication;->c:Landroid/app/Application;

    return-void
.end method
