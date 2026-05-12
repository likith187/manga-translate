.class final Lcom/coloros/translate/ui/dialoguetranslation/i0$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/i0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$e;

    invoke-direct {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$e;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$e;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/i0$e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;
    .locals 0

    .line 2
    sget-object p0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->v()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$e;->invoke()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    return-object p0
.end method
