.class public final synthetic Lcom/coloros/translate/ui/cube/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/cube/CubeSettingActivity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/cube/a;->a:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/cube/a;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/cube/a;->a:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    iget-object p0, p0, Lcom/coloros/translate/ui/cube/a;->b:[Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->R(Lcom/coloros/translate/ui/cube/CubeSettingActivity;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
