.class public final synthetic Lcom/coui/appcompat/poplist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/a;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/a;->b:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/poplist/a;->c:I

    iput p4, p0, Lcom/coui/appcompat/poplist/a;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/a;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/a;->b:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/poplist/a;->c:I

    iget p0, p0, Lcom/coui/appcompat/poplist/a;->f:I

    invoke-static {v0, v1, v2, p0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a(Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;Landroid/view/View;II)V

    return-void
.end method
