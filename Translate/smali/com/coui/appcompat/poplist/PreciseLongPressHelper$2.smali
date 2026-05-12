.class Lcom/coui/appcompat/poplist/PreciseLongPressHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PreciseLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->access$100(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->access$100(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->access$200(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;->onLongClick(Landroid/view/View;II)V

    return v2
.end method
