.class public final synthetic Lcom/google/android/material/search/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/w;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/s;->a:Lcom/google/android/material/search/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/s;->a:Lcom/google/android/material/search/w;

    invoke-static {p0}, Lcom/google/android/material/search/w;->d(Lcom/google/android/material/search/w;)V

    return-void
.end method
