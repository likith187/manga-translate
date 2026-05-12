.class public interface abstract Lkotlinx/serialization/json/internal/InternalJsonWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
.end annotation


# static fields
.field public static final Companion:Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;->$$INSTANCE:Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;

    sput-object v0, Lkotlinx/serialization/json/internal/InternalJsonWriter;->Companion:Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method

.method public abstract write(Ljava/lang/String;)V
.end method

.method public abstract writeChar(C)V
.end method

.method public abstract writeLong(J)V
.end method

.method public abstract writeQuoted(Ljava/lang/String;)V
.end method
