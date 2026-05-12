.class public abstract Lcom/oplus/aiunit/core/data/Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/data/Parameters$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/data/Parameters$Companion;

.field public static final PERFORMANCE_CPU:I = 0x0

.field public static final PERFORMANCE_GPU:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/data/Parameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/data/Parameters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/Parameters;->Companion:Lcom/oplus/aiunit/core/data/Parameters$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyParam()Lcom/oplus/aiunit/core/ParamPackage;
.end method

.method public clone()Lcom/oplus/aiunit/core/data/Parameters;
    .locals 0

    return-object p0
.end method
