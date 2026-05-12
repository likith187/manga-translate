.class public final Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Ly1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly1/a;

    invoke-direct {v0}, Ly1/a;-><init>()V

    sput-object v0, Ly1/a;->INSTANCE:Ly1/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;IZ)Ly1/b;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/coloros/translate/engine/asr/voicetranslate/c;->C:Lcom/coloros/translate/engine/asr/voicetranslate/c$a;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-direct {v1, p0, p2}, Lcom/coloros/translate/engine/asr/voicetranslate/c;-><init>(Landroid/content/Context;Z)V

    :cond_0
    return-object v1
.end method
