.class public final Lkotlinx/serialization/json/internal/JsonStreamsKt$decodeToSequenceByReader$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/JsonStreamsKt;->decodeToSequenceByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/f;"
    }
.end annotation


# instance fields
.field final synthetic $iter$inlined:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonStreamsKt$decodeToSequenceByReader$$inlined$Sequence$1;->$iter$inlined:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonStreamsKt$decodeToSequenceByReader$$inlined$Sequence$1;->$iter$inlined:Ljava/util/Iterator;

    return-object p0
.end method
