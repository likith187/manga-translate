.class public final synthetic Lcom/google/android/material/search/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/h;->a:Lcom/google/android/material/search/SearchView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/h;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {p0}, Lcom/google/android/material/search/SearchView;->d(Lcom/google/android/material/search/SearchView;)V

    return-void
.end method
