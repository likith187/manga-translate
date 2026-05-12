.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lf5/j;


# direct methods
.method public synthetic constructor <init>(Lf5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/pa;->a:Lf5/j;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/pa;->a:Lf5/j;

    invoke-virtual {p0}, Lf5/j;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
