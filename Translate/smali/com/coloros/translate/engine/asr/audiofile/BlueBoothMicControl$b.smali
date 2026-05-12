.class final Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;

    invoke-direct {v0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;->INSTANCE:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/AudioManager;
    .locals 1

    .line 2
    sget-object p0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p0

    .line 3
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$b;->invoke()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method
