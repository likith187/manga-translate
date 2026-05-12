.class final Lcom/coloros/translate/ui/simultaneous/history/h0$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/h0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/history/h0$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/h0$f;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/history/h0$f;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/h0$f;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/history/h0$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/h0$f;->invoke()Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/MM/dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0
.end method
