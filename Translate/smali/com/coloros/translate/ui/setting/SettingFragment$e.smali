.class public final Lcom/coloros/translate/ui/setting/SettingFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/SettingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/setting/SettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment$e;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SettingFragment"

    const-string v2, "onSpeedChanged and replay text"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment$e;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    invoke-static {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->A(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    return-void
.end method
