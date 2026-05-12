.class public final synthetic Lw1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/behavior/SecondToolbarBehavior;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/behavior/SecondToolbarBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/d;->a:Lcom/coloros/translate/behavior/SecondToolbarBehavior;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lw1/d;->a:Lcom/coloros/translate/behavior/SecondToolbarBehavior;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->a(Lcom/coloros/translate/behavior/SecondToolbarBehavior;Landroid/view/View;IIII)V

    return-void
.end method
