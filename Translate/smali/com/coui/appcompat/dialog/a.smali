.class public final synthetic Lcom/coui/appcompat/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/a;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/coui/appcompat/dialog/a;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method
