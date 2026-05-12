.class public final Lkotlinx/serialization/json/JsonNull;
.super Lkotlinx/serialization/json/JsonPrimitive;
.source "SourceFile"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lkotlinx/serialization/json/JsonNullSerializer;
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNull;

.field private static final content:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonNull;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNull;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    const-string v0, "null"

    sput-object v0, Lkotlinx/serialization/json/JsonNull;->content:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonPrimitive;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->content:Ljava/lang/String;

    return-object p0
.end method

.method public isString()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lkotlinx/serialization/json/JsonNull;",
            ">;"
        }
    .end annotation

    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    return-object p0
.end method
