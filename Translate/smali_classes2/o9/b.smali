.class public final enum Lo9/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/b$a;
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo9/b;

.field public static final enum CANCEL:Lo9/b;

.field public static final enum COMPRESSION_ERROR:Lo9/b;

.field public static final enum CONNECT_ERROR:Lo9/b;

.field public static final Companion:Lo9/b$a;

.field public static final enum ENHANCE_YOUR_CALM:Lo9/b;

.field public static final enum FLOW_CONTROL_ERROR:Lo9/b;

.field public static final enum FRAME_SIZE_ERROR:Lo9/b;

.field public static final enum HTTP_1_1_REQUIRED:Lo9/b;

.field public static final enum INADEQUATE_SECURITY:Lo9/b;

.field public static final enum INTERNAL_ERROR:Lo9/b;

.field public static final enum NO_ERROR:Lo9/b;

.field public static final enum PROTOCOL_ERROR:Lo9/b;

.field public static final enum REFUSED_STREAM:Lo9/b;

.field public static final enum SETTINGS_TIMEOUT:Lo9/b;

.field public static final enum STREAM_CLOSED:Lo9/b;


# instance fields
.field private final httpCode:I


# direct methods
.method private static final synthetic $values()[Lo9/b;
    .locals 14

    sget-object v0, Lo9/b;->NO_ERROR:Lo9/b;

    sget-object v1, Lo9/b;->PROTOCOL_ERROR:Lo9/b;

    sget-object v2, Lo9/b;->INTERNAL_ERROR:Lo9/b;

    sget-object v3, Lo9/b;->FLOW_CONTROL_ERROR:Lo9/b;

    sget-object v4, Lo9/b;->SETTINGS_TIMEOUT:Lo9/b;

    sget-object v5, Lo9/b;->STREAM_CLOSED:Lo9/b;

    sget-object v6, Lo9/b;->FRAME_SIZE_ERROR:Lo9/b;

    sget-object v7, Lo9/b;->REFUSED_STREAM:Lo9/b;

    sget-object v8, Lo9/b;->CANCEL:Lo9/b;

    sget-object v9, Lo9/b;->COMPRESSION_ERROR:Lo9/b;

    sget-object v10, Lo9/b;->CONNECT_ERROR:Lo9/b;

    sget-object v11, Lo9/b;->ENHANCE_YOUR_CALM:Lo9/b;

    sget-object v12, Lo9/b;->INADEQUATE_SECURITY:Lo9/b;

    sget-object v13, Lo9/b;->HTTP_1_1_REQUIRED:Lo9/b;

    filled-new-array/range {v0 .. v13}, [Lo9/b;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo9/b;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->NO_ERROR:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->PROTOCOL_ERROR:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->INTERNAL_ERROR:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->FLOW_CONTROL_ERROR:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "SETTINGS_TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->SETTINGS_TIMEOUT:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "STREAM_CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->STREAM_CLOSED:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "FRAME_SIZE_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->FRAME_SIZE_ERROR:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->REFUSED_STREAM:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "CANCEL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->CANCEL:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "COMPRESSION_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->COMPRESSION_ERROR:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "CONNECT_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->CONNECT_ERROR:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->ENHANCE_YOUR_CALM:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "INADEQUATE_SECURITY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->INADEQUATE_SECURITY:Lo9/b;

    new-instance v0, Lo9/b;

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lo9/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo9/b;->HTTP_1_1_REQUIRED:Lo9/b;

    invoke-static {}, Lo9/b;->$values()[Lo9/b;

    move-result-object v0

    sput-object v0, Lo9/b;->$VALUES:[Lo9/b;

    new-instance v0, Lo9/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo9/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo9/b;->Companion:Lo9/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo9/b;->httpCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo9/b;
    .locals 1

    const-class v0, Lo9/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo9/b;

    return-object p0
.end method

.method public static values()[Lo9/b;
    .locals 1

    sget-object v0, Lo9/b;->$VALUES:[Lo9/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo9/b;

    return-object v0
.end method


# virtual methods
.method public final getHttpCode()I
    .locals 0

    iget p0, p0, Lo9/b;->httpCode:I

    return p0
.end method
