.class Lcom/google/android/material/shape/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/android/material/shape/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/i;F)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i;

    iput p2, p0, Lcom/google/android/material/shape/i$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/d;
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/shape/l;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/shape/b;

    iget p0, p0, Lcom/google/android/material/shape/i$b;->a:F

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/shape/b;-><init>(FLcom/google/android/material/shape/d;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
