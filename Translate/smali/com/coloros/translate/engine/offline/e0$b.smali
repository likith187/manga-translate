.class final Lcom/coloros/translate/engine/offline/e0$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/offline/e0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/offline/e0$b;

    invoke-direct {v0}, Lcom/coloros/translate/engine/offline/e0$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/e0$b;->INSTANCE:Lcom/coloros/translate/engine/offline/e0$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/engine/offline/d;
    .locals 0

    .line 2
    invoke-static {}, Lcom/coloros/translate/engine/offline/e0;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/d;->f(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/e0$b;->invoke()Lcom/coloros/translate/engine/offline/d;

    move-result-object p0

    return-object p0
.end method
