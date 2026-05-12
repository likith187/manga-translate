.class public final synthetic Lkotlinx/serialization/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/h;->a:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/h;->a:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->a(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
