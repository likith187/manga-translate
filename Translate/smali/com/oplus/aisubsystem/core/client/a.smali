.class public abstract Lcom/oplus/aisubsystem/core/client/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aisubsystem/core/client/a$a;,
        Lcom/oplus/aisubsystem/core/client/a$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aisubsystem/core/client/a$a;

.field public static final PARAM_KEY_APP_FOREGROUND:Ljava/lang/String; = "ai::key::app_foreground"

.field public static final PARAM_KEY_CLIENT_INFERENCE_CALLBACK:Ljava/lang/String; = "package::client_inference_callback"

.field public static final PARAM_KEY_IMAGES_URI:Ljava/lang/String; = "package::images_uri"

.field public static final PARAM_KEY_JSON_RESULT:Ljava/lang/String; = "package::json_result"

.field public static final PARAM_KEY_JSON_SOURCE:Ljava/lang/String; = "package::json_source"

.field public static final PARAM_KEY_PROCESS_CALLBACK_NAME:Ljava/lang/String; = "callback::"

.field public static final PARAM_KEY_REQUEST_ID:Ljava/lang/String; = "package::request_id"

.field public static final PARAM_KEY_RUNNING_ID:Ljava/lang/String; = "package::running_id"

.field public static final PARAM_KEY_RUNNING_MAXIMUM_MEMORY:Ljava/lang/String; = "package::running_maximum_memory"

.field public static final PARAM_KEY_RUNNING_TYPE:Ljava/lang/String; = "package::running_type"

.field public static final PARAM_KEY_SURVIVAL_LIFECYCLE:Ljava/lang/String; = "package::survival_lifecycle"

.field public static final PARAM_KEY_TEXTS_URI:Ljava/lang/String; = "package::texts_uri"

.field public static final PARAM_KEY_TIMEOUT_TIME:Ljava/lang/String; = "package::timeout_time"

.field public static final PARAM_KEY_USER_CLICK:Ljava/lang/String; = "ai::key::user_click"

.field private static final TAG:Ljava/lang/String; = "AiRequest"


# instance fields
.field private final framePackage$delegate:Ln8/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aisubsystem/core/client/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aisubsystem/core/client/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aisubsystem/core/client/a;->Companion:Lcom/oplus/aisubsystem/core/client/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/aisubsystem/core/client/a$c;->INSTANCE:Lcom/oplus/aisubsystem/core/client/a$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aisubsystem/core/client/a;->framePackage$delegate:Ln8/j;

    return-void
.end method

.method public static final build(Lw8/l;)Lcom/oplus/aisubsystem/core/client/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")",
            "Lcom/oplus/aisubsystem/core/client/a;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aisubsystem/core/client/a;->Companion:Lcom/oplus/aisubsystem/core/client/a$a;

    invoke-virtual {v0, p0}, Lcom/oplus/aisubsystem/core/client/a$a;->a(Lw8/l;)Lcom/oplus/aisubsystem/core/client/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFramePackage()Lcom/oplus/aiunit/core/FramePackage;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/a;->framePackage$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/FramePackage;

    return-object p0
.end method
