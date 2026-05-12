.class public final Lcom/google/android/material/shape/k;
.super Lcom/google/android/material/shape/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/material/shape/g;

.field private final b:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/g;F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/k;->a:Lcom/google/android/material/shape/g;

    iput p2, p0, Lcom/google/android/material/shape/k;->b:F

    return-void
.end method


# virtual methods
.method a()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/k;->a:Lcom/google/android/material/shape/g;

    invoke-virtual {p0}, Lcom/google/android/material/shape/g;->a()Z

    move-result p0

    return p0
.end method

.method public b(FFFLcom/google/android/material/shape/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/k;->a:Lcom/google/android/material/shape/g;

    iget p0, p0, Lcom/google/android/material/shape/k;->b:F

    sub-float/2addr p2, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/g;->b(FFFLcom/google/android/material/shape/p;)V

    return-void
.end method
