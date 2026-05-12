.class public final synthetic Lcom/coui/appcompat/button/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/COUIButton;

.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:Landroid/widget/TextView$BufferType;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/button/a;->a:Lcom/coui/appcompat/button/COUIButton;

    iput-object p2, p0, Lcom/coui/appcompat/button/a;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/coui/appcompat/button/a;->c:Landroid/widget/TextView$BufferType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/button/a;->a:Lcom/coui/appcompat/button/COUIButton;

    iget-object v1, p0, Lcom/coui/appcompat/button/a;->b:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/button/a;->c:Landroid/widget/TextView$BufferType;

    invoke-static {v0, v1, p0}, Lcom/coui/appcompat/button/COUIButton;->a(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
