.class public final Lkotlinx/serialization/internal/UnitSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ln8/h0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/ObjectSerializer<",
            "Ln8/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/UnitSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UnitSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UnitSerializer;->INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v1, "kotlin.Unit"

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UnitSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)V
    .locals 1

    .line 1
    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ObjectSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    return-void
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/ObjectSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ln8/h0;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/UnitSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ln8/h0;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ln8/h0;)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/ObjectSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method
