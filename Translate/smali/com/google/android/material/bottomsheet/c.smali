.class public final synthetic Lcom/google/android/material/bottomsheet/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/k;


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/c;->a:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;Ld0/k$a;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/c;->a:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-static {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->a(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;Landroid/view/View;Ld0/k$a;)Z

    move-result p0

    return p0
.end method
