.class public final synthetic Lcom/coloros/translate/utils/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/translate/utils/a1;->a:I

    iput p2, p0, Lcom/coloros/translate/utils/a1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/coloros/translate/utils/a1;->a:I

    iget p0, p0, Lcom/coloros/translate/utils/a1;->b:I

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/b1;->a(II)V

    return-void
.end method
