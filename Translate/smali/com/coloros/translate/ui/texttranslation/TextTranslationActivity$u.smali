.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;

    invoke-direct {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/translate/utils/j0;->c(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
