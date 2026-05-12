.class public final synthetic Lkotlinx/serialization/json/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/c0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/d;->a:Lkotlin/jvm/internal/c0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/d;->a:Lkotlin/jvm/internal/c0;

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->a(Lkotlin/jvm/internal/c0;Lkotlinx/serialization/json/JsonElement;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method
