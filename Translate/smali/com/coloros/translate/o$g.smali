.class final Lcom/coloros/translate/o$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/o$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/o$g;

    invoke-direct {v0}, Lcom/coloros/translate/o$g;-><init>()V

    sput-object v0, Lcom/coloros/translate/o$g;->INSTANCE:Lcom/coloros/translate/o$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/LanguageManager;
    .locals 0

    .line 1
    sget-object p0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/o$g;->invoke()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    return-object p0
.end method
