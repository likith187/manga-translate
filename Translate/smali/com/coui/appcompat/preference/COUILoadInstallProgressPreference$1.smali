.class Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$1;->this$0:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/coui/appcompat/progressbar/COUILoadProgress;I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$1;->this$0:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->access$000(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;)Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$1;->this$0:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;

    invoke-static {v0, p2}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->access$102(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;I)I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$1;->this$0:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->access$000(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;)Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;->onStateChanged(Lcom/coui/appcompat/progressbar/COUILoadProgress;I)V

    :cond_0
    return-void
.end method
