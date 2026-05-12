.class public interface abstract Lkotlinx/serialization/json/JsonNamingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
.end annotation


# static fields
.field public static final Builtins:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->$$INSTANCE:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    sput-object v0, Lkotlinx/serialization/json/JsonNamingStrategy;->Builtins:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    return-void
.end method


# virtual methods
.method public abstract serialNameForJson(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Ljava/lang/String;
.end method
