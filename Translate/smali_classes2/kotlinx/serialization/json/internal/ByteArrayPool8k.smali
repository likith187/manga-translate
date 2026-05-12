.class public final Lkotlinx/serialization/json/internal/ByteArrayPool8k;
.super Lkotlinx/serialization/json/internal/ByteArrayPoolBase;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool8k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/internal/ByteArrayPool8k;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/ByteArrayPool8k;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool8k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final release([B)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([B)V

    return-void
.end method

.method public final take()[B
    .locals 1

    const/16 v0, 0x2004

    invoke-super {p0, v0}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->take(I)[B

    move-result-object p0

    return-object p0
.end method
