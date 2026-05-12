.class public final synthetic Lcom/coui/appcompat/card/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/card/COUICardButtonPreference;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/card/COUICardButtonPreference;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/b;->a:Lcom/coui/appcompat/card/COUICardButtonPreference;

    iput-object p2, p0, Lcom/coui/appcompat/card/b;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/card/b;->a:Lcom/coui/appcompat/card/COUICardButtonPreference;

    iget-object p0, p0, Lcom/coui/appcompat/card/b;->b:Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/coui/appcompat/card/COUICardButtonPreference;->i(Lcom/coui/appcompat/card/COUICardButtonPreference;Landroid/widget/TextView;)V

    return-void
.end method
