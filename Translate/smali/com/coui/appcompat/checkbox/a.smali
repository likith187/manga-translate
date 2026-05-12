.class public final synthetic Lcom/coui/appcompat/checkbox/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/checkbox/a;->a:Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object p2, p0, Lcom/coui/appcompat/checkbox/a;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/a;->a:Lcom/coui/appcompat/checkbox/COUICheckBox;

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0}, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->a(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
