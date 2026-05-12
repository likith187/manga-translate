.class Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->initObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

.field final synthetic val$mServerContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;->this$0:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    iput-object p3, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;->val$mServerContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;->this$0:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    iget-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;->val$mServerContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_ForegroundMinL"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->access$402(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;F)F

    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;->this$0:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->access$500(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;)V

    return-void
.end method
