.class public final synthetic Lcom/google/android/material/textfield/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/j;->a:Lcom/google/android/material/textfield/p;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/j;->a:Lcom/google/android/material/textfield/p;

    invoke-static {p0, p1, p2}, Lcom/google/android/material/textfield/p;->z(Lcom/google/android/material/textfield/p;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
