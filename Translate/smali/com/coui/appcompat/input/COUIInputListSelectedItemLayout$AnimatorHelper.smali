.class public Lcom/coui/appcompat/input/COUIInputListSelectedItemLayout$AnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/input/COUIInputListSelectedItemLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorHelper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field animatorValue:I

.field type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/input/COUIInputListSelectedItemLayout$AnimatorHelper;->animatorValue:I

    iput p2, p0, Lcom/coui/appcompat/input/COUIInputListSelectedItemLayout$AnimatorHelper;->type:I

    return-void
.end method
