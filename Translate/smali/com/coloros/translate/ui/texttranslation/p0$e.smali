.class final Lcom/coloros/translate/ui/texttranslation/p0$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/p0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/texttranslation/p0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/p0$e;

    invoke-direct {v0}, Lcom/coloros/translate/ui/texttranslation/p0$e;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/p0$e;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/p0$e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/utils/v0;
    .locals 1

    .line 1
    new-instance p0, Lcom/coloros/translate/utils/v0;

    const-string v0, "Timeout_HandlerTread"

    invoke-direct {p0, v0}, Lcom/coloros/translate/utils/v0;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0$e;->invoke()Lcom/coloros/translate/utils/v0;

    move-result-object p0

    return-object p0
.end method
